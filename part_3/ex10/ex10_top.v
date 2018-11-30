module ex10_top(
	SW,
	CLOCK_50,
	DAC_CS,
	DAC_SDI,
	DAC_LD,
	DAC_SCK
	);
	
	input [9:0]SW;
	input CLOCK_50;
	output DAC_CS,DAC_SDI,DAC_LD,DAC_SCK;
	
	wire clk_out;
	
	divclk DIV1 (CLOCK_50,clk_out,16'd5000);
	
	spi2dac SPI1 (CLOCK_50,SW,clk_out,DAC_SDI,DAC_CS,DAC_SCK,DAC_LD);
	
endmodule 