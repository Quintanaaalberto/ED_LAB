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

-- DATE "02/24/2021 20:40:29"

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

ENTITY 	Sumador5Bits IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	s : OUT std_logic_vector(4 DOWNTO 0);
	c_out : OUT std_logic
	);
END Sumador5Bits;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_out	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sumador5Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_c_out : std_logic;
SIGNAL \GenSum:0:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~2_combout\ : std_logic;
SIGNAL \GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~3_combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~4_combout\ : std_logic;
SIGNAL \GenSum:3:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \GenSum:4:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~5_combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~6_combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~7_combout\ : std_logic;
SIGNAL \GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~10_combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~8_combout\ : std_logic;
SIGNAL \i_CarryLookAhead|c~9_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X37_Y25_N16
\GenSum:0:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:0:i_Sumador1Bit|p_i~combout\ = \b~combout\(0) $ (\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \GenSum:0:i_Sumador1Bit|p_i~combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X37_Y25_N26
\GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:1:i_Sumador1Bit|s_i~combout\ = \a~combout\(1) $ (\b~combout\(1) $ (((\b~combout\(0) & \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X37_Y25_N20
\i_CarryLookAhead|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~2_combout\ = (\a~combout\(1) & ((\b~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\a~combout\(1) & (\b~combout\(0) & (\b~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \i_CarryLookAhead|c~2_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X37_Y25_N30
\GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:2:i_Sumador1Bit|s_i~combout\ = \a~combout\(2) $ (\i_CarryLookAhead|c~2_combout\ $ (\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \i_CarryLookAhead|c~2_combout\,
	datad => \b~combout\(2),
	combout => \GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X37_Y25_N24
\i_CarryLookAhead|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~3_combout\ = (\a~combout\(1) & ((\b~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\a~combout\(1) & (\b~combout\(0) & (\b~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \i_CarryLookAhead|c~3_combout\);

-- Location: LCCOMB_X37_Y25_N10
\i_CarryLookAhead|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~4_combout\ = (\a~combout\(2) & ((\i_CarryLookAhead|c~3_combout\) # (\b~combout\(2)))) # (!\a~combout\(2) & (\i_CarryLookAhead|c~3_combout\ & \b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \i_CarryLookAhead|c~3_combout\,
	datad => \b~combout\(2),
	combout => \i_CarryLookAhead|c~4_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X37_Y25_N4
\GenSum:3:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:3:i_Sumador1Bit|s_i~combout\ = \i_CarryLookAhead|c~4_combout\ $ (\b~combout\(3) $ (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_CarryLookAhead|c~4_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \GenSum:3:i_Sumador1Bit|s_i~combout\);

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X37_Y25_N28
\GenSum:4:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:4:i_Sumador1Bit|p_i~combout\ = \a~combout\(4) $ (\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \b~combout\(4),
	combout => \GenSum:4:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X37_Y25_N22
\i_CarryLookAhead|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~5_combout\ = (\a~combout\(1) & ((\b~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\a~combout\(1) & (\b~combout\(0) & (\b~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \i_CarryLookAhead|c~5_combout\);

-- Location: LCCOMB_X37_Y25_N8
\i_CarryLookAhead|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~6_combout\ = (\a~combout\(2) & (!\b~combout\(2) & (\a~combout\(3) $ (\b~combout\(3))))) # (!\a~combout\(2) & (\b~combout\(2) & (\a~combout\(3) $ (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i_CarryLookAhead|c~6_combout\);

-- Location: LCCOMB_X37_Y25_N18
\i_CarryLookAhead|c~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~7_combout\ = (\a~combout\(3) & ((\b~combout\(3)) # ((\a~combout\(2) & \b~combout\(2))))) # (!\a~combout\(3) & (\a~combout\(2) & (\b~combout\(3) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i_CarryLookAhead|c~7_combout\);

-- Location: LCCOMB_X37_Y25_N6
\GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenSum:4:i_Sumador1Bit|s_i~combout\ = \GenSum:4:i_Sumador1Bit|p_i~combout\ $ (((\i_CarryLookAhead|c~7_combout\) # ((\i_CarryLookAhead|c~5_combout\ & \i_CarryLookAhead|c~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenSum:4:i_Sumador1Bit|p_i~combout\,
	datab => \i_CarryLookAhead|c~5_combout\,
	datac => \i_CarryLookAhead|c~6_combout\,
	datad => \i_CarryLookAhead|c~7_combout\,
	combout => \GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X37_Y25_N12
\i_CarryLookAhead|c~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~10_combout\ = (\i_CarryLookAhead|c~6_combout\ & (\i_CarryLookAhead|c~5_combout\ & (\a~combout\(4) $ (\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \i_CarryLookAhead|c~6_combout\,
	datac => \b~combout\(4),
	datad => \i_CarryLookAhead|c~5_combout\,
	combout => \i_CarryLookAhead|c~10_combout\);

-- Location: LCCOMB_X37_Y25_N0
\i_CarryLookAhead|c~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~8_combout\ = (\a~combout\(3) & ((\b~combout\(3)) # ((\a~combout\(2) & \b~combout\(2))))) # (!\a~combout\(3) & (\a~combout\(2) & (\b~combout\(3) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i_CarryLookAhead|c~8_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X37_Y25_N2
\i_CarryLookAhead|c~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_CarryLookAhead|c~9_combout\ = (\i_CarryLookAhead|c~10_combout\) # ((\i_CarryLookAhead|c~8_combout\ & ((\b~combout\(4)) # (\a~combout\(4)))) # (!\i_CarryLookAhead|c~8_combout\ & (\b~combout\(4) & \a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_CarryLookAhead|c~10_combout\,
	datab => \i_CarryLookAhead|c~8_combout\,
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \i_CarryLookAhead|c~9_combout\);

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
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
	datain => \GenSum:0:i_Sumador1Bit|p_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
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
	datain => \GenSum:1:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
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
	datain => \GenSum:2:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
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
	datain => \GenSum:3:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
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
	datain => \GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_CarryLookAhead|c~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_out);
END structure;


