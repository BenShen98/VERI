// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

// DATE "12/07/2018 12:16:29"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module MUL_9xh666 (
	dataa,
	result)/* synthesis synthesis_greybox=0 */;
input 	[8:0] dataa;
output 	[19:0] result;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~1_sumout ;
wire \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~5_sumout ;
wire \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~9_sumout ;
wire \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~13_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37_sumout ;
wire \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_sumout ;
wire \lpm_mult_component|mult_core|romout[0][2]~0_combout ;
wire \lpm_mult_component|mult_core|romout[0][3]~1_combout ;
wire \lpm_mult_component|mult_core|romout[0][4]~2_combout ;
wire \dataa[1]~input_o ;
wire \dataa[2]~input_o ;
wire \dataa[3]~input_o ;
wire \dataa[4]~input_o ;
wire \dataa[5]~input_o ;
wire \dataa[6]~input_o ;
wire \dataa[7]~input_o ;
wire \dataa[8]~input_o ;
wire \dataa[0]~input_o ;


MUL_9xh666_lpm_mult_1 lpm_mult_component(
	.op_1(\lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~1_sumout ),
	.op_11(\lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~5_sumout ),
	.op_12(\lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~9_sumout ),
	.op_13(\lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~13_sumout ),
	.op_14(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_sumout ),
	.op_15(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_sumout ),
	.op_16(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_sumout ),
	.op_17(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13_sumout ),
	.op_18(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_sumout ),
	.op_19(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_sumout ),
	.op_110(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25_sumout ),
	.op_111(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_sumout ),
	.op_112(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_sumout ),
	.op_113(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37_sumout ),
	.op_114(\lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_sumout ),
	.romout_2_0(\lpm_mult_component|mult_core|romout[0][2]~0_combout ),
	.romout_3_0(\lpm_mult_component|mult_core|romout[0][3]~1_combout ),
	.romout_4_0(\lpm_mult_component|mult_core|romout[0][4]~2_combout ),
	.dataa_0(\dataa[0]~input_o ),
	.dataa_1(\dataa[1]~input_o ),
	.dataa_2(\dataa[2]~input_o ),
	.dataa_3(\dataa[3]~input_o ),
	.dataa_4(\dataa[4]~input_o ),
	.dataa_5(\dataa[5]~input_o ),
	.dataa_6(\dataa[6]~input_o ),
	.dataa_7(\dataa[7]~input_o ),
	.dataa_8(\dataa[8]~input_o ));

assign \dataa[1]~input_o  = dataa[1];

assign \dataa[2]~input_o  = dataa[2];

assign \dataa[3]~input_o  = dataa[3];

assign \dataa[4]~input_o  = dataa[4];

assign \dataa[5]~input_o  = dataa[5];

assign \dataa[6]~input_o  = dataa[6];

assign \dataa[7]~input_o  = dataa[7];

assign \dataa[8]~input_o  = dataa[8];

assign result[0] = gnd;

assign result[1] = \dataa[0]~input_o ;

assign result[2] = \lpm_mult_component|mult_core|romout[0][2]~0_combout ;

assign result[3] = \lpm_mult_component|mult_core|romout[0][3]~1_combout ;

assign result[4] = \lpm_mult_component|mult_core|romout[0][4]~2_combout ;

assign result[5] = \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~1_sumout ;

assign result[6] = \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~5_sumout ;

assign result[7] = \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~9_sumout ;

assign result[8] = \lpm_mult_component|mult_core|padder|adder[0]|auto_generated|op_1~13_sumout ;

assign result[9] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_sumout ;

assign result[10] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_sumout ;

assign result[11] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_sumout ;

assign result[12] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13_sumout ;

assign result[13] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_sumout ;

assign result[14] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_sumout ;

assign result[15] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25_sumout ;

assign result[16] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_sumout ;

assign result[17] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_sumout ;

assign result[18] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37_sumout ;

assign result[19] = \lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_sumout ;

assign \dataa[0]~input_o  = dataa[0];

endmodule

module MUL_9xh666_lpm_mult_1 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	romout_2_0,
	romout_3_0,
	romout_4_0,
	dataa_0,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
output 	romout_2_0;
output 	romout_3_0;
output 	romout_4_0;
input 	dataa_0;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



MUL_9xh666_multcore_1 mult_core(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.romout_2_0(romout_2_0),
	.romout_3_0(romout_3_0),
	.romout_4_0(romout_4_0),
	.dataa_0(dataa_0),
	.dataa_1(dataa_1),
	.dataa_2(dataa_2),
	.dataa_3(dataa_3),
	.dataa_4(dataa_4),
	.dataa_5(dataa_5),
	.dataa_6(dataa_6),
	.dataa_7(dataa_7),
	.dataa_8(dataa_8));

endmodule

module MUL_9xh666_multcore_1 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	romout_2_0,
	romout_3_0,
	romout_4_0,
	dataa_0,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
output 	romout_2_0;
output 	romout_3_0;
output 	romout_4_0;
input 	dataa_0;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \romout[0][10]~3_combout ;
wire \romout[0][11]~4_combout ;
wire \romout[1][4]~5_combout ;
wire \romout[1][9]~6_combout ;
wire \romout[0][12]~7_combout ;
wire \romout[0][13]~8_combout ;
wire \romout[0][14]~9_combout ;


MUL_9xh666_mpar_add_1 padder(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.romout_10_0(\romout[0][10]~3_combout ),
	.romout_11_0(\romout[0][11]~4_combout ),
	.romout_4_1(\romout[1][4]~5_combout ),
	.romout_9_1(\romout[1][9]~6_combout ),
	.romout_12_0(\romout[0][12]~7_combout ),
	.romout_13_0(\romout[0][13]~8_combout ),
	.romout_14_0(\romout[0][14]~9_combout ),
	.dataa_0(dataa_0),
	.dataa_1(dataa_1),
	.dataa_2(dataa_2),
	.dataa_3(dataa_3),
	.dataa_4(dataa_4),
	.dataa_5(dataa_5),
	.dataa_6(dataa_6),
	.dataa_7(dataa_7),
	.dataa_8(dataa_8));

cyclonev_lcell_comb \romout[0][10]~3 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[0][10]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][10]~3 .extended_lut = "off";
defparam \romout[0][10]~3 .lut_mask = 64'h1EA71EA71EA71EA7;
defparam \romout[0][10]~3 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][11]~4 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[0][11]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][11]~4 .extended_lut = "off";
defparam \romout[0][11]~4 .lut_mask = 64'h3D633D633D633D63;
defparam \romout[0][11]~4 .shared_arith = "off";

cyclonev_lcell_comb \romout[1][4]~5 (
	.dataa(!dataa_7),
	.datab(!dataa_6),
	.datac(!dataa_5),
	.datad(!dataa_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[1][4]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[1][4]~5 .extended_lut = "off";
defparam \romout[1][4]~5 .lut_mask = 64'h6569656965696569;
defparam \romout[1][4]~5 .shared_arith = "off";

cyclonev_lcell_comb \romout[1][9]~6 (
	.dataa(!dataa_7),
	.datab(!dataa_6),
	.datac(!dataa_5),
	.datad(!dataa_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[1][9]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[1][9]~6 .extended_lut = "off";
defparam \romout[1][9]~6 .lut_mask = 64'h46BD46BD46BD46BD;
defparam \romout[1][9]~6 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][12]~7 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[0][12]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][12]~7 .extended_lut = "off";
defparam \romout[0][12]~7 .lut_mask = 64'h6579657965796579;
defparam \romout[0][12]~7 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][13]~8 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[0][13]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][13]~8 .extended_lut = "off";
defparam \romout[0][13]~8 .lut_mask = 64'h4642464246424642;
defparam \romout[0][13]~8 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][14]~9 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\romout[0][14]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][14]~9 .extended_lut = "off";
defparam \romout[0][14]~9 .lut_mask = 64'h1115111511151115;
defparam \romout[0][14]~9 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][2]~0 (
	.dataa(!dataa_0),
	.datab(!dataa_1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(romout_2_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][2]~0 .extended_lut = "off";
defparam \romout[0][2]~0 .lut_mask = 64'h6666666666666666;
defparam \romout[0][2]~0 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][3]~1 (
	.dataa(!dataa_0),
	.datab(!dataa_1),
	.datac(!dataa_2),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(romout_3_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][3]~1 .extended_lut = "off";
defparam \romout[0][3]~1 .lut_mask = 64'h2D2D2D2D2D2D2D2D;
defparam \romout[0][3]~1 .shared_arith = "off";

cyclonev_lcell_comb \romout[0][4]~2 (
	.dataa(!dataa_3),
	.datab(!dataa_2),
	.datac(!dataa_1),
	.datad(!dataa_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(romout_4_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \romout[0][4]~2 .extended_lut = "off";
defparam \romout[0][4]~2 .lut_mask = 64'h6569656965696569;
defparam \romout[0][4]~2 .shared_arith = "off";

endmodule

module MUL_9xh666_mpar_add_1 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	romout_10_0,
	romout_11_0,
	romout_4_1,
	romout_9_1,
	romout_12_0,
	romout_13_0,
	romout_14_0,
	dataa_0,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
input 	romout_10_0;
input 	romout_11_0;
input 	romout_4_1;
input 	romout_9_1;
input 	romout_12_0;
input 	romout_13_0;
input 	romout_14_0;
input 	dataa_0;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \adder[0]|auto_generated|op_1~21_sumout ;
wire \adder[0]|auto_generated|op_1~25_sumout ;
wire \adder[0]|auto_generated|op_1~29_sumout ;
wire \adder[0]|auto_generated|op_1~33_sumout ;
wire \adder[0]|auto_generated|op_1~37_sumout ;
wire \adder[0]|auto_generated|op_1~41_sumout ;
wire \adder[0]|auto_generated|op_1~45_sumout ;
wire \adder[0]|auto_generated|op_1~49_sumout ;
wire \adder[0]|auto_generated|op_1~53_sumout ;
wire \adder[0]|auto_generated|op_1~57_sumout ;


MUL_9xh666_mpar_add_2 sub_par_add(
	.op_1(op_14),
	.op_11(op_15),
	.op_12(op_16),
	.op_13(op_17),
	.op_14(op_18),
	.op_15(op_19),
	.op_16(op_110),
	.op_17(op_111),
	.op_18(op_112),
	.op_19(op_113),
	.op_110(op_114),
	.op_111(\adder[0]|auto_generated|op_1~21_sumout ),
	.op_112(\adder[0]|auto_generated|op_1~25_sumout ),
	.op_113(\adder[0]|auto_generated|op_1~29_sumout ),
	.op_114(\adder[0]|auto_generated|op_1~33_sumout ),
	.op_115(\adder[0]|auto_generated|op_1~37_sumout ),
	.op_116(\adder[0]|auto_generated|op_1~41_sumout ),
	.op_117(\adder[0]|auto_generated|op_1~45_sumout ),
	.op_118(\adder[0]|auto_generated|op_1~49_sumout ),
	.op_119(\adder[0]|auto_generated|op_1~53_sumout ),
	.op_120(\adder[0]|auto_generated|op_1~57_sumout ),
	.dataa_8(dataa_8));

MUL_9xh666_lpm_add_sub_1 \adder[0] (
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(\adder[0]|auto_generated|op_1~21_sumout ),
	.op_15(\adder[0]|auto_generated|op_1~25_sumout ),
	.op_16(\adder[0]|auto_generated|op_1~29_sumout ),
	.op_17(\adder[0]|auto_generated|op_1~33_sumout ),
	.op_18(\adder[0]|auto_generated|op_1~37_sumout ),
	.op_19(\adder[0]|auto_generated|op_1~41_sumout ),
	.op_110(\adder[0]|auto_generated|op_1~45_sumout ),
	.op_111(\adder[0]|auto_generated|op_1~49_sumout ),
	.op_112(\adder[0]|auto_generated|op_1~53_sumout ),
	.op_113(\adder[0]|auto_generated|op_1~57_sumout ),
	.romout_10_0(romout_10_0),
	.romout_11_0(romout_11_0),
	.romout_4_1(romout_4_1),
	.romout_9_1(romout_9_1),
	.romout_12_0(romout_12_0),
	.romout_13_0(romout_13_0),
	.romout_14_0(romout_14_0),
	.dataa_0(dataa_0),
	.dataa_1(dataa_1),
	.dataa_2(dataa_2),
	.dataa_3(dataa_3),
	.dataa_4(dataa_4),
	.dataa_5(dataa_5),
	.dataa_6(dataa_6),
	.dataa_7(dataa_7));

endmodule

module MUL_9xh666_lpm_add_sub_1 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	romout_10_0,
	romout_11_0,
	romout_4_1,
	romout_9_1,
	romout_12_0,
	romout_13_0,
	romout_14_0,
	dataa_0,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
input 	romout_10_0;
input 	romout_11_0;
input 	romout_4_1;
input 	romout_9_1;
input 	romout_12_0;
input 	romout_13_0;
input 	romout_14_0;
input 	dataa_0;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



MUL_9xh666_add_sub_a9h auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.romout_10_0(romout_10_0),
	.romout_11_0(romout_11_0),
	.romout_4_1(romout_4_1),
	.romout_9_1(romout_9_1),
	.romout_12_0(romout_12_0),
	.romout_13_0(romout_13_0),
	.romout_14_0(romout_14_0),
	.dataa_0(dataa_0),
	.dataa_1(dataa_1),
	.dataa_2(dataa_2),
	.dataa_3(dataa_3),
	.dataa_4(dataa_4),
	.dataa_5(dataa_5),
	.dataa_6(dataa_6),
	.dataa_7(dataa_7));

endmodule

module MUL_9xh666_add_sub_a9h (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	romout_10_0,
	romout_11_0,
	romout_4_1,
	romout_9_1,
	romout_12_0,
	romout_13_0,
	romout_14_0,
	dataa_0,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
input 	romout_10_0;
input 	romout_11_0;
input 	romout_4_1;
input 	romout_9_1;
input 	romout_12_0;
input 	romout_13_0;
input 	romout_14_0;
input 	dataa_0;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~2 ;
wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~18_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(!dataa_2),
	.datab(!dataa_1),
	.datac(!dataa_0),
	.datad(!dataa_3),
	.datae(gnd),
	.dataf(!dataa_4),
	.datag(gnd),
	.cin(\op_1~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(\op_1~2 ),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FF0000001EA7;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(!dataa_4),
	.datab(gnd),
	.datac(gnd),
	.datad(!dataa_5),
	.datae(gnd),
	.dataf(!romout_10_0),
	.datag(gnd),
	.cin(\op_1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h0000FF00000055AA;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!dataa_4),
	.datab(gnd),
	.datac(!dataa_5),
	.datad(!dataa_6),
	.datae(gnd),
	.dataf(!romout_11_0),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000FF0000000AF5;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!dataa_2),
	.datab(!dataa_1),
	.datac(!dataa_0),
	.datad(!romout_4_1),
	.datae(gnd),
	.dataf(!dataa_3),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000B942000000FF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!dataa_2),
	.datab(!dataa_1),
	.datac(!dataa_0),
	.datad(!dataa_3),
	.datae(gnd),
	.dataf(!romout_9_1),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF0000001EA7;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!romout_10_0),
	.datae(gnd),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000C29C000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!romout_11_0),
	.datae(gnd),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h00009A86000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!romout_12_0),
	.datae(gnd),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000B942000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!romout_13_0),
	.datae(gnd),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000E158000000FF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!romout_14_0),
	.datae(gnd),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000C29C000000FF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!dataa_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FFFF00006579;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!dataa_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FFFF000046BD;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!dataa_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FFFF000011A8;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!dataa_6),
	.datab(!dataa_5),
	.datac(!dataa_4),
	.datad(!dataa_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h0000FFFF00000057;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~18_cout ),
	.shareout());
defparam \op_1~18 .extended_lut = "off";
defparam \op_1~18 .lut_mask = 64'h0000FFFF00000000;
defparam \op_1~18 .shared_arith = "off";

endmodule

module MUL_9xh666_mpar_add_2 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	op_114;
input 	op_115;
input 	op_116;
input 	op_117;
input 	op_118;
input 	op_119;
input 	op_120;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



MUL_9xh666_lpm_add_sub_2 \adder[0] (
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.dataa_8(dataa_8));

endmodule

module MUL_9xh666_lpm_add_sub_2 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	op_114;
input 	op_115;
input 	op_116;
input 	op_117;
input 	op_118;
input 	op_119;
input 	op_120;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



MUL_9xh666_add_sub_e9h auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.dataa_8(dataa_8));

endmodule

module MUL_9xh666_add_sub_e9h (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	dataa_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	op_114;
input 	op_115;
input 	op_116;
input 	op_117;
input 	op_118;
input 	op_119;
input 	op_120;
input 	dataa_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~2 ;
wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(\op_1~2 ),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(\op_1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_113),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_114),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_117),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_118),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!dataa_8),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000000FF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FFFF00000000;
defparam \op_1~41 .shared_arith = "off";

endmodule
