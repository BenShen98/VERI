# VERI Part 2

## ModelSim
* In the model sim, you could 'force' on both input and output to a certain value, it is useful when trying to simulate an error or when to debug a large project.

### useful tcl command
* add wave clock enable #Add 2 wave called 
* add wave -hexadecimal count
* force clock 0 0, 1 10ns -repeat 20ns
* force enable 0
* force enable 1
* run 100ns
* step
