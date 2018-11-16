module ex2_top(
	SW, //input switches
	HEX0 //Hex output to 7 segment display
	);
	
	input [3:0] SW;
	output [6:0] HEX0;
	
	hex_2_7seg SEG0 (HEX0,SW);
	
endmodule
