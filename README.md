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
We have set the pin location according to the table given on the labnotes. The pin voltage is set to 3.3 LVTTL. The pin assignment file can be accessed by the link below.

[Pin assignment link](https://github.com/BenShen98/VERI/blob/master/pin_assignment.txt)

### Optional Binary to BCD Conversion
In this experiment, the get_5_get_3 algorithm was introduced to perform the conversion. The following schematic diagram shows how data flows among different blocks. 
![data flow block](https://github.com/BenShen98/VERI/blob/master/part_1/img/bin2bcd.jpeg)

The additional "0" must be added at the beginning when a new block of three bits is introduced.(Blocks A1,A4,A10)
The output would be placed in H3:H0 blocks, which represents Binary Code Decimal. 

## Part 2 Counters and Finite State Machines

### RTL Simulation
By using ModelSim of RTL Simulation, waveforms of various different signals can be shown.\
The following code is the instruction:
 * add wave XXXXXXXX
 * force xxx 
 * force CLOCK_50 0 1,1 10ns -repeat xxxns
 * (*force* can enable all signals to user defined values)
 * *run* executes the given signals

By creating a DO file, we can simplify things extensively by running the Testbench file.
Also, single stepping allows the user to debug easily.

### Notice
* Always include a xxx.sdc file which specifies the working clock to a certain speed.
* Always remember to modify the pin assignment file. 
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
the 50MHz clock by (50000x500).For more information, please refer to the circuit diagram below:\

![circuit diagram](https://github.com/BenShen98/VERI/blob/master/part_2/img/Screenshot%202018-12-03%20at%2021.42.43.png)
 
 ### Reaction Meter
The aim of this section is to generate a timer using the previous part. 
By modifying the previous state machine, the new FSM looks like below\
![FSM](https://github.com/BenShen98/VERI/blob/master/part_2/img/ex9_state.png)

## Part 3 Analogue I/O and SPI Interface

### Add on board
The additional board was designed by our lecturer Peter Cheung. This board provides the feature of digital to analogue conversion as well as pins which can be connected to the oscilloscope for debugging purposes. The following diagram indicates the internal circuitry diagram of the board.

![internal circuit](https://github.com/BenShen98/VERI/blob/master/part_3/img/Screenshot%202018-12-06%20at%2014.24.27.png)

* DAC_CS: Digital to Analogue converter, signal name: Chip select
* DAC_SDI: Digital to Analogue converter, signal name: Serial Data input
* DAC_SCK: Digital to Analogue converter, signal name: Serial Clock input
* DAC_LD: Digital to Analogue converter, signal name: Load

The same naming convention applies for the Analogue to Digital convertor.

### Verify parallel input 
According to the SPI2DAC proxy mentioned in lecture, the wave form h'23B after decoding should look like the diagram below.
![wave form](https://github.com/BenShen98/VERI/blob/master/part_3/img/modelsim_spi10'h23b.PNG)
The expected output was verified as two DC voltage on both SPI and PWM channels.

### Digital to Analogue conversion using pulse-width-modulation
The main concept of this part is that the width of the square wave changes linearly according to the digital input.
This signal is then passed into a low pass filter, which produces a digital output signal where high frequency components are
removed. \
This output signal is still discontinuous. The output on scope at pin 5 is verified to be a square wave with different widths.
The output on scope at pin 9 is verified to be the signal mentioned before.

### Designing a sine wave using ROM
The data in the ROM was designed using the formula below\
D[9:0]	=		int(511*sin(A[9:0]*2*pi/1024)+512), where A is the memory address for the ROM.\
* The data sheet for the above formula can be generated by using Python code or MATLAB script.
* Include data sheet as initialisation file for Memory Compiler
* Instuctions: Click	Tools	>	IP	Catalog to	bring	up	a	tool	which	helps	to	create	a	1-Port	ROM.		A	
catalog	window	will	pop	up.		Select	from	the	window	>Library	>Basic	Functions	>	
On-chip	Memory	>	ROM	1-Port. Complete	the on-screen	form	to	create	ROM.v

### A fixed frequency sinewave generator 
The diagram below shows the internal digital circuit of a sine wave generator ROM.
![sine wave gen](https://github.com/BenShen98/VERI/blob/master/part_3/img/sinegencircuit.png)
The address counter would increment the address by one every clock cycle, as a result, reading all the sampled data from ROM and writing into the SPI interface. In this case, we have separated two channels. The left channel is connected to the SPI interface, whereas the right channel is connected to a PWM block. Two output signals do not have a significant difference.

The diagram below verifies the result.
![scope](https://github.com/BenShen98/VERI/blob/master/part_3/img/sin_measurefrq.jpg)
The sampling frequency is set to 10KHz and the number of samples is 1K. Therefore, the signal frequency is 10K/1k= 10 Hz. 
In addition, we also included a graph for 18 clock cycles on the scope. The figure is shown below as:
![18_clock_cycles](https://github.com/BenShen98/VERI/blob/master/part_3/img/sin_measurefrq_muti.jpg)


### A variable sine wave generator

![circuit](https://github.com/BenShen98/VERI/blob/master/part_3/img/varsinegen.png)

The address is now controlled by the switches. It is passed through an adder and a D_Flip Flop. In other words, the increment value is user-defined now. The multiplication block was included from IP Catalog in Quartus Prime.\
The purpose of the upper line is to display the frequency of the signal. Data x sampling frequency "/" sample number. 
The division by 1024 was implemented using reading DATA [23:10], which takes the upper 14 bits. As a result, the data is divided by 1024. 

#### Why multiply by 14’h2710 and take the top 14 bit.

Because 14’h2710 is 10000 in decimal, the pointer to ROM is clocked at 10KHz, finally the ROM had stored 1k(1024) data point of one complete sine wave.

Let n be the number of address pointer increment, that means it will take 1024/x clock cycle to complete one full sin wave, and each clock cycle is 1/10000 seconds

Please see the figure below for details.
![Math equation](https://github.com/BenShen98/VERI/blob/master/part_3/img/Sampling%20Frequency.png)

### Analogue to Digital Converter

Instead	 of	 using	 the	 slide	 switches	 to	 control	 the	 frequency,	 use	 the	 A-to-D	 converter	 to	
convert	 the	 dc	 voltage	 of	 the	 potentiometer	 (which	 is	 between	 0v	 and	 3.3v)	 and	 use	 this	
converter	value	instead.	Please see VERI/Part 4/ex15_top.v for more information. 	

### Analysis of results
A problematic issue occurred when the frequency was increased. This is due to the fact the SPI interface has a specific constant sampling frequency. For full recovery of signal, the sampling frequency must satisfy the Nyquist Sampling frequency, in other words at least twice the maximum frequency component of the original signal. This was verified by changing the input. As it approaches 5000 Hz, the signals starts aliasing. 

## Part 4 Echo Synthesizer 

### Digital circuit of audio signal processing
The diagram below shows how different blocks are connected on the FPGA board.
![echo](https://github.com/BenShen98/VERI/blob/master/part_4/img/Screenshot%202018-12-06%20at%2015.03.00.png)

* The input data is subtracted by an offset since we are dealing with real analogue data which does not have
negative voltages. In this case, we subtract h'181. The processor deals with two's complement signed numbers.

* In the first experiment, we are required to verify that the main structure works. The allpass.v file 
describes a logic which simply passes the input to the output.

* The output data is also corrected by adding an offset. In this case, we are adding h'200. This adjusts the
analogue output signal to the range of 0-3.3V. 

* One of the raw data output was passed to a Pulse-width modulator block. As a result, the generated output would be 
square waves with different widths. The width of the square wave is proportional to the amplitude of the digital signal.
In order to gain a suitable analogue output for earphones, it is required to pass this square wave into a low pass filter.

### Multiple echo circuit
![echo circuit](https://github.com/BenShen98/VERI/blob/master/part_4/img/multecho_circuit.png)

