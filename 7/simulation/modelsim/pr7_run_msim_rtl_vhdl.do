transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/alu.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/U_Func_Log.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/Sumador1Bit.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/Sumador_Restador5bits.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/mux5bits3to1.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/mux5bits.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/mux.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/Multiplicador5Bits_C2.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/Control.vhd}
vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/CarryLookAhead.vhd}

vcom -93 -work work {C:/Users/ferna/Documents/GitHub/ED_LAB/7/simulation/modelsim/alu.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  alu_vhd_tst

add wave *
view structure
view signals
run -all
