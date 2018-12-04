transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+Z:/Dropbox/_My\ Documents/E2\ Digital/adc_dac {Z:/Dropbox/_My Documents/E2 Digital/adc_dac/spi2adc.v}

