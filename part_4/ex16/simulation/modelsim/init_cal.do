add wave -position end  sim:/top/CLOCK_50
add wave -position end  sim:/top/clk_10k
add wave -position end  sim:/top/ld_pulse
add wave -position end -hexadecimal sim:/top/SW
add wave -position end -hexadecimal sim:/top/data
add wave -position end  sim:/top/DAC_SDI
add wave -position end  sim:/top/DAC_SCK
add wave -position end  sim:/top/DAC_CS
add wave -position end  sim:/top/DAC_LD
add wave -position end  sim:/top/ADC_SDI
add wave -position end  sim:/top/ADC_SCK
add wave -position end  sim:/top/ADC_CS
add wave -position end  sim:/top/ADC_SDO
force CLOCK_50 1 0, 0 10ns -r 20ns
force SW 10'h20f
force ADC_SDO 1
run 400us
