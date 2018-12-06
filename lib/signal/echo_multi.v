module processor (sysclk, data_in, data_out, data_valid);

	input				sysclk;		// system clock
	input [9:0]		data_in;		// 10-bit input data
	input				data_valid;
	output [9:0] 	data_out;	// 10-bit output data

	reg full_r;
	wire				sysclk,full_w,rd,tick;
	wire [9:0]		data_in;
	reg [9:0] 		data_out;
	wire [9:0]		y,x,delayed;

	parameter 		ADC_OFFSET = 10'h181;
	parameter 		DAC_OFFSET = 10'h200;

	assign x = data_in[9:0] - ADC_OFFSET;		// x is input in 2's complement
	assign y = x - {delayed[9],delayed[9:1]};

	FIFO_8192x10 BUFFER (
		.clock(sysclk),
		.data(y),
		.rdreq(rd),
		.wrreq(tick),
		.full(full_w),
		.q(delayed)
	);
	
	pulse_gen PULSE(tick, data_valid, sysclk);
	
	assign rd = full_r&tick;
	
	// output 
	always @(posedge sysclk)
	begin
		full_r<=full_w;
		data_out <=  y + DAC_OFFSET;
	end
endmodule
	