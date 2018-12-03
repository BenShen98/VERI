# VERI

This project was one of the the year-2 experiment, written by [Peter Cheung](http://www.ee.ic.ac.uk/pcheung/index.html).\
Written Verilog configuration for Cyclone	V FPGA (5CSEMA5F31C6).\
[Link to the experiment](http://www.ee.ic.ac.uk/pcheung/teaching/E2_Experiment/)\
[link to the Digital Course](http://www.ee.ic.ac.uk/pcheung/teaching/ee2_digital/index.html)

## Useful note


### [=, assign =, <=](https://stackoverflow.com/questions/27435703/assigning-values-in-verilog-difference-between-assign-and)

 * <=non-blocking and is performed on every positive edge of clock. these are evaluated in parallel so no guarantee of order. An example of this would be a register.

 * assign =continual assignment to wire outside an always statement. value of LHS is updated when RHS changes.

 * =blocking assignment, inside always statements enforces sequential order. 

### [output reg or wire](https://electronics.stackexchange.com/questions/245865/verilog-output-reg-vs-output-wire)

 * output default is wire
 * reg can be assigned to in a procedural block (a block beginning with always or initial)
 * wire can be assigned in a continuous assignment (an assign statement) 
 
### [case default](https://stackoverflow.com/questions/29451175/how-can-i-assign-a-dont-care-value-to-an-output-in-a-combinational-module-in)
 * avoid use x as default
 
### parameter vs [assign vs alias](https://invionics.com/systemverilog-insights-series-alias-vs-assign-whats-the-difference/)
 * parameter: has to be constant
 * assign: assigning the right-hand side of the statement to the left-hand side but not the inverse
 * alias: bidirectional (SystemVerilog, not Verilog)
 
### ! vs ~
 * ! is logical inversion
 * ~ is bitwise inversion


## Part 2 Counters and Finite State Machines
### RTL Simulation
By using Modelsim of RTL Simulation, waveforms of various differnt siganls can be shown. 
The following code is the instruction:
 add wave XXXXXXXX
 force xxx 
 force CLOCK_50 0 1,1 10ns -repeat xxxns
 (*force* can enable all signals to user defined values)
 *run* executes the given signals

By creating a DO file, we can simplify things extensivly by running the testbench file.
Also, single stepping allows the user to debug easily.

### Notice
Always include a xxx.sdc file which specifies the working clock to a certain speed.
Always remember to modifiy the pin assignment file. 
Always check if the board is chosen correctly.

### Linear Feedback Shift Register
The following graph indicates the truth table which implements the logic of 1+X+X^7.

 
