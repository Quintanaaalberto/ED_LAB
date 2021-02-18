-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/16/2021 19:42:31"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pr4 IS
    PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	Abigger : OUT std_logic;
	Asmaller : OUT std_logic;
	Aequal : OUT std_logic;
	aa : OUT std_logic;
	ab : OUT std_logic;
	ac : OUT std_logic;
	ad : OUT std_logic;
	ae : OUT std_logic;
	af : OUT std_logic;
	ag : OUT std_logic;
	ba : OUT std_logic;
	bb : OUT std_logic;
	bc : OUT std_logic;
	bd : OUT std_logic;
	be : OUT std_logic;
	bf : OUT std_logic;
	bg : OUT std_logic
	);
END pr4;

-- Design Ports Information
-- Abigger	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Asmaller	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Aequal	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aa	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ab	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ac	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ad	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ae	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- af	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ag	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ba	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bb	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bc	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bd	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- be	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bf	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bg	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A0	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B0	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A2	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A3	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B3	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B2	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pr4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_Abigger : std_logic;
SIGNAL ww_Asmaller : std_logic;
SIGNAL ww_Aequal : std_logic;
SIGNAL ww_aa : std_logic;
SIGNAL ww_ab : std_logic;
SIGNAL ww_ac : std_logic;
SIGNAL ww_ad : std_logic;
SIGNAL ww_ae : std_logic;
SIGNAL ww_af : std_logic;
SIGNAL ww_ag : std_logic;
SIGNAL ww_ba : std_logic;
SIGNAL ww_bb : std_logic;
SIGNAL ww_bc : std_logic;
SIGNAL ww_bd : std_logic;
SIGNAL ww_be : std_logic;
SIGNAL ww_bf : std_logic;
SIGNAL ww_bg : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \B0~combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|LessThan0~0_combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \i1|LessThan0~1_combout\ : std_logic;
SIGNAL \i1|LessThan0~2_combout\ : std_logic;
SIGNAL \i1|LessThan1~0_combout\ : std_logic;
SIGNAL \i1|LessThan1~1_combout\ : std_logic;
SIGNAL \i1|LessThan1~2_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|Mux4~0_combout\ : std_logic;
SIGNAL \i2|Mux5~0_combout\ : std_logic;
SIGNAL \i2|Mux6~0_combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \i3|Mux1~0_combout\ : std_logic;
SIGNAL \i3|Mux2~0_combout\ : std_logic;
SIGNAL \i3|Mux3~0_combout\ : std_logic;
SIGNAL \i3|Mux4~0_combout\ : std_logic;
SIGNAL \i3|Mux5~0_combout\ : std_logic;
SIGNAL \i3|Mux6~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
Abigger <= ww_Abigger;
Asmaller <= ww_Asmaller;
Aequal <= ww_Aequal;
aa <= ww_aa;
ab <= ww_ab;
ac <= ww_ac;
ad <= ww_ad;
ae <= ww_ae;
af <= ww_af;
ag <= ww_ag;
ba <= ww_ba;
bb <= ww_bb;
bc <= ww_bc;
bd <= ww_bd;
be <= ww_be;
bf <= ww_bf;
bg <= ww_bg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i3|ALT_INV_Mux6~0_combout\ <= NOT \i3|Mux6~0_combout\;
\i2|ALT_INV_Mux6~0_combout\ <= NOT \i2|Mux6~0_combout\;

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B0,
	combout => \B0~combout\);

-- Location: LCCOMB_X1_Y13_N28
\i1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (\B1~combout\ & (\A1~combout\ & (\A0~combout\ $ (!\B0~combout\)))) # (!\B1~combout\ & (!\A1~combout\ & (\A0~combout\ $ (!\B0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \A1~combout\,
	datad => \B0~combout\,
	combout => \i1|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y13_N8
\i1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~0_combout\ = (\A0~combout\ & (((!\B1~combout\ & \A1~combout\)) # (!\B0~combout\))) # (!\A0~combout\ & (!\B1~combout\ & (\A1~combout\ & !\B0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \A1~combout\,
	datad => \B0~combout\,
	combout => \i1|LessThan0~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B3,
	combout => \B3~combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: LCCOMB_X1_Y13_N2
\i1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~1_combout\ = (\B2~combout\ & (!\B3~combout\ & (\A3~combout\ & \A2~combout\))) # (!\B2~combout\ & ((\A2~combout\) # ((!\B3~combout\ & \A3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \B3~combout\,
	datac => \A3~combout\,
	datad => \A2~combout\,
	combout => \i1|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y13_N14
\i1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~2_combout\ = (\i1|LessThan0~0_combout\) # ((\i1|Equal0~0_combout\ & \i1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~0_combout\,
	datac => \i1|LessThan0~0_combout\,
	datad => \i1|LessThan0~1_combout\,
	combout => \i1|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y13_N24
\i1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~0_combout\ = (\A0~combout\ & (\B1~combout\ & (!\A1~combout\ & \B0~combout\))) # (!\A0~combout\ & ((\B0~combout\) # ((\B1~combout\ & !\A1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \A1~combout\,
	datad => \B0~combout\,
	combout => \i1|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\i1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~1_combout\ = (\B2~combout\ & (((\B3~combout\ & !\A3~combout\)) # (!\A2~combout\))) # (!\B2~combout\ & (\B3~combout\ & (!\A3~combout\ & !\A2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \B3~combout\,
	datac => \A3~combout\,
	datad => \A2~combout\,
	combout => \i1|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y13_N20
\i1|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~2_combout\ = (\i1|LessThan1~0_combout\) # ((\i1|Equal0~0_combout\ & \i1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~0_combout\,
	datac => \i1|LessThan1~0_combout\,
	datad => \i1|LessThan1~1_combout\,
	combout => \i1|LessThan1~2_combout\);

-- Location: LCCOMB_X1_Y13_N30
\i1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (\B2~combout\ & (\A2~combout\ & (\B3~combout\ $ (!\A3~combout\)))) # (!\B2~combout\ & (!\A2~combout\ & (\B3~combout\ $ (!\A3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \B3~combout\,
	datac => \A3~combout\,
	datad => \A2~combout\,
	combout => \i1|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y13_N16
\i1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = (\i1|Equal0~0_combout\ & \i1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~0_combout\,
	datad => \i1|Equal0~1_combout\,
	combout => \i1|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y18_N16
\i2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\A1~combout\ & (\A3~combout\ $ (\A0~combout\ $ (!\A2~combout\)))) # (!\A1~combout\ & (\A3~combout\ & (\A0~combout\ $ (!\A2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\i2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\A1~combout\ & ((\A3~combout\) # (\A0~combout\ $ (\A2~combout\)))) # (!\A1~combout\ & (\A3~combout\ & (\A0~combout\ & \A2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\i2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\A1~combout\ & ((\A2~combout\ & (\A3~combout\)) # (!\A2~combout\ & ((\A0~combout\))))) # (!\A1~combout\ & (!\A3~combout\ & (!\A0~combout\ & \A2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\i2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\A0~combout\ & ((\A1~combout\ & (\A3~combout\)) # (!\A1~combout\ & (!\A3~combout\ & \A2~combout\)))) # (!\A0~combout\ & (!\A2~combout\ & (\A1~combout\ $ (\A3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N8
\i2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\A0~combout\ & (((\A3~combout\ & !\A2~combout\)))) # (!\A0~combout\ & ((\A1~combout\ & ((!\A2~combout\))) # (!\A1~combout\ & (\A3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\i2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\A1~combout\ & (\A0~combout\ & (\A3~combout\ $ (\A2~combout\)))) # (!\A1~combout\ & (!\A0~combout\ & ((\A3~combout\) # (\A2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A3~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\i2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\A2~combout\) # (\A1~combout\ $ (\A0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datac => \A0~combout\,
	datad => \A2~combout\,
	combout => \i2|Mux6~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: LCCOMB_X1_Y13_N10
\i3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\B1~combout\ & (\B0~combout\ $ (\B2~combout\ $ (!\B3~combout\)))) # (!\B1~combout\ & (\B3~combout\ & (\B0~combout\ $ (!\B2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\i3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux1~0_combout\ = (\B1~combout\ & ((\B3~combout\) # (\B0~combout\ $ (\B2~combout\)))) # (!\B1~combout\ & (\B0~combout\ & (\B2~combout\ & \B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\i3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux2~0_combout\ = (\B1~combout\ & ((\B2~combout\ & ((\B3~combout\))) # (!\B2~combout\ & (\B0~combout\)))) # (!\B1~combout\ & (!\B0~combout\ & (\B2~combout\ & !\B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\i3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux3~0_combout\ = (\B0~combout\ & ((\B1~combout\ & ((\B3~combout\))) # (!\B1~combout\ & (\B2~combout\ & !\B3~combout\)))) # (!\B0~combout\ & (!\B2~combout\ & (\B1~combout\ $ (\B3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\i3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux4~0_combout\ = (\B0~combout\ & (((!\B2~combout\ & \B3~combout\)))) # (!\B0~combout\ & ((\B1~combout\ & (!\B2~combout\)) # (!\B1~combout\ & ((\B3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N4
\i3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux5~0_combout\ = (\B1~combout\ & (\B0~combout\ & (\B2~combout\ $ (\B3~combout\)))) # (!\B1~combout\ & (!\B0~combout\ & ((\B2~combout\) # (\B3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B0~combout\,
	datac => \B2~combout\,
	datad => \B3~combout\,
	combout => \i3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\i3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux6~0_combout\ = (\B2~combout\) # (\B1~combout\ $ (\B0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datac => \B2~combout\,
	datad => \B0~combout\,
	combout => \i3|Mux6~0_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Abigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Abigger);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Asmaller~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Asmaller);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Aequal~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Aequal);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aa~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aa);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ab~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ab);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ac~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ac);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ad~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ad);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ae~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ae);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\af~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_af);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ag);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ba~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ba);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bb~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bb);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bc);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bd);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\be~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_be);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bf~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bf);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bg);
END structure;


