// megafunction wizard: %ROM: 1-PORT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: rom.v
// Megafunction Name(s):
// 			altsyncram
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.1.0 Build 625 09/12/2018 SJ Lite Edition
// ************************************************************


//Copyright (C) 2018  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details.


//altsyncram ADDRESS_ACLR_A="NONE" CLOCK_ENABLE_INPUT_A="BYPASS" CLOCK_ENABLE_OUTPUT_A="BYPASS" DEVICE_FAMILY="Cyclone V" ENABLE_RUNTIME_MOD="NO" INIT_FILE="../lib/rom_data.mif" NUMWORDS_A=1024 OPERATION_MODE="ROM" OUTDATA_ACLR_A="NONE" OUTDATA_REG_A="CLOCK0" RAM_BLOCK_TYPE="M10K" WIDTH_A=10 WIDTH_BYTEENA_A=1 WIDTHAD_A=10 address_a clock0 q_a
//VERSION_BEGIN 18.1 cbx_altera_syncram_nd_impl 2018:09:12:13:04:24:SJ cbx_altsyncram 2018:09:12:13:04:24:SJ cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_lpm_compare 2018:09:12:13:04:24:SJ cbx_lpm_decode 2018:09:12:13:04:24:SJ cbx_lpm_mux 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ cbx_stratixiii 2018:09:12:13:04:24:SJ cbx_stratixv 2018:09:12:13:04:24:SJ cbx_util_mgl 2018:09:12:13:04:24:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = M10K 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"OPTIMIZE_POWER_DURING_SYNTHESIS=NORMAL_COMPILATION"} *)
module  rom_altsyncram
	( 
	address_a,
	clock0,
	q_a) /* synthesis synthesis_clearbox=1 */;
	input   [9:0]  address_a;
	input   clock0;
	output   [9:0]  q_a;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clock0;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_ram_block1a_0portadataout;
	wire  [0:0]   wire_ram_block1a_1portadataout;
	wire  [0:0]   wire_ram_block1a_2portadataout;
	wire  [0:0]   wire_ram_block1a_3portadataout;
	wire  [0:0]   wire_ram_block1a_4portadataout;
	wire  [0:0]   wire_ram_block1a_5portadataout;
	wire  [0:0]   wire_ram_block1a_6portadataout;
	wire  [0:0]   wire_ram_block1a_7portadataout;
	wire  [0:0]   wire_ram_block1a_8portadataout;
	wire  [0:0]   wire_ram_block1a_9portadataout;
	wire  [9:0]  address_a_wire;

	cyclonev_ram_block   ram_block1a_0
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_0portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_0.clk0_core_clock_enable = "none",
		ram_block1a_0.clk0_input_clock_enable = "none",
		ram_block1a_0.clk0_output_clock_enable = "none",
		ram_block1a_0.connectivity_checking = "OFF",
		ram_block1a_0.init_file = "../lib/rom_data.mif",
		ram_block1a_0.init_file_layout = "port_a",
		ram_block1a_0.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_0.mem_init0 = 1024'h54A954AA95555552A94A5B6D93339C787F0003F0718CD92D6AAAB5A4C8CE1F0001F0E6264B5AAAAD6936631C1F8001FC3C7399936DB4A52A95555552AA552A54AB56AB556AAAAAAD56B5A4926CCC638780FFFC0F8E7326D295554A5B3731E0FFFE0F19D9B4A5555296C99CE3E07FFE03C38C666C924B5AD56AAAAAAD55AAD5AA,
		ram_block1a_0.operation_mode = "rom",
		ram_block1a_0.port_a_address_clear = "none",
		ram_block1a_0.port_a_address_width = 10,
		ram_block1a_0.port_a_data_out_clear = "none",
		ram_block1a_0.port_a_data_out_clock = "clock0",
		ram_block1a_0.port_a_data_width = 1,
		ram_block1a_0.port_a_first_address = 0,
		ram_block1a_0.port_a_first_bit_number = 0,
		ram_block1a_0.port_a_last_address = 1023,
		ram_block1a_0.port_a_logical_ram_depth = 1024,
		ram_block1a_0.port_a_logical_ram_width = 10,
		ram_block1a_0.ram_block_type = "M10K",
		ram_block1a_0.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_1
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_1portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_1.clk0_core_clock_enable = "none",
		ram_block1a_1.clk0_input_clock_enable = "none",
		ram_block1a_1.clk0_output_clock_enable = "none",
		ram_block1a_1.connectivity_checking = "OFF",
		ram_block1a_1.init_file = "../lib/rom_data.mif",
		ram_block1a_1.init_file_layout = "port_a",
		ram_block1a_1.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_1.mem_init0 = 1024'h3398CC667333333664D936DB49694AD52AAAAAA55AD69249B33339C70F0FE000000FE1E1C739999B2492D6B54AAAAAA956A52D25B6D9364CD999999CCC663398CC6733998CCCCCC99B26C924B696B52AD555555AA5296DB64CCCC638F0F01FFFFFF01E1E38C66664DB6D294AB5555556A95AD2DA4926C9B3266666633399CC66,
		ram_block1a_1.operation_mode = "rom",
		ram_block1a_1.port_a_address_clear = "none",
		ram_block1a_1.port_a_address_width = 10,
		ram_block1a_1.port_a_data_out_clear = "none",
		ram_block1a_1.port_a_data_out_clock = "clock0",
		ram_block1a_1.port_a_data_width = 1,
		ram_block1a_1.port_a_first_address = 0,
		ram_block1a_1.port_a_first_bit_number = 1,
		ram_block1a_1.port_a_last_address = 1023,
		ram_block1a_1.port_a_logical_ram_depth = 1024,
		ram_block1a_1.port_a_logical_ram_width = 10,
		ram_block1a_1.ram_block_type = "M10K",
		ram_block1a_1.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_2
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_2portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_2.clk0_core_clock_enable = "none",
		ram_block1a_2.clk0_input_clock_enable = "none",
		ram_block1a_2.clk0_output_clock_enable = "none",
		ram_block1a_2.connectivity_checking = "OFF",
		ram_block1a_2.init_file = "../lib/rom_data.mif",
		ram_block1a_2.init_file_layout = "port_a",
		ram_block1a_2.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_2.mem_init0 = 1024'hA52D694B5A5A5A5B496DA4926DB26C99B33333399CE71C71C3C3C1F80FF0000000001FE03F0787871C71CE733999999B326C9B6C924B6D25B4B4B4B5A52D694A5AD296B4A5A5A5A4B6925B6D924D93664CCCCCC66318E38E3C3C3E07F00FFFFFFFFFE01FC0F87878E38E318CC6666664CD9364936DB492DA4B4B4B4A5AD296B4,
		ram_block1a_2.operation_mode = "rom",
		ram_block1a_2.port_a_address_clear = "none",
		ram_block1a_2.port_a_address_width = 10,
		ram_block1a_2.port_a_data_out_clear = "none",
		ram_block1a_2.port_a_data_out_clock = "clock0",
		ram_block1a_2.port_a_data_width = 1,
		ram_block1a_2.port_a_first_address = 0,
		ram_block1a_2.port_a_first_bit_number = 2,
		ram_block1a_2.port_a_last_address = 1023,
		ram_block1a_2.port_a_logical_ram_depth = 1024,
		ram_block1a_2.port_a_logical_ram_width = 10,
		ram_block1a_2.ram_block_type = "M10K",
		ram_block1a_2.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_3
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_3portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_3.clk0_core_clock_enable = "none",
		ram_block1a_3.clk0_input_clock_enable = "none",
		ram_block1a_3.clk0_output_clock_enable = "none",
		ram_block1a_3.connectivity_checking = "OFF",
		ram_block1a_3.init_file = "../lib/rom_data.mif",
		ram_block1a_3.init_file_layout = "port_a",
		ram_block1a_3.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_3.mem_init0 = 1024'hC6318E739C639C638E71C71C71C38F1E3C3C3C3E1F07E07E03FC01FFF00000000000001FFF007F80FC0FC1F0F8787878F1E3871C71C71CE38C738C739CE318C639CE718C639C639C718E38E38E3C70E1C3C3C3C1E0F81F81FC03FE000FFFFFFFFFFFFFE000FF807F03F03E0F078787870E1C78E38E38E31C738C738C631CE738,
		ram_block1a_3.operation_mode = "rom",
		ram_block1a_3.port_a_address_clear = "none",
		ram_block1a_3.port_a_address_width = 10,
		ram_block1a_3.port_a_data_out_clear = "none",
		ram_block1a_3.port_a_data_out_clock = "clock0",
		ram_block1a_3.port_a_data_width = 1,
		ram_block1a_3.port_a_first_address = 0,
		ram_block1a_3.port_a_first_bit_number = 3,
		ram_block1a_3.port_a_last_address = 1023,
		ram_block1a_3.port_a_logical_ram_depth = 1024,
		ram_block1a_3.port_a_logical_ram_width = 10,
		ram_block1a_3.ram_block_type = "M10K",
		ram_block1a_3.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_4
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_4portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_4.clk0_core_clock_enable = "none",
		ram_block1a_4.clk0_input_clock_enable = "none",
		ram_block1a_4.clk0_output_clock_enable = "none",
		ram_block1a_4.connectivity_checking = "OFF",
		ram_block1a_4.init_file = "../lib/rom_data.mif",
		ram_block1a_4.init_file_layout = "port_a",
		ram_block1a_4.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_4.mem_init0 = 1024'hF83E0F83E07C1F83F07E07E07E03F01FC03FC03FE007FF8003FFFE00000000000000000000FFFF8003FFC00FF807F807F01F80FC0FC0FC1F83F07C0F83E0F83E07C1F07C1F83E07C0F81F81F81FC0FE03FC03FC01FF8007FFC0001FFFFFFFFFFFFFFFFFFFF00007FFC003FF007F807F80FE07F03F03F03E07C0F83F07C1F07C0,
		ram_block1a_4.operation_mode = "rom",
		ram_block1a_4.port_a_address_clear = "none",
		ram_block1a_4.port_a_address_width = 10,
		ram_block1a_4.port_a_data_out_clear = "none",
		ram_block1a_4.port_a_data_out_clock = "clock0",
		ram_block1a_4.port_a_data_width = 1,
		ram_block1a_4.port_a_first_address = 0,
		ram_block1a_4.port_a_first_bit_number = 4,
		ram_block1a_4.port_a_last_address = 1023,
		ram_block1a_4.port_a_logical_ram_depth = 1024,
		ram_block1a_4.port_a_logical_ram_width = 10,
		ram_block1a_4.ram_block_type = "M10K",
		ram_block1a_4.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_5
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_5portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_5.clk0_core_clock_enable = "none",
		ram_block1a_5.clk0_input_clock_enable = "none",
		ram_block1a_5.clk0_output_clock_enable = "none",
		ram_block1a_5.connectivity_checking = "OFF",
		ram_block1a_5.init_file = "../lib/rom_data.mif",
		ram_block1a_5.init_file_layout = "port_a",
		ram_block1a_5.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_5.mem_init0 = 1024'hFFC00FFC007FE003FF8007FF8003FFE0003FFFC00007FFFFFC00000000000000000000000000007FFFFFC00007FFF8000FFF8003FFC003FF800FFC007FE007FE003FF003FF801FFC007FF8007FFC001FFFC0003FFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFF80007FFF0007FFC003FFC007FF003FF801FF800,
		ram_block1a_5.operation_mode = "rom",
		ram_block1a_5.port_a_address_clear = "none",
		ram_block1a_5.port_a_address_width = 10,
		ram_block1a_5.port_a_data_out_clear = "none",
		ram_block1a_5.port_a_data_out_clock = "clock0",
		ram_block1a_5.port_a_data_width = 1,
		ram_block1a_5.port_a_first_address = 0,
		ram_block1a_5.port_a_first_bit_number = 5,
		ram_block1a_5.port_a_last_address = 1023,
		ram_block1a_5.port_a_logical_ram_depth = 1024,
		ram_block1a_5.port_a_logical_ram_width = 10,
		ram_block1a_5.ram_block_type = "M10K",
		ram_block1a_5.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_6
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_6portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_6.clk0_core_clock_enable = "none",
		ram_block1a_6.clk0_input_clock_enable = "none",
		ram_block1a_6.clk0_output_clock_enable = "none",
		ram_block1a_6.connectivity_checking = "OFF",
		ram_block1a_6.init_file = "../lib/rom_data.mif",
		ram_block1a_6.init_file_layout = "port_a",
		ram_block1a_6.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_6.mem_init0 = 1024'hFFFFF000007FFFFC000007FFFFFC0000003FFFFFFFF800000000000000000000000000000000000000003FFFFFFFF80000007FFFFFC000007FFFFC00001FFFFE00000FFFFF800003FFFFF8000003FFFFFFC000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000007FFFFFF8000003FFFFF800003FFFFE00000,
		ram_block1a_6.operation_mode = "rom",
		ram_block1a_6.port_a_address_clear = "none",
		ram_block1a_6.port_a_address_width = 10,
		ram_block1a_6.port_a_data_out_clear = "none",
		ram_block1a_6.port_a_data_out_clock = "clock0",
		ram_block1a_6.port_a_data_width = 1,
		ram_block1a_6.port_a_first_address = 0,
		ram_block1a_6.port_a_first_bit_number = 6,
		ram_block1a_6.port_a_last_address = 1023,
		ram_block1a_6.port_a_logical_ram_depth = 1024,
		ram_block1a_6.port_a_logical_ram_width = 10,
		ram_block1a_6.ram_block_type = "M10K",
		ram_block1a_6.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_7
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_7portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_7.clk0_core_clock_enable = "none",
		ram_block1a_7.clk0_input_clock_enable = "none",
		ram_block1a_7.clk0_output_clock_enable = "none",
		ram_block1a_7.connectivity_checking = "OFF",
		ram_block1a_7.init_file = "../lib/rom_data.mif",
		ram_block1a_7.init_file_layout = "port_a",
		ram_block1a_7.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_7.mem_init0 = 1024'hFFFFFFFFFF800000000007FFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFC00000000003FFFFFFFFFE00000000007FFFFFFFFFF80000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFC0000000000,
		ram_block1a_7.operation_mode = "rom",
		ram_block1a_7.port_a_address_clear = "none",
		ram_block1a_7.port_a_address_width = 10,
		ram_block1a_7.port_a_data_out_clear = "none",
		ram_block1a_7.port_a_data_out_clock = "clock0",
		ram_block1a_7.port_a_data_width = 1,
		ram_block1a_7.port_a_first_address = 0,
		ram_block1a_7.port_a_first_bit_number = 7,
		ram_block1a_7.port_a_last_address = 1023,
		ram_block1a_7.port_a_logical_ram_depth = 1024,
		ram_block1a_7.port_a_logical_ram_width = 10,
		ram_block1a_7.ram_block_type = "M10K",
		ram_block1a_7.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_8
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_8portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_8.clk0_core_clock_enable = "none",
		ram_block1a_8.clk0_input_clock_enable = "none",
		ram_block1a_8.clk0_output_clock_enable = "none",
		ram_block1a_8.connectivity_checking = "OFF",
		ram_block1a_8.init_file = "../lib/rom_data.mif",
		ram_block1a_8.init_file_layout = "port_a",
		ram_block1a_8.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_8.mem_init0 = 1024'hFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFE0000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000,
		ram_block1a_8.operation_mode = "rom",
		ram_block1a_8.port_a_address_clear = "none",
		ram_block1a_8.port_a_address_width = 10,
		ram_block1a_8.port_a_data_out_clear = "none",
		ram_block1a_8.port_a_data_out_clock = "clock0",
		ram_block1a_8.port_a_data_width = 1,
		ram_block1a_8.port_a_first_address = 0,
		ram_block1a_8.port_a_first_bit_number = 8,
		ram_block1a_8.port_a_last_address = 1023,
		ram_block1a_8.port_a_logical_ram_depth = 1024,
		ram_block1a_8.port_a_logical_ram_width = 10,
		ram_block1a_8.ram_block_type = "M10K",
		ram_block1a_8.lpm_type = "cyclonev_ram_block";
	cyclonev_ram_block   ram_block1a_9
	( 
	.clk0(clock0),
	.dftout(),
	.eccstatus(),
	.portaaddr({address_a_wire[9:0]}),
	.portadataout(wire_ram_block1a_9portadataout[0:0]),
	.portare(1'b1),
	.portbdataout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portadatain({1{1'b0}}),
	.portawe(1'b0),
	.portbaddr({1{1'b0}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}}),
	.portbdatain({1{1'b0}}),
	.portbre(1'b1),
	.portbwe(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.nerror(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block1a_9.clk0_core_clock_enable = "none",
		ram_block1a_9.clk0_input_clock_enable = "none",
		ram_block1a_9.clk0_output_clock_enable = "none",
		ram_block1a_9.connectivity_checking = "OFF",
		ram_block1a_9.init_file = "../lib/rom_data.mif",
		ram_block1a_9.init_file_layout = "port_a",
		ram_block1a_9.logical_ram_name = "ALTSYNCRAM",
		ram_block1a_9.mem_init0 = 1024'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF,
		ram_block1a_9.operation_mode = "rom",
		ram_block1a_9.port_a_address_clear = "none",
		ram_block1a_9.port_a_address_width = 10,
		ram_block1a_9.port_a_data_out_clear = "none",
		ram_block1a_9.port_a_data_out_clock = "clock0",
		ram_block1a_9.port_a_data_width = 1,
		ram_block1a_9.port_a_first_address = 0,
		ram_block1a_9.port_a_first_bit_number = 9,
		ram_block1a_9.port_a_last_address = 1023,
		ram_block1a_9.port_a_logical_ram_depth = 1024,
		ram_block1a_9.port_a_logical_ram_width = 10,
		ram_block1a_9.ram_block_type = "M10K",
		ram_block1a_9.lpm_type = "cyclonev_ram_block";
	assign
		address_a_wire = address_a,
		q_a = {wire_ram_block1a_9portadataout[0], wire_ram_block1a_8portadataout[0], wire_ram_block1a_7portadataout[0], wire_ram_block1a_6portadataout[0], wire_ram_block1a_5portadataout[0], wire_ram_block1a_4portadataout[0], wire_ram_block1a_3portadataout[0], wire_ram_block1a_2portadataout[0], wire_ram_block1a_1portadataout[0], wire_ram_block1a_0portadataout[0]};
endmodule //rom_altsyncram
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module rom (
	address,
	clock,
	q)/* synthesis synthesis_clearbox = 1 */;

	input	[9:0]  address;
	input	  clock;
	output	[9:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [9:0] sub_wire0;
	wire [9:0] q = sub_wire0[9:0];

	rom_altsyncram	rom_altsyncram_component (
				.address_a (address),
				.clock0 (clock),
				.q_a (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
// Retrieval info: PRIVATE: AclrAddr NUMERIC "0"
// Retrieval info: PRIVATE: AclrByte NUMERIC "0"
// Retrieval info: PRIVATE: AclrOutput NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
// Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: Clken NUMERIC "0"
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
// Retrieval info: PRIVATE: MIFfilename STRING "../lib/rom_data.mif"
// Retrieval info: PRIVATE: NUMWORDS_A NUMERIC "1024"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2"
// Retrieval info: PRIVATE: RegAddr NUMERIC "1"
// Retrieval info: PRIVATE: RegOutput NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SingleClock NUMERIC "1"
// Retrieval info: PRIVATE: UseDQRAM NUMERIC "0"
// Retrieval info: PRIVATE: WidthAddr NUMERIC "10"
// Retrieval info: PRIVATE: WidthData NUMERIC "10"
// Retrieval info: PRIVATE: rden NUMERIC "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: ADDRESS_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
// Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_A STRING "BYPASS"
// Retrieval info: CONSTANT: INIT_FILE STRING "../lib/rom_data.mif"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "1024"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "ROM"
// Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: OUTDATA_REG_A STRING "CLOCK0"
// Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M10K"
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "10"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "10"
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
// Retrieval info: USED_PORT: address 0 0 10 0 INPUT NODEFVAL "address[9..0]"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC "clock"
// Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL "q[9..0]"
// Retrieval info: CONNECT: @address_a 0 0 10 0 address 0 0 10 0
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: q 0 0 10 0 @q_a 0 0 10 0
// Retrieval info: GEN_FILE: TYPE_NORMAL rom.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL rom_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf
