module ge5_add3(out,in);
	input [3:0] in;
	output reg [3:0] out;
	
	always @ (in)
		case in
			4'b0000: oA <= 4'b0000; 
			4'b0001: oA <= 4'b0001; 
			4'b0010: oA <= 4'b0010; 
			4'b0011: oA <= 4'b0011; 
			4'b0100: oA <= 4'b0100;
			
			4'b0101: oA <= 4'b1000; 
			4'b0110: oA <= 4'b1001; 
			4'b0111: oA <= 4'b1010; 
			4'b1000: oA <= 4'b1011; 
			4'b1001: oA <= 4'b1100;
			4'b1010: oA <= 4'b1101;	
			4'b1011: oA <= 4'b1110;	
			4'b1100: oA <= 4'b1111;	
			default: oA <= 4'b0000;
		endcase
endmodule
