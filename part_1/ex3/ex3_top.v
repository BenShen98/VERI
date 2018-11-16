module ex3_top(
	SW,	//input 10 bit switch, RHS is the LSB
	HEX0, //LSB
	HEX1, 
	HEX2 	//MSB

);
	
	input [9:0] SW;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	
	
	hex_2_7seg SEG0 (HEX0,SW[3:0]);
	hex_2_7seg SEG1 (HEX1,SW[7:4]);
	hex_2_7seg SEG2 (HEX2,{ 2'b00, SW[9:8] });	
	 
endmodule
