add wave -position end  sim:/spi2dac/sysclk
add wave -position end  sim:/spi2dac/div2
add wave -position end  sim:/spi2dac/div4
add wave -position end  sim:/spi2dac/status_busy
add wave -position end -hexadecimal sim:/spi2dac/data_in
add wave -position end  sim:/spi2dac/ld
add wave -position end -hexadecimal  sim:/spi2dac/state
add wave -position end  sim:/spi2dac/sck_ena
add wave -position end  sim:/spi2dac/dac_ld
add wave -position end -hexadecimal  sim:/spi2dac/shift_reg
add wave -position end  sim:/spi2dac/spi_sdo
add wave -position end  sim:/spi2dac/spi_cs
add wave -position end  sim:/spi2dac/spi_sck
add wave -position end  sim:/spi2dac/spi_ld
add wave -position end  sim:/spi2dac/rs_state
force -freeze sim:/spi2dac/sysclk 1 0, 0 {10 ns} -r 20 ns
run 20ns
force data_in 10'h2c3
force ld 0
run 20ns
force ld 1
run 20ns
force ld 0
run 20ns
 