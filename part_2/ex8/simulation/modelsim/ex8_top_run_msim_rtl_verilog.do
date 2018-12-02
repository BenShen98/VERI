transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Imperial\ College\ London/uni/year2/EELab/VERI/part_2/lib {E:/OneDrive - Imperial College London/uni/year2/EELab/VERI/part_2/lib/hex_2_7seg.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Imperial\ College\ London/uni/year2/EELab/VERI/part_2/lib {E:/OneDrive - Imperial College London/uni/year2/EELab/VERI/part_2/lib/bin2bcd_16.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Imperial\ College\ London/uni/year2/EELab/VERI/part_2/lib {E:/OneDrive - Imperial College London/uni/year2/EELab/VERI/part_2/lib/add3_ge5.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Imperial\ College\ London/uni/year2/EELab/VERI/part_2/ex8 {E:/OneDrive - Imperial College London/uni/year2/EELab/VERI/part_2/ex8/clkdiv_16.v}
vlog -vlog01compat -work work +incdir+E:/OneDrive\ -\ Imperial\ College\ London/uni/year2/EELab/VERI/part_2/ex8 {E:/OneDrive - Imperial College London/uni/year2/EELab/VERI/part_2/ex8/ex8_top.v}

