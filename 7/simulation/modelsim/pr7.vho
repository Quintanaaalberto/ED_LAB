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

-- DATE "03/16/2021 18:31:33"

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

ENTITY 	Multiplicador5Bits_C2 IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	S : OUT std_logic_vector(4 DOWNTO 0);
	ov : OUT std_logic
	);
END Multiplicador5Bits_C2;

-- Design Ports Information
-- S[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[4]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ov	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Multiplicador5Bits_C2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ov : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \prod[1][2]~combout\ : std_logic;
SIGNAL \prod[0][3]~combout\ : std_logic;
SIGNAL \prod[1][4]~combout\ : std_logic;
SIGNAL \prod[4][5]~combout\ : std_logic;
SIGNAL \prod[4][7]~combout\ : std_logic;
SIGNAL \prod[0][0]~combout\ : std_logic;
SIGNAL \prod[0][1]~combout\ : std_logic;
SIGNAL \prod[1][1]~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \prod[0][2]~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \prod[2][2]~combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \prod[3][3]~combout\ : std_logic;
SIGNAL \prod[2][3]~combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \prod[4][4]~combout\ : std_logic;
SIGNAL \prod[3][4]~combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \prod[3][7]~combout\ : std_logic;
SIGNAL \prod[0][4]~combout\ : std_logic;
SIGNAL \prod[1][5]~combout\ : std_logic;
SIGNAL \prod[1][3]~combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \prod[2][6]~combout\ : std_logic;
SIGNAL \prod[2][5]~combout\ : std_logic;
SIGNAL \prod[2][4]~combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \prod[3][6]~combout\ : std_logic;
SIGNAL \prod[3][5]~combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \prod[4][8]~combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \prod[4][6]~combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \ov~0_combout\ : std_logic;
SIGNAL \ov~1_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ov <= ww_ov;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X37_Y23_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\prod[0][3]~combout\ $ (\prod[1][3]~combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\prod[0][3]~combout\ & ((\prod[1][3]~combout\) # (!\Add0~3\))) # (!\prod[0][3]~combout\ & (\prod[1][3]~combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[0][3]~combout\,
	datab => \prod[1][3]~combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X37_Y23_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\prod[1][4]~combout\ & ((\prod[0][4]~combout\ & (\Add0~5\ & VCC)) # (!\prod[0][4]~combout\ & (!\Add0~5\)))) # (!\prod[1][4]~combout\ & ((\prod[0][4]~combout\ & (!\Add0~5\)) # (!\prod[0][4]~combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\prod[1][4]~combout\ & (!\prod[0][4]~combout\ & !\Add0~5\)) # (!\prod[1][4]~combout\ & ((!\Add0~5\) # (!\prod[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[1][4]~combout\,
	datab => \prod[0][4]~combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X38_Y23_N8
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~6_combout\ $ (\prod[2][4]~combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~6_combout\ & ((\prod[2][4]~combout\) # (!\Add1~3\))) # (!\Add0~6_combout\ & (\prod[2][4]~combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \prod[2][4]~combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X37_Y23_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\prod[0][4]~combout\ $ (\prod[1][5]~combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\prod[0][4]~combout\ & ((\prod[1][5]~combout\) # (!\Add0~7\))) # (!\prod[0][4]~combout\ & (\prod[1][5]~combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[0][4]~combout\,
	datab => \prod[1][5]~combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X38_Y23_N10
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~8_combout\ & ((\prod[2][5]~combout\ & (\Add1~5\ & VCC)) # (!\prod[2][5]~combout\ & (!\Add1~5\)))) # (!\Add0~8_combout\ & ((\prod[2][5]~combout\ & (!\Add1~5\)) # (!\prod[2][5]~combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~8_combout\ & (!\prod[2][5]~combout\ & !\Add1~5\)) # (!\Add0~8_combout\ & ((!\Add1~5\) # (!\prod[2][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \prod[2][5]~combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X38_Y23_N12
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~10_combout\ $ (\prod[2][6]~combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~10_combout\ & ((\prod[2][6]~combout\) # (!\Add1~7\))) # (!\Add0~10_combout\ & (\prod[2][6]~combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \prod[2][6]~combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X39_Y23_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~8_combout\ & ((\prod[3][6]~combout\ & (\Add2~5\ & VCC)) # (!\prod[3][6]~combout\ & (!\Add2~5\)))) # (!\Add1~8_combout\ & ((\prod[3][6]~combout\ & (!\Add2~5\)) # (!\prod[3][6]~combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~8_combout\ & (!\prod[3][6]~combout\ & !\Add2~5\)) # (!\Add1~8_combout\ & ((!\Add2~5\) # (!\prod[3][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \prod[3][6]~combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X39_Y23_N24
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\prod[4][7]~combout\ & ((\Add2~8_combout\ & (\Add3~5\ & VCC)) # (!\Add2~8_combout\ & (!\Add3~5\)))) # (!\prod[4][7]~combout\ & ((\Add2~8_combout\ & (!\Add3~5\)) # (!\Add2~8_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\prod[4][7]~combout\ & (!\Add2~8_combout\ & !\Add3~5\)) # (!\prod[4][7]~combout\ & ((!\Add3~5\) # (!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[4][7]~combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X37_Y23_N26
\prod[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[1][2]~combout\ = (\B~combout\(1) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \prod[1][2]~combout\);

-- Location: LCCOMB_X37_Y23_N24
\prod[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[0][3]~combout\ = (\B~combout\(0) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datad => \A~combout\(3),
	combout => \prod[0][3]~combout\);

-- Location: LCCOMB_X37_Y23_N2
\prod[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[1][4]~combout\ = (\B~combout\(1) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \A~combout\(3),
	combout => \prod[1][4]~combout\);

-- Location: LCCOMB_X39_Y24_N18
\prod[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[4][5]~combout\ = (\A~combout\(1) & \B~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(4),
	combout => \prod[4][5]~combout\);

-- Location: LCCOMB_X39_Y24_N12
\prod[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[4][7]~combout\ = (\A~combout\(3) & \B~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(4),
	combout => \prod[4][7]~combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X37_Y23_N0
\prod[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[0][0]~combout\ = (\B~combout\(0) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \A~combout\(0),
	combout => \prod[0][0]~combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X37_Y23_N20
\prod[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[0][1]~combout\ = (\B~combout\(0) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datad => \A~combout\(1),
	combout => \prod[0][1]~combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X37_Y23_N18
\prod[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[1][1]~combout\ = (\B~combout\(1) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(0),
	combout => \prod[1][1]~combout\);

-- Location: LCCOMB_X37_Y23_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\prod[0][1]~combout\ & (\prod[1][1]~combout\ $ (VCC))) # (!\prod[0][1]~combout\ & (\prod[1][1]~combout\ & VCC))
-- \Add0~1\ = CARRY((\prod[0][1]~combout\ & \prod[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prod[0][1]~combout\,
	datab => \prod[1][1]~combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X37_Y23_N28
\prod[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[0][2]~combout\ = (\B~combout\(0) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datad => \A~combout\(2),
	combout => \prod[0][2]~combout\);

-- Location: LCCOMB_X37_Y23_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\prod[1][2]~combout\ & ((\prod[0][2]~combout\ & (\Add0~1\ & VCC)) # (!\prod[0][2]~combout\ & (!\Add0~1\)))) # (!\prod[1][2]~combout\ & ((\prod[0][2]~combout\ & (!\Add0~1\)) # (!\prod[0][2]~combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\prod[1][2]~combout\ & (!\prod[0][2]~combout\ & !\Add0~1\)) # (!\prod[1][2]~combout\ & ((!\Add0~1\) # (!\prod[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[1][2]~combout\,
	datab => \prod[0][2]~combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X38_Y23_N0
\prod[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[2][2]~combout\ = (\A~combout\(0) & \B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datad => \B~combout\(2),
	combout => \prod[2][2]~combout\);

-- Location: LCCOMB_X38_Y23_N4
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~2_combout\ & (\prod[2][2]~combout\ $ (VCC))) # (!\Add0~2_combout\ & (\prod[2][2]~combout\ & VCC))
-- \Add1~1\ = CARRY((\Add0~2_combout\ & \prod[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \prod[2][2]~combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X38_Y23_N16
\prod[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[3][3]~combout\ = (\B~combout\(3) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \A~combout\(0),
	combout => \prod[3][3]~combout\);

-- Location: LCCOMB_X38_Y23_N26
\prod[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[2][3]~combout\ = (\B~combout\(2) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(1),
	combout => \prod[2][3]~combout\);

-- Location: LCCOMB_X38_Y23_N6
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~4_combout\ & ((\prod[2][3]~combout\ & (\Add1~1\ & VCC)) # (!\prod[2][3]~combout\ & (!\Add1~1\)))) # (!\Add0~4_combout\ & ((\prod[2][3]~combout\ & (!\Add1~1\)) # (!\prod[2][3]~combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Add0~4_combout\ & (!\prod[2][3]~combout\ & !\Add1~1\)) # (!\Add0~4_combout\ & ((!\Add1~1\) # (!\prod[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \prod[2][3]~combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X39_Y23_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\prod[3][3]~combout\ & (\Add1~2_combout\ $ (VCC))) # (!\prod[3][3]~combout\ & (\Add1~2_combout\ & VCC))
-- \Add2~1\ = CARRY((\prod[3][3]~combout\ & \Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prod[3][3]~combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X39_Y24_N16
\prod[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[4][4]~combout\ = (\B~combout\(4) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \A~combout\(0),
	combout => \prod[4][4]~combout\);

-- Location: LCCOMB_X38_Y23_N20
\prod[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[3][4]~combout\ = (\A~combout\(1) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(3),
	combout => \prod[3][4]~combout\);

-- Location: LCCOMB_X39_Y23_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~4_combout\ & ((\prod[3][4]~combout\ & (\Add2~1\ & VCC)) # (!\prod[3][4]~combout\ & (!\Add2~1\)))) # (!\Add1~4_combout\ & ((\prod[3][4]~combout\ & (!\Add2~1\)) # (!\prod[3][4]~combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~4_combout\ & (!\prod[3][4]~combout\ & !\Add2~1\)) # (!\Add1~4_combout\ & ((!\Add2~1\) # (!\prod[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \prod[3][4]~combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X39_Y23_N18
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\prod[4][4]~combout\ & (\Add2~2_combout\ $ (VCC))) # (!\prod[4][4]~combout\ & (\Add2~2_combout\ & VCC))
-- \Add3~1\ = CARRY((\prod[4][4]~combout\ & \Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prod[4][4]~combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X38_Y23_N22
\prod[3][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[3][7]~combout\ = (\A~combout\(4) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \B~combout\(3),
	combout => \prod[3][7]~combout\);

-- Location: LCCOMB_X37_Y23_N4
\prod[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[0][4]~combout\ = (\A~combout\(4) & \B~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datad => \B~combout\(0),
	combout => \prod[0][4]~combout\);

-- Location: LCCOMB_X37_Y23_N30
\prod[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[1][5]~combout\ = (\A~combout\(4) & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \B~combout\(1),
	combout => \prod[1][5]~combout\);

-- Location: LCCOMB_X37_Y23_N22
\prod[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[1][3]~combout\ = (\B~combout\(1) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \A~combout\(2),
	combout => \prod[1][3]~combout\);

-- Location: LCCOMB_X37_Y23_N16
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \prod[0][4]~combout\ $ (\Add0~9\ $ (\prod[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prod[0][4]~combout\,
	datad => \prod[1][5]~combout\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X38_Y23_N2
\prod[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[2][6]~combout\ = (\A~combout\(4) & \B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datad => \B~combout\(2),
	combout => \prod[2][6]~combout\);

-- Location: LCCOMB_X38_Y23_N30
\prod[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[2][5]~combout\ = (\A~combout\(3) & \B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datad => \B~combout\(2),
	combout => \prod[2][5]~combout\);

-- Location: LCCOMB_X38_Y23_N18
\prod[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[2][4]~combout\ = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \prod[2][4]~combout\);

-- Location: LCCOMB_X38_Y23_N14
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add0~10_combout\ $ (\Add1~9\ $ (\prod[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \prod[2][6]~combout\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X38_Y23_N28
\prod[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[3][6]~combout\ = (\B~combout\(3) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \prod[3][6]~combout\);

-- Location: LCCOMB_X38_Y23_N24
\prod[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[3][5]~combout\ = (\B~combout\(3) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \A~combout\(2),
	combout => \prod[3][5]~combout\);

-- Location: LCCOMB_X39_Y23_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~6_combout\ $ (\prod[3][5]~combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~6_combout\ & ((\prod[3][5]~combout\) # (!\Add2~3\))) # (!\Add1~6_combout\ & (\prod[3][5]~combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \prod[3][5]~combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X39_Y23_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~10_combout\ $ (\prod[3][7]~combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~10_combout\ & ((\prod[3][7]~combout\) # (!\Add2~7\))) # (!\Add1~10_combout\ & (\prod[3][7]~combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \prod[3][7]~combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X39_Y23_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \prod[3][7]~combout\ $ (\Add2~9\ $ (\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prod[3][7]~combout\,
	datad => \Add1~10_combout\,
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X39_Y23_N16
\prod[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[4][8]~combout\ = (\A~combout\(4) & \B~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	combout => \prod[4][8]~combout\);

-- Location: LCCOMB_X39_Y23_N12
\prod[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \prod[4][6]~combout\ = (\A~combout\(2) & \B~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datad => \B~combout\(4),
	combout => \prod[4][6]~combout\);

-- Location: LCCOMB_X39_Y23_N20
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\prod[4][5]~combout\ & ((\Add2~4_combout\ & (\Add3~1\ & VCC)) # (!\Add2~4_combout\ & (!\Add3~1\)))) # (!\prod[4][5]~combout\ & ((\Add2~4_combout\ & (!\Add3~1\)) # (!\Add2~4_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\prod[4][5]~combout\ & (!\Add2~4_combout\ & !\Add3~1\)) # (!\prod[4][5]~combout\ & ((!\Add3~1\) # (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[4][5]~combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X39_Y23_N22
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Add2~6_combout\ $ (\prod[4][6]~combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Add2~6_combout\ & ((\prod[4][6]~combout\) # (!\Add3~3\))) # (!\Add2~6_combout\ & (\prod[4][6]~combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \prod[4][6]~combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X39_Y23_N26
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Add2~10_combout\ $ (\prod[4][8]~combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\Add2~10_combout\ & ((\prod[4][8]~combout\) # (!\Add3~7\))) # (!\Add2~10_combout\ & (\prod[4][8]~combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \prod[4][8]~combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X39_Y23_N28
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = \prod[4][8]~combout\ $ (\Add3~9\ $ (\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prod[4][8]~combout\,
	datad => \Add2~10_combout\,
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X39_Y23_N14
\ov~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ov~0_combout\ = (\Add3~6_combout\ & (((!\Add3~0_combout\) # (!\Add3~2_combout\)) # (!\Add3~4_combout\))) # (!\Add3~6_combout\ & ((\Add3~4_combout\) # ((\Add3~2_combout\) # (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \ov~0_combout\);

-- Location: LCCOMB_X39_Y23_N30
\ov~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ov~1_combout\ = (\ov~0_combout\) # ((\Add3~10_combout\ & ((!\Add3~0_combout\) # (!\Add3~8_combout\))) # (!\Add3~10_combout\ & ((\Add3~8_combout\) # (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add3~8_combout\,
	datac => \ov~0_combout\,
	datad => \Add3~0_combout\,
	combout => \ov~1_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
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
	datain => \prod[0][0]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
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
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
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
	datain => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
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
	datain => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[4]~I\ : cycloneii_io
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
	datain => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ov~I\ : cycloneii_io
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
	datain => \ov~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ov);
END structure;


