module processor (sysclk, data_in, data_out, data_valid, SW);

	input [8:0] SW;

	input				sysclk;		// system clock
	input [9:0]		data_in;		// 10-bit input data
	input				data_valid;
	output [9:0] 	data_out;	// 10-bit output data
	
	wire sysclck,pulse;
	wire [9:0]		data_in;
	wire [9:0] 		data_out;

	parameter 		ADC_OFFSET = 10'h181;
	parameter 		DAC_OFFSET = 10'h200;
	
	
	
	// remove offset
	wire [9:0] x,y; 
	assign x = data_in[9:0] - ADC_OFFSET;		// x is input in 2's complement
	assign y = x-{q[8],q[8:0]};
	assign data_out=y + DAC_OFFSET;
	
	// config 
	wire enable;
	pulse_gen PULSE (enable,data_valid,sysclk);
	
	// -- memory
	
	// memory pointer
	wire [12:0] wrPtr;
	assign wrPtr={SW[8:0],4'b0}+rdPtr;
	reg [12:0] rdPtr;
	initial rdPtr=13'b0;
	
	wire [8:0] q;
	
	RAM_2p_8192x9 BUFFER(
	.clock(sysclk),
	.data(y[9:1]),
	.rdaddress(rdPtr),
	.rden(enable),
	.wraddress(wrPtr),
	.wren(enable),
	.q(q)
	);

	// --- end memory config;
	

	always @ (negedge data_valid)
		rdPtr<=rdPtr+1'b1;


endmodule
	