# VERI

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