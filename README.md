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

## VERI Part 1

### .bsf and .bdf

We find out that the link between .bsf and .bdf are bidirectional, we could include only the .bsf or the .bdf, and the code will still 'Analysis	and	Elaboration'. But we were suggested by the UTA to include .bdf as that's how normally done.

What is the difference between SLOW 0 and 85 celcius propagation delay?
According to Brownian motion, electrons move faster when the temperature is high. This results in collison between molecules, and therefore the delay time between gates rises. 

### Pin assignment :
We have set the pin location according to the table given on the labnotes. The pin voltage is set to 3.3 LVTTL.

## Part 2 Counters and Finite State Machines

### RTL Simulation
By using Modelsim of RTL Simulation, waveforms of various differnt siganls can be shown.\
The following code is the instruction:
 * add wave XXXXXXXX
 * force xxx 
 * force CLOCK_50 0 1,1 10ns -repeat xxxns
 * (*force* can enable all signals to user defined values)
 * *run* executes the given signals

By creating a DO file, we can simplify things extensivly by running the testbench file.
Also, single stepping allows the user to debug easily.

### Notice
* Always include a xxx.sdc file which specifies the working clock to a certain speed.
* Always remember to modifiy the pin assignment file. 
* Always check if the board is chosen correctly.

### Linear Feedback Shift Register
The following graph indicates the truth table which implements the logic of 1+X+X^7.

![Truth table](https://github.com/BenShen98/VERI/blob/master/part_2/img/ex7_LFSR_excel.png)

This was check by using MODELSIM in Quartus Prime. The following image shows the wave diagram.

![Wave form](https://github.com/BenShen98/VERI/blob/master/part_2/img/ex7_LFSR.png)

The Netlist graph was then generated to verify the correctness of design.\
![Netlist](https://github.com/BenShen98/VERI/blob/master/part_2/img/ex7_RTL.png)

### Delay circuit
The clock should be working at 1ms/cycle which is equivalent to 1MHz. This can be achieved by dividing
the 50MHz clock by (50000x500).For more information,please refer to the circuit diagram below:\

![circuit diagram](https://github.com/BenShen98/VERI/blob/master/part_2/img/Screenshot%202018-12-03%20at%2021.42.43.png)
 

