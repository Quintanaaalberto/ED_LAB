transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Joaquin Hijo/Desktop/ELECTRONICA DIGITAL/LAB/Github/ED_LAB/8/Practica8/DetectorFlanco.vhd}

vcom -93 -work work {C:/Users/Joaquin Hijo/Desktop/ELECTRONICA DIGITAL/LAB/Github/ED_LAB/8/Practica8/simulation/modelsim/DetectorFlanco.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  DetectorFlanco_vhd_tst

add wave *
view structure
view signals
run -all
