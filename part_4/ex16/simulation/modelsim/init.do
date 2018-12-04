add wave -position end  sim:/top/CLOCK_50
add wave -position end  sim:/top/clock_25
add wave -position end  sim:/top/tone_1k
add wave -position end  sim:/top/ld_pulse
add wave -position end  sim:/top/reset
add wave -position end  sim:/top/DAC_SDI
add wave -position end  sim:/top/DAC_SCK
add wave -position end  sim:/top/DAC_CS
add wave -position end  sim:/top/DAC_LD
add wave -position end  sim:/top/BUTTON0
add wave -position end -hexadecimal sim:/top/mux_out
add wave -position end -hexadecimal sim:/top/SPI_1/state
add wave -position end  sim:/top/SPI_1/sck_ena
add wave -position end  sim:/top/SPI_1/clk_half
force CLOCK_50  1 0, 0 {10 ns} -r {20 ns}
alias ck "run 20ns"
force BUTTON0 0
ck
force BUTTON0 1
ck
