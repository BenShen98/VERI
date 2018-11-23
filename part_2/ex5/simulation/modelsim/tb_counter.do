add wave clock enable
add wave -hexadecimal count
force clock 0 0,1 10ns -repeat 20ns
force enable 1 
run 100ns
force enable 0 
run 100ns
force enable 1 
run 1000ns