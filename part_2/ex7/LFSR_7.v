//-------
// LFSR with primitive polynomial 1 + X[3] + X[7], with X defined as X[7:1]
// shift in direction of x[1] to x[7]
//-----

module LFSR_7 (clk,reset,out,enable);

	input clk,reset,enable;
	output [7:1] out;

	parameter INITX = 7'b1;

	reg [7:1] x;
	reg wasEnable;
	initial x=INITX;
	initial wasEnable=1'b0;
	
	


	always @ (posedge clk)
		if(reset)
			x[7:1]=INITX;
		else if(enable & ~wasEnable)
			begin
			wasEnable<=1'b1;
			x[7:1] <= {x[6:1], x[1]^x[7]};
			end
		else if(~enable)
			wasEnable<=1'b0;
	
	assign out = x;
	
endmodule
