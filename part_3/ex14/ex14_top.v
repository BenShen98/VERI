module ex14_top(CLOCK_50,SW,HEX0,HEX1,HEX2,HEX3,HEX4, DAC_CS, DAC_SDI, DAC_SCK, DAC_LD, PWM_OUT);

	input wire CLOCK_50;										//input clock
	input wire [9:0] SW;										//switch control frequency

	output  [6:0] HEX0,HEX1,HEX2,HEX3,HEX4;		//frequency display
	output  DAC_CS, DAC_SDI, DAC_SCK, DAC_LD;	//SPI2ADC output for right channel
	output  PWM_OUT; 									//PWM output for Left Channel

	// tick gen
	wire tick;
	clktick_16 clk (CLOCK_50,1'b1,16'd4999,tick);



	// ---- display freq
	wire [23:0]	result;
	wire [3:0] 	BCD_0, BCD_1, BCD_2, BCD_3, BCD_4;

	mul_10x14 	MUL 		(SW, result);

	bin2bcd_16 	BIN2BCD	(result[23:8], BCD_0, BCD_1, BCD_2, BCD_3, BCD_4);
	hex_to_7seg	SEG0		(BCD_0,HEX0);
	hex_to_7seg	SEG1		(BCD_1,HEX1);
	hex_to_7seg	SEG2		(BCD_2,HEX2);
	hex_to_7seg	SEG3		(BCD_3,HEX3);
	hex_to_7seg	SEG4		(BCD_4,HEX4);
	// ---- end display



	// ---- gensin

		reg [9:0] addr;
		wire [9:0] sine;

		initial addr=10'b0;
		
		always @ (posedge tick)
			addr<=addr+SW;
			
		rom SINWAVE(
			.address(addr),
			.clock(tick),
			.q(sine));
	// ---- end gensin

	// ---- transmit data
		spi2dac SPI1 (CLOCK_50, sine, tick, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);
		pwm PWM1 (CLOCK_50,sine,tick,PWM_OUT);
	// ---- end transmit

endmodule
