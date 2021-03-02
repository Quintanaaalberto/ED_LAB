transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica6_Dec.vho}

vcom -93 -work work {C:/Users/Joaquin Hijo/Desktop/ELECTRONICA DIGITAL/LAB/Practica6_Dec/simulation/modelsim/Practica6_Dec.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Practica6_Dec_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Practica6_Dec_vhd_tst

add wave *
view structure
view signals
run -all
