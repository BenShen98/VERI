restart
add wave clk reset
add wave -hexadecimal out

force clk 0 0, 1 10ns -repeat 20ns
run 2560ns 
//128 cycles