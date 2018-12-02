module clkdiv_16(in,out,num);

	input in;
	input [15:0] num;

	output reg out;
	
	reg [16:0] count;
	initial count = 16'b0;
	initial out = 1'b0;
	
	always @ (posedge in)
	begin 
		if (count==16'b0)
			begin
			count<=num;
			out<=1'b1;
			end
		else
			begin
			count<=count-1'b1;
			out<=1'b0;
			end
	end
	
endmodule 