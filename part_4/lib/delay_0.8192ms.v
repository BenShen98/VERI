module processor (sysclk, data_in, data_out);

	input				sysclk;		// system clock
	input [9:0]		data_in;		// 10-bit input data
	output [9:0] 	data_out;	// 10-bit output data

	reg rd;
	wire				sysclk,fullsg;
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
		.wrreq(1'b1),
		.full(fullsg),
		.q(delayed)
	);
		
	
	// output 
	always @(posedge sysclk)
		if (fullsg==1'b1) begin
			rd<=1'b1;
			data_out <=  delayed + DAC_OFFSET;
		end else begin
			rd<=1'b0;
			data_out <= DAC_OFFSET;
		end
endmodule
	