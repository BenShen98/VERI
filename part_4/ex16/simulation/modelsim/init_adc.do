add wave sysclk
add wave clk_1MHz
add wave start
add wave data_from_adc
add wave data_valid
add wave -hexadecimal data_out
add wave adc_cs
add wave adc_sck
add wave adc_done
add wave adc_din
add wave -hexadecimal shift_reg
add wave -hexadecimal state
add wave shift_ena 
force sysclk 1 0, 0 {10 ns} -r 20 ns
force start 0
run 200ns
force start 1
run 200ns
force start 0
force data_from_adc 0 @ 1us, 1 @ 6us, 0 @ 8us, 1 @ 10us, 0 @ 13us, 1 @ 15us

run 20us

