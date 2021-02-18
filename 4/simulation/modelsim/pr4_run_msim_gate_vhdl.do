transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {pr4.vho}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/Pr4/simulation/modelsim/pr4.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=pr4_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  pr4_vhd_tst

add wave *
view structure
view signals
run -all
