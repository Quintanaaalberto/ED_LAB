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

-- DATE "02/25/2021 21:23:11"

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

ENTITY 	Practica6 IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica6;

-- Design Ports Information
-- disp1[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[4]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[5]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica6 IS
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
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iMultiplicador5Bits|Add0~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~11\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~12_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][1]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][6]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][7]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][1]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux6~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][0]~combout\ : std_logic;
SIGNAL \iDisp1|Mux5~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux4~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux3~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux2~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux1~0_combout\ : std_logic;
SIGNAL \iDisp1|Mux0~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][6]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][6]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[4]~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[5]~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[6]~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[7]~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[6]~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[5]~2_combout\ : std_logic;
SIGNAL \iDisp2|Mux6~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[4]~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux5~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux4~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux3~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux2~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux1~0_combout\ : std_logic;
SIGNAL \iDisp2|Mux0~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][8]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[7]~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[8]~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[9]~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[8]~8_combout\ : std_logic;
SIGNAL \iDisp3|Mux5~0_combout\ : std_logic;
SIGNAL \iDisp3|Mux0~0_combout\ : std_logic;
SIGNAL \iDisp3|Mux2~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iDisp2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \iDisp1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|ALT_INV_s[9]~10_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\iDisp2|ALT_INV_Mux6~0_combout\ <= NOT \iDisp2|Mux6~0_combout\;
\iDisp1|ALT_INV_Mux6~0_combout\ <= NOT \iDisp1|Mux6~0_combout\;
\iMultiplicador5Bits|ALT_INV_s[9]~10_combout\ <= NOT \iMultiplicador5Bits|s[9]~10_combout\;

-- Location: LCCOMB_X44_Y23_N6
\iMultiplicador5Bits|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~4_combout\ = ((\iMultiplicador5Bits|pp[0][3]~combout\ $ (\iMultiplicador5Bits|pp[1][3]~combout\ $ (!\iMultiplicador5Bits|Add0~3\)))) # (GND)
-- \iMultiplicador5Bits|Add0~5\ = CARRY((\iMultiplicador5Bits|pp[0][3]~combout\ & ((\iMultiplicador5Bits|pp[1][3]~combout\) # (!\iMultiplicador5Bits|Add0~3\))) # (!\iMultiplicador5Bits|pp[0][3]~combout\ & (\iMultiplicador5Bits|pp[1][3]~combout\ & 
-- !\iMultiplicador5Bits|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[0][3]~combout\,
	datab => \iMultiplicador5Bits|pp[1][3]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~3\,
	combout => \iMultiplicador5Bits|Add0~4_combout\,
	cout => \iMultiplicador5Bits|Add0~5\);

-- Location: LCCOMB_X44_Y23_N8
\iMultiplicador5Bits|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~6_combout\ = (\iMultiplicador5Bits|pp[0][4]~combout\ & ((\iMultiplicador5Bits|pp[1][4]~combout\ & (\iMultiplicador5Bits|Add0~5\ & VCC)) # (!\iMultiplicador5Bits|pp[1][4]~combout\ & (!\iMultiplicador5Bits|Add0~5\)))) # 
-- (!\iMultiplicador5Bits|pp[0][4]~combout\ & ((\iMultiplicador5Bits|pp[1][4]~combout\ & (!\iMultiplicador5Bits|Add0~5\)) # (!\iMultiplicador5Bits|pp[1][4]~combout\ & ((\iMultiplicador5Bits|Add0~5\) # (GND)))))
-- \iMultiplicador5Bits|Add0~7\ = CARRY((\iMultiplicador5Bits|pp[0][4]~combout\ & (!\iMultiplicador5Bits|pp[1][4]~combout\ & !\iMultiplicador5Bits|Add0~5\)) # (!\iMultiplicador5Bits|pp[0][4]~combout\ & ((!\iMultiplicador5Bits|Add0~5\) # 
-- (!\iMultiplicador5Bits|pp[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[0][4]~combout\,
	datab => \iMultiplicador5Bits|pp[1][4]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~5\,
	combout => \iMultiplicador5Bits|Add0~6_combout\,
	cout => \iMultiplicador5Bits|Add0~7\);

-- Location: LCCOMB_X44_Y23_N10
\iMultiplicador5Bits|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~8_combout\ = (\iMultiplicador5Bits|Add0~7\ & (\a~combout\(4) & (\b~combout\(1) & VCC))) # (!\iMultiplicador5Bits|Add0~7\ & ((((\a~combout\(4) & \b~combout\(1))))))
-- \iMultiplicador5Bits|Add0~9\ = CARRY((\a~combout\(4) & (\b~combout\(1) & !\iMultiplicador5Bits|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~7\,
	combout => \iMultiplicador5Bits|Add0~8_combout\,
	cout => \iMultiplicador5Bits|Add0~9\);

-- Location: LCCOMB_X43_Y23_N18
\iMultiplicador5Bits|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~2_combout\ = (\iMultiplicador5Bits|pp[3][4]~combout\ & ((\iMultiplicador5Bits|pp[2][4]~combout\ & (\iMultiplicador5Bits|Add1~1\ & VCC)) # (!\iMultiplicador5Bits|pp[2][4]~combout\ & (!\iMultiplicador5Bits|Add1~1\)))) # 
-- (!\iMultiplicador5Bits|pp[3][4]~combout\ & ((\iMultiplicador5Bits|pp[2][4]~combout\ & (!\iMultiplicador5Bits|Add1~1\)) # (!\iMultiplicador5Bits|pp[2][4]~combout\ & ((\iMultiplicador5Bits|Add1~1\) # (GND)))))
-- \iMultiplicador5Bits|Add1~3\ = CARRY((\iMultiplicador5Bits|pp[3][4]~combout\ & (!\iMultiplicador5Bits|pp[2][4]~combout\ & !\iMultiplicador5Bits|Add1~1\)) # (!\iMultiplicador5Bits|pp[3][4]~combout\ & ((!\iMultiplicador5Bits|Add1~1\) # 
-- (!\iMultiplicador5Bits|pp[2][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[3][4]~combout\,
	datab => \iMultiplicador5Bits|pp[2][4]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add1~1\,
	combout => \iMultiplicador5Bits|Add1~2_combout\,
	cout => \iMultiplicador5Bits|Add1~3\);

-- Location: LCCOMB_X44_Y23_N22
\iMultiplicador5Bits|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~6_combout\ = (\iMultiplicador5Bits|Add0~8_combout\ & ((\iMultiplicador5Bits|Add1~4_combout\ & (\iMultiplicador5Bits|Add2~5\ & VCC)) # (!\iMultiplicador5Bits|Add1~4_combout\ & (!\iMultiplicador5Bits|Add2~5\)))) # 
-- (!\iMultiplicador5Bits|Add0~8_combout\ & ((\iMultiplicador5Bits|Add1~4_combout\ & (!\iMultiplicador5Bits|Add2~5\)) # (!\iMultiplicador5Bits|Add1~4_combout\ & ((\iMultiplicador5Bits|Add2~5\) # (GND)))))
-- \iMultiplicador5Bits|Add2~7\ = CARRY((\iMultiplicador5Bits|Add0~8_combout\ & (!\iMultiplicador5Bits|Add1~4_combout\ & !\iMultiplicador5Bits|Add2~5\)) # (!\iMultiplicador5Bits|Add0~8_combout\ & ((!\iMultiplicador5Bits|Add2~5\) # 
-- (!\iMultiplicador5Bits|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~8_combout\,
	datab => \iMultiplicador5Bits|Add1~4_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~5\,
	combout => \iMultiplicador5Bits|Add2~6_combout\,
	cout => \iMultiplicador5Bits|Add2~7\);

-- Location: LCCOMB_X44_Y23_N12
\iMultiplicador5Bits|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~10_combout\ = \iMultiplicador5Bits|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \iMultiplicador5Bits|Add0~9\,
	combout => \iMultiplicador5Bits|Add0~10_combout\);

-- Location: LCCOMB_X44_Y23_N24
\iMultiplicador5Bits|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~8_combout\ = ((\iMultiplicador5Bits|Add0~10_combout\ $ (\iMultiplicador5Bits|Add1~6_combout\ $ (!\iMultiplicador5Bits|Add2~7\)))) # (GND)
-- \iMultiplicador5Bits|Add2~9\ = CARRY((\iMultiplicador5Bits|Add0~10_combout\ & ((\iMultiplicador5Bits|Add1~6_combout\) # (!\iMultiplicador5Bits|Add2~7\))) # (!\iMultiplicador5Bits|Add0~10_combout\ & (\iMultiplicador5Bits|Add1~6_combout\ & 
-- !\iMultiplicador5Bits|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~10_combout\,
	datab => \iMultiplicador5Bits|Add1~6_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~7\,
	combout => \iMultiplicador5Bits|Add2~8_combout\,
	cout => \iMultiplicador5Bits|Add2~9\);

-- Location: LCCOMB_X43_Y23_N24
\iMultiplicador5Bits|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~8_combout\ = (\iMultiplicador5Bits|Add1~7\ & (\b~combout\(3) & (\a~combout\(4) & VCC))) # (!\iMultiplicador5Bits|Add1~7\ & ((((\b~combout\(3) & \a~combout\(4))))))
-- \iMultiplicador5Bits|Add1~9\ = CARRY((\b~combout\(3) & (\a~combout\(4) & !\iMultiplicador5Bits|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \iMultiplicador5Bits|Add1~7\,
	combout => \iMultiplicador5Bits|Add1~8_combout\,
	cout => \iMultiplicador5Bits|Add1~9\);

-- Location: LCCOMB_X44_Y23_N26
\iMultiplicador5Bits|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~10_combout\ = (\iMultiplicador5Bits|Add1~8_combout\ & (!\iMultiplicador5Bits|Add2~9\)) # (!\iMultiplicador5Bits|Add1~8_combout\ & ((\iMultiplicador5Bits|Add2~9\) # (GND)))
-- \iMultiplicador5Bits|Add2~11\ = CARRY((!\iMultiplicador5Bits|Add2~9\) # (!\iMultiplicador5Bits|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|Add1~8_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~9\,
	combout => \iMultiplicador5Bits|Add2~10_combout\,
	cout => \iMultiplicador5Bits|Add2~11\);

-- Location: LCCOMB_X43_Y23_N26
\iMultiplicador5Bits|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~10_combout\ = \iMultiplicador5Bits|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \iMultiplicador5Bits|Add1~9\,
	combout => \iMultiplicador5Bits|Add1~10_combout\);

-- Location: LCCOMB_X44_Y23_N28
\iMultiplicador5Bits|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~12_combout\ = \iMultiplicador5Bits|Add2~11\ $ (!\iMultiplicador5Bits|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \iMultiplicador5Bits|Add1~10_combout\,
	cin => \iMultiplicador5Bits|Add2~11\,
	combout => \iMultiplicador5Bits|Add2~12_combout\);

-- Location: LCCOMB_X45_Y23_N24
\iMultiplicador5Bits|pp[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][1]~combout\ = (\b~combout\(1) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[1][1]~combout\);

-- Location: LCCOMB_X45_Y23_N12
\iMultiplicador5Bits|pp[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][2]~combout\ = (\b~combout\(1) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[1][2]~combout\);

-- Location: LCCOMB_X43_Y23_N8
\iMultiplicador5Bits|pp[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][2]~combout\ = (\b~combout\(2) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[2][2]~combout\);

-- Location: LCCOMB_X44_Y23_N0
\iMultiplicador5Bits|pp[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][3]~combout\ = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][3]~combout\);

-- Location: LCCOMB_X43_Y23_N12
\iMultiplicador5Bits|pp[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][3]~combout\ = (\b~combout\(2) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[2][3]~combout\);

-- Location: LCCOMB_X44_Y23_N14
\iMultiplicador5Bits|pp[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][4]~combout\ = (\a~combout\(4) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][4]~combout\);

-- Location: LCCOMB_X43_Y23_N14
\iMultiplicador5Bits|pp[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][5]~combout\ = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[3][5]~combout\);

-- Location: LCCOMB_X43_Y23_N10
\iMultiplicador5Bits|pp[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][4]~combout\ = (\a~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(3),
	combout => \iMultiplicador5Bits|pp[3][4]~combout\);

-- Location: LCCOMB_X45_Y23_N20
\iMultiplicador5Bits|pp[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][4]~combout\ = (\b~combout\(4) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datad => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[4][4]~combout\);

-- Location: LCCOMB_X43_Y23_N28
\iMultiplicador5Bits|pp[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][6]~combout\ = (\b~combout\(2) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(4),
	combout => \iMultiplicador5Bits|pp[2][6]~combout\);

-- Location: LCCOMB_X44_Y24_N10
\iMultiplicador5Bits|pp[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][7]~combout\ = (\a~combout\(3) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(4),
	combout => \iMultiplicador5Bits|pp[4][7]~combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y23_N10
\iMultiplicador5Bits|pp[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][1]~combout\ = (\a~combout\(1) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datad => \b~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][1]~combout\);

-- Location: LCCOMB_X44_Y23_N2
\iMultiplicador5Bits|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~0_combout\ = (\iMultiplicador5Bits|pp[1][1]~combout\ & (\iMultiplicador5Bits|pp[0][1]~combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[1][1]~combout\ & (\iMultiplicador5Bits|pp[0][1]~combout\ & VCC))
-- \iMultiplicador5Bits|Add0~1\ = CARRY((\iMultiplicador5Bits|pp[1][1]~combout\ & \iMultiplicador5Bits|pp[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[1][1]~combout\,
	datab => \iMultiplicador5Bits|pp[0][1]~combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|Add0~0_combout\,
	cout => \iMultiplicador5Bits|Add0~1\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y23_N2
\iMultiplicador5Bits|pp[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][3]~combout\ = (\b~combout\(3) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[3][3]~combout\);

-- Location: LCCOMB_X43_Y23_N16
\iMultiplicador5Bits|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~0_combout\ = (\iMultiplicador5Bits|pp[2][3]~combout\ & (\iMultiplicador5Bits|pp[3][3]~combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[2][3]~combout\ & (\iMultiplicador5Bits|pp[3][3]~combout\ & VCC))
-- \iMultiplicador5Bits|Add1~1\ = CARRY((\iMultiplicador5Bits|pp[2][3]~combout\ & \iMultiplicador5Bits|pp[3][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[2][3]~combout\,
	datab => \iMultiplicador5Bits|pp[3][3]~combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|Add1~0_combout\,
	cout => \iMultiplicador5Bits|Add1~1\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y23_N30
\iMultiplicador5Bits|pp[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][2]~combout\ = (\b~combout\(0) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[0][2]~combout\);

-- Location: LCCOMB_X44_Y23_N4
\iMultiplicador5Bits|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~2_combout\ = (\iMultiplicador5Bits|pp[1][2]~combout\ & ((\iMultiplicador5Bits|pp[0][2]~combout\ & (\iMultiplicador5Bits|Add0~1\ & VCC)) # (!\iMultiplicador5Bits|pp[0][2]~combout\ & (!\iMultiplicador5Bits|Add0~1\)))) # 
-- (!\iMultiplicador5Bits|pp[1][2]~combout\ & ((\iMultiplicador5Bits|pp[0][2]~combout\ & (!\iMultiplicador5Bits|Add0~1\)) # (!\iMultiplicador5Bits|pp[0][2]~combout\ & ((\iMultiplicador5Bits|Add0~1\) # (GND)))))
-- \iMultiplicador5Bits|Add0~3\ = CARRY((\iMultiplicador5Bits|pp[1][2]~combout\ & (!\iMultiplicador5Bits|pp[0][2]~combout\ & !\iMultiplicador5Bits|Add0~1\)) # (!\iMultiplicador5Bits|pp[1][2]~combout\ & ((!\iMultiplicador5Bits|Add0~1\) # 
-- (!\iMultiplicador5Bits|pp[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[1][2]~combout\,
	datab => \iMultiplicador5Bits|pp[0][2]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~1\,
	combout => \iMultiplicador5Bits|Add0~2_combout\,
	cout => \iMultiplicador5Bits|Add0~3\);

-- Location: LCCOMB_X44_Y23_N16
\iMultiplicador5Bits|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~0_combout\ = (\iMultiplicador5Bits|pp[2][2]~combout\ & (\iMultiplicador5Bits|Add0~2_combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[2][2]~combout\ & (\iMultiplicador5Bits|Add0~2_combout\ & VCC))
-- \iMultiplicador5Bits|Add2~1\ = CARRY((\iMultiplicador5Bits|pp[2][2]~combout\ & \iMultiplicador5Bits|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[2][2]~combout\,
	datab => \iMultiplicador5Bits|Add0~2_combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|Add2~0_combout\,
	cout => \iMultiplicador5Bits|Add2~1\);

-- Location: LCCOMB_X44_Y23_N18
\iMultiplicador5Bits|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~2_combout\ = (\iMultiplicador5Bits|Add0~4_combout\ & ((\iMultiplicador5Bits|Add1~0_combout\ & (\iMultiplicador5Bits|Add2~1\ & VCC)) # (!\iMultiplicador5Bits|Add1~0_combout\ & (!\iMultiplicador5Bits|Add2~1\)))) # 
-- (!\iMultiplicador5Bits|Add0~4_combout\ & ((\iMultiplicador5Bits|Add1~0_combout\ & (!\iMultiplicador5Bits|Add2~1\)) # (!\iMultiplicador5Bits|Add1~0_combout\ & ((\iMultiplicador5Bits|Add2~1\) # (GND)))))
-- \iMultiplicador5Bits|Add2~3\ = CARRY((\iMultiplicador5Bits|Add0~4_combout\ & (!\iMultiplicador5Bits|Add1~0_combout\ & !\iMultiplicador5Bits|Add2~1\)) # (!\iMultiplicador5Bits|Add0~4_combout\ & ((!\iMultiplicador5Bits|Add2~1\) # 
-- (!\iMultiplicador5Bits|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~4_combout\,
	datab => \iMultiplicador5Bits|Add1~0_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~1\,
	combout => \iMultiplicador5Bits|Add2~2_combout\,
	cout => \iMultiplicador5Bits|Add2~3\);

-- Location: LCCOMB_X45_Y23_N26
\iDisp1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux6~0_combout\ = (\iMultiplicador5Bits|Add0~0_combout\) # (\iMultiplicador5Bits|Add2~2_combout\ $ (\iMultiplicador5Bits|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	combout => \iDisp1|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y23_N28
\iMultiplicador5Bits|pp[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][0]~combout\ = (\b~combout\(0) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][0]~combout\);

-- Location: LCCOMB_X45_Y23_N22
\iDisp1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux5~0_combout\ = (!\iMultiplicador5Bits|Add2~2_combout\ & (!\iMultiplicador5Bits|Add2~0_combout\ & ((\iMultiplicador5Bits|Add0~0_combout\) # (\iMultiplicador5Bits|pp[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y23_N0
\iDisp1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux4~0_combout\ = (\iMultiplicador5Bits|Add2~0_combout\ & (!\iMultiplicador5Bits|Add0~0_combout\ & (!\iMultiplicador5Bits|Add2~2_combout\))) # (!\iMultiplicador5Bits|Add2~0_combout\ & (\iMultiplicador5Bits|pp[0][0]~combout\ & 
-- ((!\iMultiplicador5Bits|Add2~2_combout\) # (!\iMultiplicador5Bits|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y23_N18
\iDisp1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux3~0_combout\ = (\iMultiplicador5Bits|Add0~0_combout\ & (\iMultiplicador5Bits|Add2~2_combout\ & (\iMultiplicador5Bits|Add2~0_combout\ $ (!\iMultiplicador5Bits|pp[0][0]~combout\)))) # (!\iMultiplicador5Bits|Add0~0_combout\ & 
-- (!\iMultiplicador5Bits|Add2~2_combout\ & (\iMultiplicador5Bits|Add2~0_combout\ $ (\iMultiplicador5Bits|pp[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y23_N4
\iDisp1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux2~0_combout\ = (\iMultiplicador5Bits|Add0~0_combout\ & (\iMultiplicador5Bits|Add2~0_combout\ $ (((!\iMultiplicador5Bits|Add2~2_combout\ & !\iMultiplicador5Bits|pp[0][0]~combout\))))) # (!\iMultiplicador5Bits|Add0~0_combout\ & 
-- (\iMultiplicador5Bits|Add2~2_combout\ & (\iMultiplicador5Bits|Add2~0_combout\ & !\iMultiplicador5Bits|pp[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y23_N6
\iDisp1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux1~0_combout\ = (\iMultiplicador5Bits|Add0~0_combout\ & ((\iMultiplicador5Bits|Add2~0_combout\) # ((\iMultiplicador5Bits|Add2~2_combout\ & \iMultiplicador5Bits|pp[0][0]~combout\)))) # (!\iMultiplicador5Bits|Add0~0_combout\ & 
-- (\iMultiplicador5Bits|Add2~0_combout\ & (\iMultiplicador5Bits|Add2~2_combout\ $ (\iMultiplicador5Bits|pp[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y23_N16
\iDisp1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp1|Mux0~0_combout\ = (\iMultiplicador5Bits|pp[0][0]~combout\ & (\iMultiplicador5Bits|Add0~0_combout\ $ (\iMultiplicador5Bits|Add2~2_combout\ $ (!\iMultiplicador5Bits|Add2~0_combout\)))) # (!\iMultiplicador5Bits|pp[0][0]~combout\ & 
-- (!\iMultiplicador5Bits|Add0~0_combout\ & (!\iMultiplicador5Bits|Add2~2_combout\ & \iMultiplicador5Bits|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add0~0_combout\,
	datab => \iMultiplicador5Bits|Add2~2_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|pp[0][0]~combout\,
	combout => \iDisp1|Mux0~0_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y23_N30
\iMultiplicador5Bits|pp[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][6]~combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \iMultiplicador5Bits|pp[3][6]~combout\);

-- Location: LCCOMB_X43_Y23_N0
\iMultiplicador5Bits|pp[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][5]~combout\ = (\b~combout\(2) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(3),
	combout => \iMultiplicador5Bits|pp[2][5]~combout\);

-- Location: LCCOMB_X43_Y23_N4
\iMultiplicador5Bits|pp[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][4]~combout\ = (\b~combout\(2) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[2][4]~combout\);

-- Location: LCCOMB_X43_Y23_N20
\iMultiplicador5Bits|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~4_combout\ = ((\iMultiplicador5Bits|pp[3][5]~combout\ $ (\iMultiplicador5Bits|pp[2][5]~combout\ $ (!\iMultiplicador5Bits|Add1~3\)))) # (GND)
-- \iMultiplicador5Bits|Add1~5\ = CARRY((\iMultiplicador5Bits|pp[3][5]~combout\ & ((\iMultiplicador5Bits|pp[2][5]~combout\) # (!\iMultiplicador5Bits|Add1~3\))) # (!\iMultiplicador5Bits|pp[3][5]~combout\ & (\iMultiplicador5Bits|pp[2][5]~combout\ & 
-- !\iMultiplicador5Bits|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[3][5]~combout\,
	datab => \iMultiplicador5Bits|pp[2][5]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add1~3\,
	combout => \iMultiplicador5Bits|Add1~4_combout\,
	cout => \iMultiplicador5Bits|Add1~5\);

-- Location: LCCOMB_X43_Y23_N22
\iMultiplicador5Bits|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~6_combout\ = (\iMultiplicador5Bits|pp[2][6]~combout\ & ((\iMultiplicador5Bits|pp[3][6]~combout\ & (\iMultiplicador5Bits|Add1~5\ & VCC)) # (!\iMultiplicador5Bits|pp[3][6]~combout\ & (!\iMultiplicador5Bits|Add1~5\)))) # 
-- (!\iMultiplicador5Bits|pp[2][6]~combout\ & ((\iMultiplicador5Bits|pp[3][6]~combout\ & (!\iMultiplicador5Bits|Add1~5\)) # (!\iMultiplicador5Bits|pp[3][6]~combout\ & ((\iMultiplicador5Bits|Add1~5\) # (GND)))))
-- \iMultiplicador5Bits|Add1~7\ = CARRY((\iMultiplicador5Bits|pp[2][6]~combout\ & (!\iMultiplicador5Bits|pp[3][6]~combout\ & !\iMultiplicador5Bits|Add1~5\)) # (!\iMultiplicador5Bits|pp[2][6]~combout\ & ((!\iMultiplicador5Bits|Add1~5\) # 
-- (!\iMultiplicador5Bits|pp[3][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[2][6]~combout\,
	datab => \iMultiplicador5Bits|pp[3][6]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add1~5\,
	combout => \iMultiplicador5Bits|Add1~6_combout\,
	cout => \iMultiplicador5Bits|Add1~7\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y23_N30
\iMultiplicador5Bits|pp[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][4]~combout\ = (\a~combout\(3) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(1),
	combout => \iMultiplicador5Bits|pp[1][4]~combout\);

-- Location: LCCOMB_X45_Y23_N8
\iMultiplicador5Bits|pp[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][3]~combout\ = (\a~combout\(2) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \b~combout\(1),
	combout => \iMultiplicador5Bits|pp[1][3]~combout\);

-- Location: LCCOMB_X44_Y23_N20
\iMultiplicador5Bits|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~4_combout\ = ((\iMultiplicador5Bits|Add1~2_combout\ $ (\iMultiplicador5Bits|Add0~6_combout\ $ (!\iMultiplicador5Bits|Add2~3\)))) # (GND)
-- \iMultiplicador5Bits|Add2~5\ = CARRY((\iMultiplicador5Bits|Add1~2_combout\ & ((\iMultiplicador5Bits|Add0~6_combout\) # (!\iMultiplicador5Bits|Add2~3\))) # (!\iMultiplicador5Bits|Add1~2_combout\ & (\iMultiplicador5Bits|Add0~6_combout\ & 
-- !\iMultiplicador5Bits|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add1~2_combout\,
	datab => \iMultiplicador5Bits|Add0~6_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~3\,
	combout => \iMultiplicador5Bits|Add2~4_combout\,
	cout => \iMultiplicador5Bits|Add2~5\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y24_N8
\iMultiplicador5Bits|pp[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][6]~combout\ = (\b~combout\(4) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[4][6]~combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y23_N2
\iMultiplicador5Bits|pp[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][5]~combout\ = (\b~combout\(4) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[4][5]~combout\);

-- Location: LCCOMB_X44_Y24_N16
\iMultiplicador5Bits|s[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[4]~0_combout\ = (\iMultiplicador5Bits|pp[4][4]~combout\ & (\iMultiplicador5Bits|Add2~4_combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[4][4]~combout\ & (\iMultiplicador5Bits|Add2~4_combout\ & VCC))
-- \iMultiplicador5Bits|s[4]~1\ = CARRY((\iMultiplicador5Bits|pp[4][4]~combout\ & \iMultiplicador5Bits|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[4][4]~combout\,
	datab => \iMultiplicador5Bits|Add2~4_combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|s[4]~0_combout\,
	cout => \iMultiplicador5Bits|s[4]~1\);

-- Location: LCCOMB_X44_Y24_N18
\iMultiplicador5Bits|s[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[5]~2_combout\ = (\iMultiplicador5Bits|Add2~6_combout\ & ((\iMultiplicador5Bits|pp[4][5]~combout\ & (\iMultiplicador5Bits|s[4]~1\ & VCC)) # (!\iMultiplicador5Bits|pp[4][5]~combout\ & (!\iMultiplicador5Bits|s[4]~1\)))) # 
-- (!\iMultiplicador5Bits|Add2~6_combout\ & ((\iMultiplicador5Bits|pp[4][5]~combout\ & (!\iMultiplicador5Bits|s[4]~1\)) # (!\iMultiplicador5Bits|pp[4][5]~combout\ & ((\iMultiplicador5Bits|s[4]~1\) # (GND)))))
-- \iMultiplicador5Bits|s[5]~3\ = CARRY((\iMultiplicador5Bits|Add2~6_combout\ & (!\iMultiplicador5Bits|pp[4][5]~combout\ & !\iMultiplicador5Bits|s[4]~1\)) # (!\iMultiplicador5Bits|Add2~6_combout\ & ((!\iMultiplicador5Bits|s[4]~1\) # 
-- (!\iMultiplicador5Bits|pp[4][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~6_combout\,
	datab => \iMultiplicador5Bits|pp[4][5]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|s[4]~1\,
	combout => \iMultiplicador5Bits|s[5]~2_combout\,
	cout => \iMultiplicador5Bits|s[5]~3\);

-- Location: LCCOMB_X44_Y24_N20
\iMultiplicador5Bits|s[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[6]~4_combout\ = ((\iMultiplicador5Bits|Add2~8_combout\ $ (\iMultiplicador5Bits|pp[4][6]~combout\ $ (!\iMultiplicador5Bits|s[5]~3\)))) # (GND)
-- \iMultiplicador5Bits|s[6]~5\ = CARRY((\iMultiplicador5Bits|Add2~8_combout\ & ((\iMultiplicador5Bits|pp[4][6]~combout\) # (!\iMultiplicador5Bits|s[5]~3\))) # (!\iMultiplicador5Bits|Add2~8_combout\ & (\iMultiplicador5Bits|pp[4][6]~combout\ & 
-- !\iMultiplicador5Bits|s[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~8_combout\,
	datab => \iMultiplicador5Bits|pp[4][6]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|s[5]~3\,
	combout => \iMultiplicador5Bits|s[6]~4_combout\,
	cout => \iMultiplicador5Bits|s[6]~5\);

-- Location: LCCOMB_X44_Y24_N22
\iMultiplicador5Bits|s[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[7]~6_combout\ = (\iMultiplicador5Bits|pp[4][7]~combout\ & ((\iMultiplicador5Bits|Add2~10_combout\ & (\iMultiplicador5Bits|s[6]~5\ & VCC)) # (!\iMultiplicador5Bits|Add2~10_combout\ & (!\iMultiplicador5Bits|s[6]~5\)))) # 
-- (!\iMultiplicador5Bits|pp[4][7]~combout\ & ((\iMultiplicador5Bits|Add2~10_combout\ & (!\iMultiplicador5Bits|s[6]~5\)) # (!\iMultiplicador5Bits|Add2~10_combout\ & ((\iMultiplicador5Bits|s[6]~5\) # (GND)))))
-- \iMultiplicador5Bits|s[7]~7\ = CARRY((\iMultiplicador5Bits|pp[4][7]~combout\ & (!\iMultiplicador5Bits|Add2~10_combout\ & !\iMultiplicador5Bits|s[6]~5\)) # (!\iMultiplicador5Bits|pp[4][7]~combout\ & ((!\iMultiplicador5Bits|s[6]~5\) # 
-- (!\iMultiplicador5Bits|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[4][7]~combout\,
	datab => \iMultiplicador5Bits|Add2~10_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|s[6]~5\,
	combout => \iMultiplicador5Bits|s[7]~6_combout\,
	cout => \iMultiplicador5Bits|s[7]~7\);

-- Location: LCCOMB_X44_Y24_N4
\iDisp2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux6~0_combout\ = (\iMultiplicador5Bits|s[5]~2_combout\) # (\iMultiplicador5Bits|s[7]~6_combout\ $ (\iMultiplicador5Bits|s[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y24_N30
\iDisp2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux5~0_combout\ = (!\iMultiplicador5Bits|s[6]~4_combout\ & (!\iMultiplicador5Bits|s[7]~6_combout\ & ((\iMultiplicador5Bits|s[4]~0_combout\) # (\iMultiplicador5Bits|s[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y24_N0
\iDisp2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux4~0_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\ & (!\iMultiplicador5Bits|s[7]~6_combout\ & ((!\iMultiplicador5Bits|s[5]~2_combout\)))) # (!\iMultiplicador5Bits|s[6]~4_combout\ & (\iMultiplicador5Bits|s[4]~0_combout\ & 
-- ((!\iMultiplicador5Bits|s[5]~2_combout\) # (!\iMultiplicador5Bits|s[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y24_N2
\iDisp2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux3~0_combout\ = (\iMultiplicador5Bits|s[7]~6_combout\ & (\iMultiplicador5Bits|s[5]~2_combout\ & (\iMultiplicador5Bits|s[6]~4_combout\ $ (!\iMultiplicador5Bits|s[4]~0_combout\)))) # (!\iMultiplicador5Bits|s[7]~6_combout\ & 
-- (!\iMultiplicador5Bits|s[5]~2_combout\ & (\iMultiplicador5Bits|s[6]~4_combout\ $ (\iMultiplicador5Bits|s[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y24_N28
\iDisp2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux2~0_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\ & ((\iMultiplicador5Bits|s[4]~0_combout\ & ((\iMultiplicador5Bits|s[5]~2_combout\))) # (!\iMultiplicador5Bits|s[4]~0_combout\ & (\iMultiplicador5Bits|s[7]~6_combout\)))) # 
-- (!\iMultiplicador5Bits|s[6]~4_combout\ & (!\iMultiplicador5Bits|s[7]~6_combout\ & (!\iMultiplicador5Bits|s[4]~0_combout\ & \iMultiplicador5Bits|s[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y24_N6
\iDisp2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux1~0_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\ & ((\iMultiplicador5Bits|s[5]~2_combout\) # (\iMultiplicador5Bits|s[7]~6_combout\ $ (\iMultiplicador5Bits|s[4]~0_combout\)))) # (!\iMultiplicador5Bits|s[6]~4_combout\ & 
-- (\iMultiplicador5Bits|s[7]~6_combout\ & (\iMultiplicador5Bits|s[4]~0_combout\ & \iMultiplicador5Bits|s[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y24_N12
\iDisp2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp2|Mux0~0_combout\ = (\iMultiplicador5Bits|s[4]~0_combout\ & (\iMultiplicador5Bits|s[6]~4_combout\ $ (\iMultiplicador5Bits|s[7]~6_combout\ $ (!\iMultiplicador5Bits|s[5]~2_combout\)))) # (!\iMultiplicador5Bits|s[4]~0_combout\ & 
-- (\iMultiplicador5Bits|s[6]~4_combout\ & (!\iMultiplicador5Bits|s[7]~6_combout\ & !\iMultiplicador5Bits|s[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datab => \iMultiplicador5Bits|s[7]~6_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisp2|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y24_N14
\iMultiplicador5Bits|pp[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][8]~combout\ = (\b~combout\(4) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \iMultiplicador5Bits|pp[4][8]~combout\);

-- Location: LCCOMB_X44_Y24_N24
\iMultiplicador5Bits|s[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[8]~8_combout\ = ((\iMultiplicador5Bits|Add2~12_combout\ $ (\iMultiplicador5Bits|pp[4][8]~combout\ $ (!\iMultiplicador5Bits|s[7]~7\)))) # (GND)
-- \iMultiplicador5Bits|s[8]~9\ = CARRY((\iMultiplicador5Bits|Add2~12_combout\ & ((\iMultiplicador5Bits|pp[4][8]~combout\) # (!\iMultiplicador5Bits|s[7]~7\))) # (!\iMultiplicador5Bits|Add2~12_combout\ & (\iMultiplicador5Bits|pp[4][8]~combout\ & 
-- !\iMultiplicador5Bits|s[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~12_combout\,
	datab => \iMultiplicador5Bits|pp[4][8]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|s[7]~7\,
	combout => \iMultiplicador5Bits|s[8]~8_combout\,
	cout => \iMultiplicador5Bits|s[8]~9\);

-- Location: LCCOMB_X44_Y24_N26
\iMultiplicador5Bits|s[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[9]~10_combout\ = \iMultiplicador5Bits|s[8]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \iMultiplicador5Bits|s[8]~9\,
	combout => \iMultiplicador5Bits|s[9]~10_combout\);

-- Location: LCCOMB_X4_Y26_N0
\iDisp3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp3|Mux5~0_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\) # (\iMultiplicador5Bits|s[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisp3|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y26_N10
\iDisp3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp3|Mux0~0_combout\ = (!\iMultiplicador5Bits|s[9]~10_combout\ & \iMultiplicador5Bits|s[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisp3|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y26_N12
\iDisp3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisp3|Mux2~0_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\ & !\iMultiplicador5Bits|s[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisp3|Mux2~0_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[0]~I\ : cycloneii_io
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
	datain => \iDisp1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[1]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[2]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[3]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[4]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[5]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[6]~I\ : cycloneii_io
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
	datain => \iDisp1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[0]~I\ : cycloneii_io
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
	datain => \iDisp2|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[1]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[2]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[3]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[4]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[5]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(5));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[6]~I\ : cycloneii_io
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
	datain => \iDisp2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[0]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|ALT_INV_s[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(0));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[1]~I\ : cycloneii_io
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
	datain => \iDisp3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[2]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|s[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[3]~I\ : cycloneii_io
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
	datain => \iDisp3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(3));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[4]~I\ : cycloneii_io
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
	datain => \iDisp3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(4));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(5));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[6]~I\ : cycloneii_io
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
	datain => \iDisp3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(6));
END structure;


