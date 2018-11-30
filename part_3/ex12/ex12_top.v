module ex12_top(SW,HEX0,HEX1,HEX2,CLOCK_50);

	input CLOCK_50;
	input [9:0] SW;

	output [6:0] HEX0, HEX1, HEX2;

	wire [9:0] sin;

	rom SINWAVE(
		.address(SW),
		.clock(CLOCK_50),
		.q(sin));
		

	hex_2_7seg SEG0 (sin[3:0],HEX0);
	hex_2_7seg SEG1 (sin[7:4],HEX1);
	hex_2_7seg SEG2 ({2'b0,sin[9:8]},HEX2);

endmodule
