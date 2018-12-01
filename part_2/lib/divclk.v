`timescale 1ns / 100ps // unit time is 1ns resolution 100 ps

module divclk(
	clk_in,
	clk_out,
	k
);
	
	parameter BIT_SZ=16;
	input clk_in;
	input [BIT_SZ-1:0] k;
	output clk_out;
	
	reg [BIT_SZ-1:0] count;
	reg clk_out;
	
	initial count=1'b0;// why dont need init
	initial clk_out=1'b0;

	
	always@(posedge clk_in)
	
		begin
		if (count==16'b0) begin
			clk_out<=1'b1;
			count<=k;
			end
		else begin
			count <= count-1'b1;
			clk_out<=1'b0;
			end
		end
endmodule 