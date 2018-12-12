transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/VERI/lib/sinwave {H:/VERI/lib/sinwave/rom.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib {H:/VERI/lib/clktick_16.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib/interface {H:/VERI/lib/interface/spi2dac.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib/interface {H:/VERI/lib/interface/pwm.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib/7seg {H:/VERI/lib/7seg/hex_to_7seg.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib/7seg {H:/VERI/lib/7seg/bin2bcd_16.v}
vlog -vlog01compat -work work +incdir+H:/VERI/lib/7seg {H:/VERI/lib/7seg/add3_ge5.v}
vlog -vlog01compat -work work +incdir+H:/VERI/part_3/ex14 {H:/VERI/part_3/ex14/ex14_top.v}
vlog -vlog01compat -work work +incdir+H:/VERI/part_3/ex14 {H:/VERI/part_3/ex14/mul_10x14.v}

