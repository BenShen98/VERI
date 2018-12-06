module processor (sysclk, data_in, data_out, data_valid);

	input				sysclk;		// system clock
	input [9:0]		data_in;		// 10-bit input data
	input				data_valid;
	output [9:0] 	data_out;	// 10-bit output data

	reg Q;
	wire				sysclk,fullsg,rd,pulse;
	wire [9:0]		data_in;
	reg [9:0] 		data_out;
	wire [9:0]		x,delayed;

	parameter 		ADC_OFFSET = 10'h181;
	parameter 		DAC_OFFSET = 10'h200;

	assign x = data_in[9:0] - ADC_OFFSET;		// x is input in 2's complement
	

	FIFO_8192x10 BUFFER (
		.clock(sysclk),
		.data(x),
		.rdreq(rd),
		.wrreq(pulse),
		.full(fullsg),
		.q(delayed)
	);
	
	pulse_gen PULSE(pulse, data_valid, sysclk);
	
	assign rd = Q&pulse;
	
	// output 
	always @(posedge sysclk)
	begin
		Q<=fullsg;
		data_out <=  (x + {delayed[9],delayed[9:1]}) + DAC_OFFSET;
	end
endmodule
	