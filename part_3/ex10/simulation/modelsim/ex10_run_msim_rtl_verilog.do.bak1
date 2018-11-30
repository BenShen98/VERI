transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/VERI/part_3/lib {H:/VERI/part_3/lib/spi2dac.v}
vlog -vlog01compat -work work +incdir+H:/VERI/part_3/lib {H:/VERI/part_3/lib/divclk.v}
vlog -vlog01compat -work work +incdir+H:/VERI/part_3/ex10 {H:/VERI/part_3/ex10/ex10_top.v}

