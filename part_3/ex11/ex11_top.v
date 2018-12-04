module ex11_top(
	SW,
	CLOCK_50,
	DAC_CS,
	DAC_SDI,
	DAC_LD,
	DAC_SCK,
	PWM_OUT
	);
	
	input [9:0]SW;
	input CLOCK_50;
	output DAC_CS,DAC_SDI,DAC_LD,DAC_SCK,PWM_OUT;
	wire sent;
	
	divclk DIV1 (CLOCK_50,sent,16'd5000);
	
	spi2dac SPI1 (CLOCK_50, SW, sent, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);
	
	pwm PWM1 (CLOCK_50,SW,sent,PWM_OUT);
	
endmodule 
	