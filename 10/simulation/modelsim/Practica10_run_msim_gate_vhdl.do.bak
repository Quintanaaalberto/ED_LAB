transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica10.vho}

vcom -93 -work work {D:/p10/simulation/modelsim/ControlParking.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Practica10_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  ControlParking_vhd_tst

add wave *
view structure
view signals
run -all
