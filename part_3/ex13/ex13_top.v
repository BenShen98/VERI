module ex13_top(
	CLOCK_50,
	DAC_CS,
	DAC_SDI,
	DAC_SCK,
	DAC_LD,
	PWM_OUT);
	
	input CLOCK_50;
	output DAC_CS,DAC_SDI,DAC_SCK,DAC_LD,PWM_OUT;
	
	
	wire [9:0] A,D;
	wire clk_out;
	
	divclk DIV (CLOCK_50,clk_out,16'd5000);
		
	
	counter_10 COUNTER1 (
		.clock(CLOCK_50),
		.enable(clk_out),
		.reset(1'b0),
		.count(A)
		);
		
	rom SINWAVE(
		.address(A),
		.clock(clk_out),
		.q(D)
		);
		
	spi2dac SPI1 (CLOCK_50, D, clk_out, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);
	
	pwm PWM1 (CLOCK_50,D,clk_out,PWM_OUT);
	
endmodule 
		
		