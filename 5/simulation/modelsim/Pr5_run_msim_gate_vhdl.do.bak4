transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Pr5.vho}

vcom -93 -work work {C:/Users/Joaquin Hijo/Desktop/ELECTRONICA DIGITAL/LAB/Github/ED_LAB/5/simulation/modelsim/Sumador5Bits.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Pr5_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Sumador5Bits_vhd_tst

add wave *
view structure
view signals
run -all
