module ex6_top(
	CLOCK_50, //50 Mhz clk
	KEY, //key0 => press to enable counter; key1 => press to reset counter
	SW, //sw0 => turn on to enable counter
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4
);

	input CLOCK_50;
	input [1:0] KEY;
	input [0:0] SW;
	
	output [6:0]HEX0,HEX1,HEX2,HEX3,HEX4;

	wire [15:0] wb;
	wire [3:0] a1,a2,a3,a4,a5;
	
	wire reset,enable,tick;
	 
	assign reset = ~KEY[1];
	assign enable = (~KEY[0] | SW[0])  & tick;
	
	
	divclk div50k (CLOCK_50,tick,16'd50000);
	

	counter_16 COUNTER (CLOCK_50,enable,reset,wb);

	
	bin2bcd_16 bcd0 (wb,a1,a2,a3,a4,a5);	
	
	hex_2_7seg SEG0 (HEX0,a1);
	hex_2_7seg SEG1 (HEX1,a2);
	hex_2_7seg SEG2 (HEX2,a3);
	hex_2_7seg SEG3 (HEX3,a4);
	hex_2_7seg SEG4 (HEX4,a5);
	
endmodule
	