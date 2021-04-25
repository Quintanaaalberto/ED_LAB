transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/10/ControlParking.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/10/DetectorFlanco.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/10/BinA7Seg.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/10/Practica10.vhd}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/10/simulation/modelsim/ControlParking.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  ControlParking_vhd_tst

add wave *
view structure
view signals
run -all
