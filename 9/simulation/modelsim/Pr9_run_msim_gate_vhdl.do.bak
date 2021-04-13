transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Pr9.vho}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/9/simulation/modelsim/Password.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Pr9_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Password_vhd_tst

add wave *
view structure
view signals
run -all
