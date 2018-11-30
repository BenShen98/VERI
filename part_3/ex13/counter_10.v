`timescale 1ns / 100ps // unit time is 1ns resolution 100 ps

module counter_10(
	clock,
	enable,
	reset,
	count
);
	
	parameter BIT_SZ=10;
	input clock;
	input enable;
	input reset;
	output [BIT_SZ-1:0] count;
	
	reg [BIT_SZ-1:0] count;
	
	initial count=0;
	
	always@(posedge clock)
		begin
		if (enable==1'b1)
				count<=count+1'b1;
			else if (reset==1'b1)
					count <= 10'b0;
		end
endmodule 