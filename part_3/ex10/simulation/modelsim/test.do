restart

add wave SW CLOCK_50 DAC_CS DAC_SDI DAC_LD DAC_SCK clk_out

force CLOCK_50 0 0,1 10ns -repeat 20ns
force SW 10'h3ff

run 200000ns