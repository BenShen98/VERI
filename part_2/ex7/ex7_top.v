module ex7_top(
	SW,//auto increment counter
	KEY,//for click to next count
	HEX0,
	HEX1,
	CLOCK_50//system 50Mhz clock
);

	input [0:0] SW; //sw0 auto increment every 1s
	input [3:0] KEY; //key3 manual increment, key0 reset
	input CLOCK_50; //50mhz

	output [6:0] HEX0, HEX1;

	wire clk_1k,clk_1,triger;
	
	wire [6:0] delay;


	divclk DIV50k (CLOCK_50,clk_1k,16'd50000);
	divclk DIV1k (clk_1k,clk_1,16'd1000);
	
	assign triger = (SW[0]&clk_1) | ~KEY[3];
	
	LFSR_7(
		.clk( CLOCK_50 ),
		.reset(~KEY[0]),
		.out(delay[6:0]),
		.enable(triger));
		
	hex_2_7seg SEG0 (HEX0,delay[3:0]);
	hex_2_7seg SEG1 (HEX1, {1'b0,delay[6:4]} );
	

endmodule
