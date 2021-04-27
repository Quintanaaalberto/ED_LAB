transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/UnidadControl.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/Microondas.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/datapath.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/ContAscM50.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/ContadorDescM10.vhd}
vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/ContadorDescM6.vhd}

vcom -93 -work work {C:/Users/quint/OneDrive/Documents/ICAI/ICAI_ElectronicaDigital/GitHub/ED_LAB/p11_sim/simulation/modelsim/Microondas.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  microondas_vhd_tst

add wave *
view structure
view signals
run -all
