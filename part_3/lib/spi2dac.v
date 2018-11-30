//------------------------------
// Module name: spi2dac
// Function: SPI interface for MPC4911 DAC
// Creator:  Peter Cheung
// Version:  3.0
// Date:     8 Dec 2016
//------------------------------

module spi2dac (sysclk, data_in, load, dac_sdi, dac_cs, dac_sck, dac_ld);

	input	sysclk;			// 50MHz system clock of DE1
	input	[9:0]	data_in;	// input data to DAC
	input	load;				// Pulse to load data to dac
	output dac_sdi;		// SPI serial data out
	output dac_cs;			// chip select - low when sending data to dac
	output dac_sck;		// SPI clock, 16 cycles at half sysclk freq
	output dac_ld;

//-------------Input Ports-----------------------------
// All the input ports should be wires
	wire			sysclk, load;
	wire [9:0]	data_in;
	
//-------------Output Ports-----------------------------
// Output port can be a storage element (reg) or a wire
	reg			dac_cs, dac_ld;
	wire			dac_sck, dac_sdi;
	
	parameter	BUF=1'b1;		// 0:no buffer, 1:Vref buffered
	parameter	GA_N=1'b1;		// 0:gain = 2x, 1:gain = 1x
	parameter	SHDN_N=1'b1;	// 0:power down, 1:dac active
	
	wire [3:0] cmd = {1'b0,BUF,GA_N,SHDN_N};  // wire to VDD or GND
	
	// --- internal 1MHz symmetical clock generator -----
	reg			clk_1MHz;	// 1Mhz clock derived from 50MHz
	reg [4:0]	ctr;			// internal counter
	reg			tick;			// 1MHz clock tick (1 cycle of 20ns every 1 usec)
	
	parameter	TC = 5'd24;  // Terminal count - change this for diff clk freq
	initial begin
		clk_1MHz = 0;			// don't need to reset - don't care if it is 1 or 0 to start
		ctr = 5'b0;				//  ... Initialise when FPGA is configured
		tick = 1'b0;
	end
		
	always @ (posedge sysclk)    
	  if (ctr==0) begin
		  ctr <= TC;
		  if (clk_1MHz==1'b0) 
				tick <= 1'b1;
		  clk_1MHz <= ~clk_1MHz; // toggle the output clock for squarewave
		end
	  else begin
		  ctr <= ctr - 1'b1;
		  tick <= 1'b0;
		end
	// ---- end internal 1MHz symmetical clock generator ----------

	// ---- FSM to detect rising edge of load and falling edge of dac_cs
	// .... sr_state set on posedge of load
	// .... sr_state reset when dac_cs goes high at the end of DAC output cycle
	reg [1:0] 	sr_state;
	parameter	IDLE  = 2'b00,WAIT_CSB_FALL = 2'b01, WAIT_CSB_HIGH = 2'b10;
	reg			dac_start;		 // set if a DAC write is detected
	
	initial begin
		sr_state = IDLE;
		dac_start = 1'b0;	// set while sending data to DAC
		end
	
	always @ (posedge sysclk)  // state transition
		case (sr_state)
			IDLE:	if (load==1'b1) sr_state <= WAIT_CSB_FALL;
			WAIT_CSB_FALL: if (dac_cs==1'b0) sr_state <= WAIT_CSB_HIGH;
			WAIT_CSB_HIGH: if (dac_cs==1'b1) sr_state <= IDLE;
			default: sr_state <= IDLE;
		endcase
	
	always @ (*)
		case (sr_state)
			IDLE: dac_start = 1'b0;
			WAIT_CSB_FALL: dac_start = 1'b1;
			WAIT_CSB_HIGH: dac_start = 1'b0;
			default: dac_start = 1'b0;
		endcase
		
	//------- End circuit to detect start and end of conversion	state machine

	//------- spi controller FSM
	// .... with 17 states (idle, and S1-S16 
	// .... for the 16 cycles each sending 1-bit to dac)
	reg [4:0] 	state;
	
	initial	begin	
		state = 5'b0; dac_ld = 1'b0; dac_cs = 1'b1; 
		end
		
	always @(posedge sysclk)  // FSM state transition
		if (tick==1'b1)
		case (state)
			5'd0:	if (dac_start == 1'b1)    // waiting to start
						state <= state + 1'b1; 
					else 
						state <= 5'b0; 
			5'd17: 	state <= 5'd0;  // go back to idle state
			default: state <= state + 1'b1;	// default go to next state
		endcase
	
	always @ (*)	begin			// FSM output
		dac_cs = 1'b0;  dac_ld = 1'b1;
		case (state)
			5'd0: 	dac_cs = 1'b1;
			5'd17: 	begin dac_cs = 1'b1; dac_ld = 1'b0; end
			default: begin dac_cs = 1'b0;	dac_ld = 1'b1;	end
			endcase
		end //always
	// --------- END of spi controller FSM
	
	// shift register for output data
	reg [15:0] shift_reg;
	initial	begin	
		shift_reg = 16'b0; 
		end

	always @(posedge sysclk)
		if((dac_start==1'b1)&&(dac_cs==1'b1)&&(tick==1'b1))		// parallel load data to shift reg
			shift_reg <= {cmd,data_in,2'b00};
		else if (tick==1'b1)													// .. else start shifting
			shift_reg <= {shift_reg[14:0],1'b0};
	
	// Assign outputs to drive SPI interface to DAC
			assign dac_sck = !clk_1MHz&!dac_cs;
			assign dac_sdi = shift_reg[15];
endmodule