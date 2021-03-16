transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica6.vho}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/6/Practica6/simulation/modelsim/Multiplicador5Bits.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Practica6_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Multiplicador5Bits_vhd_tst

add wave *
view structure
view signals
run -all
