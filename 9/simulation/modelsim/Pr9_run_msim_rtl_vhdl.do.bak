transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/9/Password.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/9/detectorflanco.vhd}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/9/simulation/modelsim/Password.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Password_vhd_tst

add wave *
view structure
view signals
run -all
