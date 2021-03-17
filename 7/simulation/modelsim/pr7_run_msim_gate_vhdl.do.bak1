transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {pr7.vho}

vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/simulation/modelsim/alu.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=pr7_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  alu_vhd_tst

add wave *
view structure
view signals
run -all
