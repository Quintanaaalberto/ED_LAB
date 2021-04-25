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

-- DATE "04/25/2021 18:43:37"

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

ENTITY 	Practica10 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	c_in : IN std_logic;
	c_out : IN std_logic;
	max_c : IN std_logic_vector(7 DOWNTO 0);
	d0 : OUT std_logic_vector(6 DOWNTO 0);
	d1 : OUT std_logic_vector(6 DOWNTO 0);
	libre : OUT std_logic;
	ocupado : OUT std_logic
	);
END Practica10;

-- Design Ports Information
-- d0[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d0[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[4]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[5]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d1[6]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- libre	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ocupado	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- max_c[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_c[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c_out	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c_in	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_c_in : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_max_c : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_libre : std_logic;
SIGNAL ww_ocupado : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i1|contador[0]~8_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \c_in~combout\ : std_logic;
SIGNAL \i1|i1|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \i1|i1|est_act.E1~regout\ : std_logic;
SIGNAL \i1|i1|Selector2~0_combout\ : std_logic;
SIGNAL \i1|i1|est_act.E2~regout\ : std_logic;
SIGNAL \i1|subirbajar~0_combout\ : std_logic;
SIGNAL \i1|contador[3]~19\ : std_logic;
SIGNAL \i1|contador[4]~20_combout\ : std_logic;
SIGNAL \i1|contador[4]~21\ : std_logic;
SIGNAL \i1|contador[5]~22_combout\ : std_logic;
SIGNAL \i1|contador[5]~23\ : std_logic;
SIGNAL \i1|contador[6]~24_combout\ : std_logic;
SIGNAL \i1|contador[6]~25\ : std_logic;
SIGNAL \i1|contador[7]~26_combout\ : std_logic;
SIGNAL \i1|LessThan0~1_cout\ : std_logic;
SIGNAL \i1|LessThan0~3_cout\ : std_logic;
SIGNAL \i1|LessThan0~5_cout\ : std_logic;
SIGNAL \i1|LessThan0~7_cout\ : std_logic;
SIGNAL \i1|LessThan0~9_cout\ : std_logic;
SIGNAL \i1|LessThan0~11_cout\ : std_logic;
SIGNAL \i1|LessThan0~13_cout\ : std_logic;
SIGNAL \i1|LessThan0~14_combout\ : std_logic;
SIGNAL \c_out~combout\ : std_logic;
SIGNAL \i1|i2|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \i1|i2|est_act.E1~regout\ : std_logic;
SIGNAL \i1|i2|Selector2~0_combout\ : std_logic;
SIGNAL \i1|i2|est_act.E2~regout\ : std_logic;
SIGNAL \i1|contador[3]~11_combout\ : std_logic;
SIGNAL \i1|contador[3]~10_combout\ : std_logic;
SIGNAL \i1|contador[3]~12_combout\ : std_logic;
SIGNAL \i1|contador[3]~13_combout\ : std_logic;
SIGNAL \i1|contador[0]~9\ : std_logic;
SIGNAL \i1|contador[1]~14_combout\ : std_logic;
SIGNAL \i1|contador[1]~15\ : std_logic;
SIGNAL \i1|contador[2]~16_combout\ : std_logic;
SIGNAL \i1|contador[2]~17\ : std_logic;
SIGNAL \i1|contador[3]~18_combout\ : std_logic;
SIGNAL \i2|Mux6~0_combout\ : std_logic;
SIGNAL \i2|Mux5~0_combout\ : std_logic;
SIGNAL \i2|Mux4~0_combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i3|Mux6~0_combout\ : std_logic;
SIGNAL \i3|Mux5~0_combout\ : std_logic;
SIGNAL \i3|Mux4~0_combout\ : std_logic;
SIGNAL \i3|Mux3~0_combout\ : std_logic;
SIGNAL \i3|Mux2~0_combout\ : std_logic;
SIGNAL \i3|Mux1~0_combout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|Equal0~3_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|Equal0~4_combout\ : std_logic;
SIGNAL \i1|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \max_c~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \i3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_c_in <= c_in;
ww_c_out <= c_out;
ww_max_c <= max_c;
d0 <= ww_d0;
d1 <= ww_d1;
libre <= ww_libre;
ocupado <= ww_ocupado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\i1|ALT_INV_Equal0~4_combout\ <= NOT \i1|Equal0~4_combout\;
\i3|ALT_INV_Mux6~0_combout\ <= NOT \i3|Mux6~0_combout\;
\i2|ALT_INV_Mux6~0_combout\ <= NOT \i2|Mux6~0_combout\;

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[3]~I\ : cycloneii_io
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
	padio => ww_max_c(3),
	combout => \max_c~combout\(3));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[6]~I\ : cycloneii_io
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
	padio => ww_max_c(6),
	combout => \max_c~combout\(6));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y14_N16
\i1|contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[0]~8_combout\ = \i1|contador\(0) $ (VCC)
-- \i1|contador[0]~9\ = CARRY(\i1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(0),
	datad => VCC,
	combout => \i1|contador[0]~8_combout\,
	cout => \i1|contador[0]~9\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c_in~I\ : cycloneii_io
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
	padio => ww_c_in,
	combout => \c_in~combout\);

-- Location: LCCOMB_X10_Y14_N26
\i1|i1|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|i1|est_act.E1~feeder_combout\ = \c_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in~combout\,
	combout => \i1|i1|est_act.E1~feeder_combout\);

-- Location: LCFF_X10_Y14_N27
\i1|i1|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|i1|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|i1|est_act.E1~regout\);

-- Location: LCCOMB_X10_Y14_N22
\i1|i1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|i1|Selector2~0_combout\ = (\i1|i1|est_act.E1~regout\ & !\c_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|i1|est_act.E1~regout\,
	datad => \c_in~combout\,
	combout => \i1|i1|Selector2~0_combout\);

-- Location: LCFF_X10_Y14_N23
\i1|i1|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|i1|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|i1|est_act.E2~regout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[7]~I\ : cycloneii_io
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
	padio => ww_max_c(7),
	combout => \max_c~combout\(7));

-- Location: LCCOMB_X10_Y14_N14
\i1|subirbajar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|subirbajar~0_combout\ = (\i1|LessThan0~14_combout\ & \i1|i1|est_act.E2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|LessThan0~14_combout\,
	datad => \i1|i1|est_act.E2~regout\,
	combout => \i1|subirbajar~0_combout\);

-- Location: LCCOMB_X11_Y14_N22
\i1|contador[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~18_combout\ = (\i1|subirbajar~0_combout\ & ((\i1|contador\(3) & (!\i1|contador[2]~17\)) # (!\i1|contador\(3) & ((\i1|contador[2]~17\) # (GND))))) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(3) & (\i1|contador[2]~17\ & VCC)) # 
-- (!\i1|contador\(3) & (!\i1|contador[2]~17\))))
-- \i1|contador[3]~19\ = CARRY((\i1|subirbajar~0_combout\ & ((!\i1|contador[2]~17\) # (!\i1|contador\(3)))) # (!\i1|subirbajar~0_combout\ & (!\i1|contador\(3) & !\i1|contador[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(3),
	datad => VCC,
	cin => \i1|contador[2]~17\,
	combout => \i1|contador[3]~18_combout\,
	cout => \i1|contador[3]~19\);

-- Location: LCCOMB_X11_Y14_N24
\i1|contador[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[4]~20_combout\ = ((\i1|subirbajar~0_combout\ $ (\i1|contador\(4) $ (\i1|contador[3]~19\)))) # (GND)
-- \i1|contador[4]~21\ = CARRY((\i1|subirbajar~0_combout\ & (\i1|contador\(4) & !\i1|contador[3]~19\)) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(4)) # (!\i1|contador[3]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(4),
	datad => VCC,
	cin => \i1|contador[3]~19\,
	combout => \i1|contador[4]~20_combout\,
	cout => \i1|contador[4]~21\);

-- Location: LCFF_X11_Y14_N25
\i1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[4]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(4));

-- Location: LCCOMB_X11_Y14_N26
\i1|contador[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[5]~22_combout\ = (\i1|subirbajar~0_combout\ & ((\i1|contador\(5) & (!\i1|contador[4]~21\)) # (!\i1|contador\(5) & ((\i1|contador[4]~21\) # (GND))))) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(5) & (\i1|contador[4]~21\ & VCC)) # 
-- (!\i1|contador\(5) & (!\i1|contador[4]~21\))))
-- \i1|contador[5]~23\ = CARRY((\i1|subirbajar~0_combout\ & ((!\i1|contador[4]~21\) # (!\i1|contador\(5)))) # (!\i1|subirbajar~0_combout\ & (!\i1|contador\(5) & !\i1|contador[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(5),
	datad => VCC,
	cin => \i1|contador[4]~21\,
	combout => \i1|contador[5]~22_combout\,
	cout => \i1|contador[5]~23\);

-- Location: LCFF_X11_Y14_N27
\i1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[5]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(5));

-- Location: LCCOMB_X11_Y14_N28
\i1|contador[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[6]~24_combout\ = ((\i1|subirbajar~0_combout\ $ (\i1|contador\(6) $ (\i1|contador[5]~23\)))) # (GND)
-- \i1|contador[6]~25\ = CARRY((\i1|subirbajar~0_combout\ & (\i1|contador\(6) & !\i1|contador[5]~23\)) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(6)) # (!\i1|contador[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(6),
	datad => VCC,
	cin => \i1|contador[5]~23\,
	combout => \i1|contador[6]~24_combout\,
	cout => \i1|contador[6]~25\);

-- Location: LCFF_X11_Y14_N29
\i1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[6]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(6));

-- Location: LCCOMB_X11_Y14_N30
\i1|contador[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[7]~26_combout\ = \i1|contador\(7) $ (\i1|contador[6]~25\ $ (!\i1|subirbajar~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(7),
	datad => \i1|subirbajar~0_combout\,
	cin => \i1|contador[6]~25\,
	combout => \i1|contador[7]~26_combout\);

-- Location: LCFF_X11_Y14_N31
\i1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[7]~26_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(7));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[4]~I\ : cycloneii_io
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
	padio => ww_max_c(4),
	combout => \max_c~combout\(4));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[2]~I\ : cycloneii_io
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
	padio => ww_max_c(2),
	combout => \max_c~combout\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[0]~I\ : cycloneii_io
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
	padio => ww_max_c(0),
	combout => \max_c~combout\(0));

-- Location: LCCOMB_X11_Y14_N0
\i1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~1_cout\ = CARRY((!\i1|contador\(0) & \max_c~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(0),
	datab => \max_c~combout\(0),
	datad => VCC,
	cout => \i1|LessThan0~1_cout\);

-- Location: LCCOMB_X11_Y14_N2
\i1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~3_cout\ = CARRY((\max_c~combout\(1) & (\i1|contador\(1) & !\i1|LessThan0~1_cout\)) # (!\max_c~combout\(1) & ((\i1|contador\(1)) # (!\i1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(1),
	datab => \i1|contador\(1),
	datad => VCC,
	cin => \i1|LessThan0~1_cout\,
	cout => \i1|LessThan0~3_cout\);

-- Location: LCCOMB_X11_Y14_N4
\i1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~5_cout\ = CARRY((\i1|contador\(2) & (\max_c~combout\(2) & !\i1|LessThan0~3_cout\)) # (!\i1|contador\(2) & ((\max_c~combout\(2)) # (!\i1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(2),
	datab => \max_c~combout\(2),
	datad => VCC,
	cin => \i1|LessThan0~3_cout\,
	cout => \i1|LessThan0~5_cout\);

-- Location: LCCOMB_X11_Y14_N6
\i1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~7_cout\ = CARRY((\max_c~combout\(3) & (\i1|contador\(3) & !\i1|LessThan0~5_cout\)) # (!\max_c~combout\(3) & ((\i1|contador\(3)) # (!\i1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(3),
	datab => \i1|contador\(3),
	datad => VCC,
	cin => \i1|LessThan0~5_cout\,
	cout => \i1|LessThan0~7_cout\);

-- Location: LCCOMB_X11_Y14_N8
\i1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~9_cout\ = CARRY((\i1|contador\(4) & (\max_c~combout\(4) & !\i1|LessThan0~7_cout\)) # (!\i1|contador\(4) & ((\max_c~combout\(4)) # (!\i1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(4),
	datab => \max_c~combout\(4),
	datad => VCC,
	cin => \i1|LessThan0~7_cout\,
	cout => \i1|LessThan0~9_cout\);

-- Location: LCCOMB_X11_Y14_N10
\i1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~11_cout\ = CARRY((\max_c~combout\(5) & (\i1|contador\(5) & !\i1|LessThan0~9_cout\)) # (!\max_c~combout\(5) & ((\i1|contador\(5)) # (!\i1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(5),
	datab => \i1|contador\(5),
	datad => VCC,
	cin => \i1|LessThan0~9_cout\,
	cout => \i1|LessThan0~11_cout\);

-- Location: LCCOMB_X11_Y14_N12
\i1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~13_cout\ = CARRY((\max_c~combout\(6) & ((!\i1|LessThan0~11_cout\) # (!\i1|contador\(6)))) # (!\max_c~combout\(6) & (!\i1|contador\(6) & !\i1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(6),
	datab => \i1|contador\(6),
	datad => VCC,
	cin => \i1|LessThan0~11_cout\,
	cout => \i1|LessThan0~13_cout\);

-- Location: LCCOMB_X11_Y14_N14
\i1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~14_combout\ = (\max_c~combout\(7) & ((\i1|LessThan0~13_cout\) # (!\i1|contador\(7)))) # (!\max_c~combout\(7) & (\i1|LessThan0~13_cout\ & !\i1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \max_c~combout\(7),
	datad => \i1|contador\(7),
	cin => \i1|LessThan0~13_cout\,
	combout => \i1|LessThan0~14_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c_out~I\ : cycloneii_io
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
	padio => ww_c_out,
	combout => \c_out~combout\);

-- Location: LCCOMB_X10_Y14_N4
\i1|i2|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|i2|est_act.E1~feeder_combout\ = \c_out~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_out~combout\,
	combout => \i1|i2|est_act.E1~feeder_combout\);

-- Location: LCFF_X10_Y14_N5
\i1|i2|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|i2|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|i2|est_act.E1~regout\);

-- Location: LCCOMB_X10_Y14_N2
\i1|i2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|i2|Selector2~0_combout\ = (\i1|i2|est_act.E1~regout\ & !\c_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|i2|est_act.E1~regout\,
	datad => \c_out~combout\,
	combout => \i1|i2|Selector2~0_combout\);

-- Location: LCFF_X10_Y14_N3
\i1|i2|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|i2|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|i2|est_act.E2~regout\);

-- Location: LCCOMB_X10_Y14_N8
\i1|contador[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~11_combout\ = (!\i1|contador\(5) & (!\i1|contador\(7) & (!\i1|contador\(4) & !\i1|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(5),
	datab => \i1|contador\(7),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i1|contador[3]~11_combout\);

-- Location: LCCOMB_X10_Y14_N30
\i1|contador[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~10_combout\ = (!\i1|contador\(0) & (!\i1|contador\(2) & (!\i1|contador\(3) & !\i1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(0),
	datab => \i1|contador\(2),
	datac => \i1|contador\(3),
	datad => \i1|contador\(1),
	combout => \i1|contador[3]~10_combout\);

-- Location: LCCOMB_X10_Y14_N12
\i1|contador[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~12_combout\ = ((\i1|contador[3]~11_combout\ & \i1|contador[3]~10_combout\)) # (!\i1|i2|est_act.E2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|i2|est_act.E2~regout\,
	datac => \i1|contador[3]~11_combout\,
	datad => \i1|contador[3]~10_combout\,
	combout => \i1|contador[3]~12_combout\);

-- Location: LCCOMB_X10_Y14_N0
\i1|contador[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~13_combout\ = ((\i1|i1|est_act.E2~regout\ & \i1|LessThan0~14_combout\)) # (!\i1|contador[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|i1|est_act.E2~regout\,
	datac => \i1|LessThan0~14_combout\,
	datad => \i1|contador[3]~12_combout\,
	combout => \i1|contador[3]~13_combout\);

-- Location: LCFF_X11_Y14_N17
\i1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[0]~8_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(0));

-- Location: LCCOMB_X11_Y14_N18
\i1|contador[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[1]~14_combout\ = (\i1|subirbajar~0_combout\ & ((\i1|contador\(1) & (!\i1|contador[0]~9\)) # (!\i1|contador\(1) & ((\i1|contador[0]~9\) # (GND))))) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(1) & (\i1|contador[0]~9\ & VCC)) # 
-- (!\i1|contador\(1) & (!\i1|contador[0]~9\))))
-- \i1|contador[1]~15\ = CARRY((\i1|subirbajar~0_combout\ & ((!\i1|contador[0]~9\) # (!\i1|contador\(1)))) # (!\i1|subirbajar~0_combout\ & (!\i1|contador\(1) & !\i1|contador[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(1),
	datad => VCC,
	cin => \i1|contador[0]~9\,
	combout => \i1|contador[1]~14_combout\,
	cout => \i1|contador[1]~15\);

-- Location: LCFF_X11_Y14_N19
\i1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[1]~14_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(1));

-- Location: LCCOMB_X11_Y14_N20
\i1|contador[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[2]~16_combout\ = ((\i1|subirbajar~0_combout\ $ (\i1|contador\(2) $ (\i1|contador[1]~15\)))) # (GND)
-- \i1|contador[2]~17\ = CARRY((\i1|subirbajar~0_combout\ & (\i1|contador\(2) & !\i1|contador[1]~15\)) # (!\i1|subirbajar~0_combout\ & ((\i1|contador\(2)) # (!\i1|contador[1]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|subirbajar~0_combout\,
	datab => \i1|contador\(2),
	datad => VCC,
	cin => \i1|contador[1]~15\,
	combout => \i1|contador[2]~16_combout\,
	cout => \i1|contador[2]~17\);

-- Location: LCFF_X11_Y14_N21
\i1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[2]~16_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(2));

-- Location: LCFF_X11_Y14_N23
\i1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[3]~18_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i1|contador[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(3));

-- Location: LCCOMB_X10_Y14_N20
\i2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\i1|contador\(0) & ((\i1|contador\(3)) # (\i1|contador\(2) $ (\i1|contador\(1))))) # (!\i1|contador\(0) & ((\i1|contador\(1)) # (\i1|contador\(3) $ (\i1|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y14_N18
\i2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\i1|contador\(2) & (\i1|contador\(0) & (\i1|contador\(3) $ (\i1|contador\(1))))) # (!\i1|contador\(2) & (!\i1|contador\(3) & ((\i1|contador\(0)) # (\i1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y14_N24
\i2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\i1|contador\(1) & (!\i1|contador\(3) & ((\i1|contador\(0))))) # (!\i1|contador\(1) & ((\i1|contador\(2) & (!\i1|contador\(3))) # (!\i1|contador\(2) & ((\i1|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y14_N10
\i2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\i1|contador\(0) & ((\i1|contador\(2) $ (!\i1|contador\(1))))) # (!\i1|contador\(0) & ((\i1|contador\(3) & (!\i1|contador\(2) & \i1|contador\(1))) # (!\i1|contador\(3) & (\i1|contador\(2) & !\i1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y14_N16
\i2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\i1|contador\(3) & (\i1|contador\(2) & ((\i1|contador\(1)) # (!\i1|contador\(0))))) # (!\i1|contador\(3) & (!\i1|contador\(2) & (!\i1|contador\(0) & \i1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y14_N6
\i2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\i1|contador\(3) & ((\i1|contador\(0) & ((\i1|contador\(1)))) # (!\i1|contador\(0) & (\i1|contador\(2))))) # (!\i1|contador\(3) & (\i1|contador\(2) & (\i1|contador\(0) $ (\i1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y14_N20
\i2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\i1|contador\(3) & (\i1|contador\(0) & (\i1|contador\(1) $ (\i1|contador\(2))))) # (!\i1|contador\(3) & (!\i1|contador\(1) & (\i1|contador\(2) $ (\i1|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(1),
	datac => \i1|contador\(2),
	datad => \i1|contador\(0),
	combout => \i2|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y17_N0
\i3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux6~0_combout\ = (\i1|contador\(4) & ((\i1|contador\(7)) # (\i1|contador\(5) $ (\i1|contador\(6))))) # (!\i1|contador\(4) & ((\i1|contador\(5)) # (\i1|contador\(7) $ (\i1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux6~0_combout\);

-- Location: LCCOMB_X8_Y17_N2
\i3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux5~0_combout\ = (\i1|contador\(5) & (!\i1|contador\(7) & ((\i1|contador\(4)) # (!\i1|contador\(6))))) # (!\i1|contador\(5) & (\i1|contador\(4) & (\i1|contador\(7) $ (!\i1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux5~0_combout\);

-- Location: LCCOMB_X8_Y17_N12
\i3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux4~0_combout\ = (\i1|contador\(5) & (!\i1|contador\(7) & (\i1|contador\(4)))) # (!\i1|contador\(5) & ((\i1|contador\(6) & (!\i1|contador\(7))) # (!\i1|contador\(6) & ((\i1|contador\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y17_N22
\i3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux3~0_combout\ = (\i1|contador\(4) & ((\i1|contador\(5) $ (!\i1|contador\(6))))) # (!\i1|contador\(4) & ((\i1|contador\(7) & (\i1|contador\(5) & !\i1|contador\(6))) # (!\i1|contador\(7) & (!\i1|contador\(5) & \i1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y17_N8
\i3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux2~0_combout\ = (\i1|contador\(7) & (\i1|contador\(6) & ((\i1|contador\(5)) # (!\i1|contador\(4))))) # (!\i1|contador\(7) & (\i1|contador\(5) & (!\i1|contador\(4) & !\i1|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y17_N10
\i3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux1~0_combout\ = (\i1|contador\(7) & ((\i1|contador\(4) & (\i1|contador\(5))) # (!\i1|contador\(4) & ((\i1|contador\(6)))))) # (!\i1|contador\(7) & (\i1|contador\(6) & (\i1|contador\(5) $ (\i1|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y17_N24
\i3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\i1|contador\(7) & (\i1|contador\(4) & (\i1|contador\(5) $ (\i1|contador\(6))))) # (!\i1|contador\(7) & (!\i1|contador\(5) & (\i1|contador\(4) $ (\i1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i3|Mux0~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[5]~I\ : cycloneii_io
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
	padio => ww_max_c(5),
	combout => \max_c~combout\(5));

-- Location: LCCOMB_X12_Y14_N6
\i1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = (\max_c~combout\(4) & (\i1|contador\(4) & (\i1|contador\(5) $ (!\max_c~combout\(5))))) # (!\max_c~combout\(4) & (!\i1|contador\(4) & (\i1|contador\(5) $ (!\max_c~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(4),
	datab => \i1|contador\(5),
	datac => \i1|contador\(4),
	datad => \max_c~combout\(5),
	combout => \i1|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y14_N0
\i1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (\max_c~combout\(3) & (\i1|contador\(3) & (\i1|contador\(2) $ (!\max_c~combout\(2))))) # (!\max_c~combout\(3) & (!\i1|contador\(3) & (\i1|contador\(2) $ (!\max_c~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(3),
	datab => \i1|contador\(3),
	datac => \i1|contador\(2),
	datad => \max_c~combout\(2),
	combout => \i1|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y14_N28
\i1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~3_combout\ = (\max_c~combout\(6) & (\i1|contador\(6) & (\max_c~combout\(7) $ (!\i1|contador\(7))))) # (!\max_c~combout\(6) & (!\i1|contador\(6) & (\max_c~combout\(7) $ (!\i1|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(6),
	datab => \i1|contador\(6),
	datac => \max_c~combout\(7),
	datad => \i1|contador\(7),
	combout => \i1|Equal0~3_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_c[1]~I\ : cycloneii_io
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
	padio => ww_max_c(1),
	combout => \max_c~combout\(1));

-- Location: LCCOMB_X12_Y14_N18
\i1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (\max_c~combout\(0) & (\i1|contador\(0) & (\i1|contador\(1) $ (!\max_c~combout\(1))))) # (!\max_c~combout\(0) & (!\i1|contador\(0) & (\i1|contador\(1) $ (!\max_c~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_c~combout\(0),
	datab => \i1|contador\(1),
	datac => \max_c~combout\(1),
	datad => \i1|contador\(0),
	combout => \i1|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y14_N4
\i1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~4_combout\ = (\i1|Equal0~2_combout\ & (\i1|Equal0~1_combout\ & (\i1|Equal0~3_combout\ & \i1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~2_combout\,
	datab => \i1|Equal0~1_combout\,
	datac => \i1|Equal0~3_combout\,
	datad => \i1|Equal0~0_combout\,
	combout => \i1|Equal0~4_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[0]~I\ : cycloneii_io
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
	padio => ww_d0(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[1]~I\ : cycloneii_io
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
	padio => ww_d0(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[2]~I\ : cycloneii_io
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
	padio => ww_d0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[3]~I\ : cycloneii_io
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
	padio => ww_d0(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[4]~I\ : cycloneii_io
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
	padio => ww_d0(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[5]~I\ : cycloneii_io
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
	padio => ww_d0(5));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d0[6]~I\ : cycloneii_io
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
	padio => ww_d0(6));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[0]~I\ : cycloneii_io
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
	padio => ww_d1(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[1]~I\ : cycloneii_io
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
	padio => ww_d1(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[2]~I\ : cycloneii_io
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
	padio => ww_d1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[3]~I\ : cycloneii_io
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
	padio => ww_d1(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[4]~I\ : cycloneii_io
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
	padio => ww_d1(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[5]~I\ : cycloneii_io
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
	padio => ww_d1(5));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d1[6]~I\ : cycloneii_io
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
	padio => ww_d1(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\libre~I\ : cycloneii_io
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
	datain => \i1|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_libre);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ocupado~I\ : cycloneii_io
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
	datain => \i1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ocupado);
END structure;


