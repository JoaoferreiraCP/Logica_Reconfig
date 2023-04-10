transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Joao/Documents/GitHub/Logica_Reconfig/Circuito_subtrator/circuito_subtrator.vhd}

vcom -93 -work work {C:/Users/Joao/Documents/GitHub/Logica_Reconfig/Circuito_subtrator/tb_circuito_subtrator.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_circuito_subtrator

add wave *
view structure
view signals
run 160 ns
