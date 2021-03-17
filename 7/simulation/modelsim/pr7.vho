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

-- DATE "03/17/2021 13:51:14"

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

ENTITY 	alu IS
    PORT (
	A_in : IN std_logic_vector(4 DOWNTO 0);
	B_in : IN std_logic_vector(4 DOWNTO 0);
	sel_in : IN std_logic_vector(2 DOWNTO 0);
	S_out : OUT std_logic_vector(4 DOWNTO 0);
	OV_out : OUT std_logic
	);
END alu;

-- Design Ports Information
-- S_out[0]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_out[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_out[2]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_out[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_out[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OV_out	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_in[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_in[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_in[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_in[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_in[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_in[1]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_in[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_in[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_in[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_in[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_in[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_in[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_in[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sel_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OV_out : std_logic;
SIGNAL \imultiplicador|Add0~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~5\ : std_logic;
SIGNAL \imultiplicador|Add1~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~7\ : std_logic;
SIGNAL \imultiplicador|Add1~5\ : std_logic;
SIGNAL \imultiplicador|Add2~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~8_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~9\ : std_logic;
SIGNAL \imultiplicador|Add1~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add1~7\ : std_logic;
SIGNAL \imultiplicador|Add2~5\ : std_logic;
SIGNAL \imultiplicador|Add3~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add4~0_combout\ : std_logic;
SIGNAL \imultiplicador|Add0~10_combout\ : std_logic;
SIGNAL \imultiplicador|Add1~8_combout\ : std_logic;
SIGNAL \imultiplicador|Add1~9\ : std_logic;
SIGNAL \imultiplicador|Add2~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add2~7\ : std_logic;
SIGNAL \imultiplicador|Add3~5\ : std_logic;
SIGNAL \imultiplicador|Add4~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add1~10_combout\ : std_logic;
SIGNAL \imultiplicador|Add2~8_combout\ : std_logic;
SIGNAL \imultiplicador|Add2~9\ : std_logic;
SIGNAL \imultiplicador|Add2~10_combout\ : std_logic;
SIGNAL \imultiplicador|Add3~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add3~7\ : std_logic;
SIGNAL \imultiplicador|Add3~8_combout\ : std_logic;
SIGNAL \imultiplicador|Add3~9\ : std_logic;
SIGNAL \imultiplicador|Add3~10_combout\ : std_logic;
SIGNAL \imultiplicador|Add4~5\ : std_logic;
SIGNAL \imultiplicador|Add4~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add4~7\ : std_logic;
SIGNAL \imultiplicador|Add4~8_combout\ : std_logic;
SIGNAL \imultiplicador|Add5~4_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux3~0_combout\ : std_logic;
SIGNAL \imultiplicador|prod[0][1]~combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[2]~1_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[2]~2_combout\ : std_logic;
SIGNAL \imultiplicador|prod[0][2]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[1][3]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[2][3]~combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux0~0_combout\ : std_logic;
SIGNAL \imultiplicador|prod[1][4]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[0][4]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[3][4]~combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c~8_combout\ : std_logic;
SIGNAL \imultiplicador|prod[1][5]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[2][5]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[2][6]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[3][7]~combout\ : std_logic;
SIGNAL \icontrol|comb~3_combout\ : std_logic;
SIGNAL \icontrol|comb~7_combout\ : std_logic;
SIGNAL \icontrol|comb~4_combout\ : std_logic;
SIGNAL \icontrol|comb~5_combout\ : std_logic;
SIGNAL \icontrol|comb~6_combout\ : std_logic;
SIGNAL \iunidadlog|Mux4~0_combout\ : std_logic;
SIGNAL \icontrol|comb~0_combout\ : std_logic;
SIGNAL \icontrol|sel_s[0]~0_combout\ : std_logic;
SIGNAL \icontrol|comb~1_combout\ : std_logic;
SIGNAL \icontrol|comb~2_combout\ : std_logic;
SIGNAL \icontrol|sel_b~combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux4~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux4~1_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux3~1_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux3~2_combout\ : std_logic;
SIGNAL \imultiplicador|prod[1][1]~combout\ : std_logic;
SIGNAL \imultiplicador|Add0~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux3~3_combout\ : std_logic;
SIGNAL \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux2~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux2~1_combout\ : std_logic;
SIGNAL \imultiplicador|prod[2][2]~combout\ : std_logic;
SIGNAL \imultiplicador|Add1~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux2~2_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux1~0_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[1]~0_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[3]~4_combout\ : std_logic;
SIGNAL \icontrol|sel_s[0]~1_combout\ : std_logic;
SIGNAL \icontrol|sel_r~combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c~3_combout\ : std_logic;
SIGNAL \isumador|GenSum:3:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux1~1_combout\ : std_logic;
SIGNAL \imultiplicador|prod[3][3]~combout\ : std_logic;
SIGNAL \imultiplicador|Add2~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux1~2_combout\ : std_logic;
SIGNAL \isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[4]~6_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c~5_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[4]~7_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux0~1_combout\ : std_logic;
SIGNAL \imultiplicador|prod[4][4]~combout\ : std_logic;
SIGNAL \imultiplicador|Add3~0_combout\ : std_logic;
SIGNAL \imux5bits3to1|Mux0~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add5~0_combout\ : std_logic;
SIGNAL \icontrol|sel_ov~combout\ : std_logic;
SIGNAL \imux|Selector0~1_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[5]~9_combout\ : std_logic;
SIGNAL \isumador|i_CarryLookAhead|c[5]~10_combout\ : std_logic;
SIGNAL \imux|Selector0~0_combout\ : std_logic;
SIGNAL \imultiplicador|prod[4][5]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[4][6]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[3][5]~combout\ : std_logic;
SIGNAL \imultiplicador|prod[0][3]~combout\ : std_logic;
SIGNAL \imultiplicador|Add0~1\ : std_logic;
SIGNAL \imultiplicador|Add0~3\ : std_logic;
SIGNAL \imultiplicador|Add0~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add1~1\ : std_logic;
SIGNAL \imultiplicador|Add1~3\ : std_logic;
SIGNAL \imultiplicador|Add1~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add2~1\ : std_logic;
SIGNAL \imultiplicador|Add2~3\ : std_logic;
SIGNAL \imultiplicador|Add2~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add3~1\ : std_logic;
SIGNAL \imultiplicador|Add3~3\ : std_logic;
SIGNAL \imultiplicador|Add3~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add4~1\ : std_logic;
SIGNAL \imultiplicador|Add4~3\ : std_logic;
SIGNAL \imultiplicador|Add4~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add5~1\ : std_logic;
SIGNAL \imultiplicador|Add5~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add6~1\ : std_logic;
SIGNAL \imultiplicador|Add6~2_combout\ : std_logic;
SIGNAL \imultiplicador|Add7~0_combout\ : std_logic;
SIGNAL \imultiplicador|Add6~0_combout\ : std_logic;
SIGNAL \imux|Selector0~3_combout\ : std_logic;
SIGNAL \imultiplicador|prod[4][7]~combout\ : std_logic;
SIGNAL \imultiplicador|Add5~3\ : std_logic;
SIGNAL \imultiplicador|Add5~5\ : std_logic;
SIGNAL \imultiplicador|Add5~6_combout\ : std_logic;
SIGNAL \imultiplicador|Add6~3\ : std_logic;
SIGNAL \imultiplicador|Add6~4_combout\ : std_logic;
SIGNAL \imultiplicador|Add7~1\ : std_logic;
SIGNAL \imultiplicador|Add7~2_combout\ : std_logic;
SIGNAL \imux|Selector0~2_combout\ : std_logic;
SIGNAL \imux|Selector0~4_combout\ : std_logic;
SIGNAL \sel_in~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B_in~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A_in~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \isumador|b_j\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \icontrol|sel_log\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \iunidadlog|e0\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_A_in <= A_in;
ww_B_in <= B_in;
ww_sel_in <= sel_in;
S_out <= ww_S_out;
OV_out <= ww_OV_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X47_Y25_N22
\imultiplicador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~2_combout\ = (\imultiplicador|prod[0][2]~combout\ & ((\iunidadlog|e0\(1) & (\imultiplicador|Add0~1\ & VCC)) # (!\iunidadlog|e0\(1) & (!\imultiplicador|Add0~1\)))) # (!\imultiplicador|prod[0][2]~combout\ & ((\iunidadlog|e0\(1) & 
-- (!\imultiplicador|Add0~1\)) # (!\iunidadlog|e0\(1) & ((\imultiplicador|Add0~1\) # (GND)))))
-- \imultiplicador|Add0~3\ = CARRY((\imultiplicador|prod[0][2]~combout\ & (!\iunidadlog|e0\(1) & !\imultiplicador|Add0~1\)) # (!\imultiplicador|prod[0][2]~combout\ & ((!\imultiplicador|Add0~1\) # (!\iunidadlog|e0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[0][2]~combout\,
	datab => \iunidadlog|e0\(1),
	datad => VCC,
	cin => \imultiplicador|Add0~1\,
	combout => \imultiplicador|Add0~2_combout\,
	cout => \imultiplicador|Add0~3\);

-- Location: LCCOMB_X47_Y25_N24
\imultiplicador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~4_combout\ = ((\imultiplicador|prod[1][3]~combout\ $ (\imultiplicador|prod[0][3]~combout\ $ (!\imultiplicador|Add0~3\)))) # (GND)
-- \imultiplicador|Add0~5\ = CARRY((\imultiplicador|prod[1][3]~combout\ & ((\imultiplicador|prod[0][3]~combout\) # (!\imultiplicador|Add0~3\))) # (!\imultiplicador|prod[1][3]~combout\ & (\imultiplicador|prod[0][3]~combout\ & !\imultiplicador|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[1][3]~combout\,
	datab => \imultiplicador|prod[0][3]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add0~3\,
	combout => \imultiplicador|Add0~4_combout\,
	cout => \imultiplicador|Add0~5\);

-- Location: LCCOMB_X46_Y25_N6
\imultiplicador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~2_combout\ = (\imultiplicador|prod[2][3]~combout\ & ((\imultiplicador|Add0~4_combout\ & (\imultiplicador|Add1~1\ & VCC)) # (!\imultiplicador|Add0~4_combout\ & (!\imultiplicador|Add1~1\)))) # (!\imultiplicador|prod[2][3]~combout\ & 
-- ((\imultiplicador|Add0~4_combout\ & (!\imultiplicador|Add1~1\)) # (!\imultiplicador|Add0~4_combout\ & ((\imultiplicador|Add1~1\) # (GND)))))
-- \imultiplicador|Add1~3\ = CARRY((\imultiplicador|prod[2][3]~combout\ & (!\imultiplicador|Add0~4_combout\ & !\imultiplicador|Add1~1\)) # (!\imultiplicador|prod[2][3]~combout\ & ((!\imultiplicador|Add1~1\) # (!\imultiplicador|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[2][3]~combout\,
	datab => \imultiplicador|Add0~4_combout\,
	datad => VCC,
	cin => \imultiplicador|Add1~1\,
	combout => \imultiplicador|Add1~2_combout\,
	cout => \imultiplicador|Add1~3\);

-- Location: LCCOMB_X47_Y25_N26
\imultiplicador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~6_combout\ = (\imultiplicador|prod[0][4]~combout\ & ((\imultiplicador|prod[1][4]~combout\ & (\imultiplicador|Add0~5\ & VCC)) # (!\imultiplicador|prod[1][4]~combout\ & (!\imultiplicador|Add0~5\)))) # 
-- (!\imultiplicador|prod[0][4]~combout\ & ((\imultiplicador|prod[1][4]~combout\ & (!\imultiplicador|Add0~5\)) # (!\imultiplicador|prod[1][4]~combout\ & ((\imultiplicador|Add0~5\) # (GND)))))
-- \imultiplicador|Add0~7\ = CARRY((\imultiplicador|prod[0][4]~combout\ & (!\imultiplicador|prod[1][4]~combout\ & !\imultiplicador|Add0~5\)) # (!\imultiplicador|prod[0][4]~combout\ & ((!\imultiplicador|Add0~5\) # (!\imultiplicador|prod[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[0][4]~combout\,
	datab => \imultiplicador|prod[1][4]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add0~5\,
	combout => \imultiplicador|Add0~6_combout\,
	cout => \imultiplicador|Add0~7\);

-- Location: LCCOMB_X46_Y25_N8
\imultiplicador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~4_combout\ = ((\imultiplicador|Add0~6_combout\ $ (\iunidadlog|e0\(2) $ (!\imultiplicador|Add1~3\)))) # (GND)
-- \imultiplicador|Add1~5\ = CARRY((\imultiplicador|Add0~6_combout\ & ((\iunidadlog|e0\(2)) # (!\imultiplicador|Add1~3\))) # (!\imultiplicador|Add0~6_combout\ & (\iunidadlog|e0\(2) & !\imultiplicador|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add0~6_combout\,
	datab => \iunidadlog|e0\(2),
	datad => VCC,
	cin => \imultiplicador|Add1~3\,
	combout => \imultiplicador|Add1~4_combout\,
	cout => \imultiplicador|Add1~5\);

-- Location: LCCOMB_X46_Y25_N18
\imultiplicador|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~2_combout\ = (\imultiplicador|prod[3][4]~combout\ & ((\imultiplicador|Add1~4_combout\ & (\imultiplicador|Add2~1\ & VCC)) # (!\imultiplicador|Add1~4_combout\ & (!\imultiplicador|Add2~1\)))) # (!\imultiplicador|prod[3][4]~combout\ & 
-- ((\imultiplicador|Add1~4_combout\ & (!\imultiplicador|Add2~1\)) # (!\imultiplicador|Add1~4_combout\ & ((\imultiplicador|Add2~1\) # (GND)))))
-- \imultiplicador|Add2~3\ = CARRY((\imultiplicador|prod[3][4]~combout\ & (!\imultiplicador|Add1~4_combout\ & !\imultiplicador|Add2~1\)) # (!\imultiplicador|prod[3][4]~combout\ & ((!\imultiplicador|Add2~1\) # (!\imultiplicador|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[3][4]~combout\,
	datab => \imultiplicador|Add1~4_combout\,
	datad => VCC,
	cin => \imultiplicador|Add2~1\,
	combout => \imultiplicador|Add2~2_combout\,
	cout => \imultiplicador|Add2~3\);

-- Location: LCCOMB_X47_Y25_N28
\imultiplicador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~8_combout\ = ((\imultiplicador|prod[0][4]~combout\ $ (\imultiplicador|prod[1][5]~combout\ $ (!\imultiplicador|Add0~7\)))) # (GND)
-- \imultiplicador|Add0~9\ = CARRY((\imultiplicador|prod[0][4]~combout\ & ((\imultiplicador|prod[1][5]~combout\) # (!\imultiplicador|Add0~7\))) # (!\imultiplicador|prod[0][4]~combout\ & (\imultiplicador|prod[1][5]~combout\ & !\imultiplicador|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[0][4]~combout\,
	datab => \imultiplicador|prod[1][5]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add0~7\,
	combout => \imultiplicador|Add0~8_combout\,
	cout => \imultiplicador|Add0~9\);

-- Location: LCCOMB_X46_Y25_N10
\imultiplicador|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~6_combout\ = (\imultiplicador|prod[2][5]~combout\ & ((\imultiplicador|Add0~8_combout\ & (\imultiplicador|Add1~5\ & VCC)) # (!\imultiplicador|Add0~8_combout\ & (!\imultiplicador|Add1~5\)))) # (!\imultiplicador|prod[2][5]~combout\ & 
-- ((\imultiplicador|Add0~8_combout\ & (!\imultiplicador|Add1~5\)) # (!\imultiplicador|Add0~8_combout\ & ((\imultiplicador|Add1~5\) # (GND)))))
-- \imultiplicador|Add1~7\ = CARRY((\imultiplicador|prod[2][5]~combout\ & (!\imultiplicador|Add0~8_combout\ & !\imultiplicador|Add1~5\)) # (!\imultiplicador|prod[2][5]~combout\ & ((!\imultiplicador|Add1~5\) # (!\imultiplicador|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[2][5]~combout\,
	datab => \imultiplicador|Add0~8_combout\,
	datad => VCC,
	cin => \imultiplicador|Add1~5\,
	combout => \imultiplicador|Add1~6_combout\,
	cout => \imultiplicador|Add1~7\);

-- Location: LCCOMB_X46_Y25_N20
\imultiplicador|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~4_combout\ = ((\imultiplicador|Add1~6_combout\ $ (\imultiplicador|prod[3][5]~combout\ $ (!\imultiplicador|Add2~3\)))) # (GND)
-- \imultiplicador|Add2~5\ = CARRY((\imultiplicador|Add1~6_combout\ & ((\imultiplicador|prod[3][5]~combout\) # (!\imultiplicador|Add2~3\))) # (!\imultiplicador|Add1~6_combout\ & (\imultiplicador|prod[3][5]~combout\ & !\imultiplicador|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add1~6_combout\,
	datab => \imultiplicador|prod[3][5]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add2~3\,
	combout => \imultiplicador|Add2~4_combout\,
	cout => \imultiplicador|Add2~5\);

-- Location: LCCOMB_X45_Y24_N2
\imultiplicador|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~2_combout\ = (\imultiplicador|prod[4][5]~combout\ & ((\imultiplicador|Add2~4_combout\ & (\imultiplicador|Add3~1\ & VCC)) # (!\imultiplicador|Add2~4_combout\ & (!\imultiplicador|Add3~1\)))) # (!\imultiplicador|prod[4][5]~combout\ & 
-- ((\imultiplicador|Add2~4_combout\ & (!\imultiplicador|Add3~1\)) # (!\imultiplicador|Add2~4_combout\ & ((\imultiplicador|Add3~1\) # (GND)))))
-- \imultiplicador|Add3~3\ = CARRY((\imultiplicador|prod[4][5]~combout\ & (!\imultiplicador|Add2~4_combout\ & !\imultiplicador|Add3~1\)) # (!\imultiplicador|prod[4][5]~combout\ & ((!\imultiplicador|Add3~1\) # (!\imultiplicador|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[4][5]~combout\,
	datab => \imultiplicador|Add2~4_combout\,
	datad => VCC,
	cin => \imultiplicador|Add3~1\,
	combout => \imultiplicador|Add3~2_combout\,
	cout => \imultiplicador|Add3~3\);

-- Location: LCCOMB_X45_Y24_N12
\imultiplicador|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add4~0_combout\ = (\imultiplicador|Add3~2_combout\ & (\imultiplicador|prod[4][4]~combout\ $ (VCC))) # (!\imultiplicador|Add3~2_combout\ & (\imultiplicador|prod[4][4]~combout\ & VCC))
-- \imultiplicador|Add4~1\ = CARRY((\imultiplicador|Add3~2_combout\ & \imultiplicador|prod[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~2_combout\,
	datab => \imultiplicador|prod[4][4]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add4~0_combout\,
	cout => \imultiplicador|Add4~1\);

-- Location: LCCOMB_X47_Y25_N30
\imultiplicador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~10_combout\ = \imultiplicador|prod[0][4]~combout\ $ (\imultiplicador|Add0~9\ $ (\imultiplicador|prod[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[0][4]~combout\,
	datad => \imultiplicador|prod[1][5]~combout\,
	cin => \imultiplicador|Add0~9\,
	combout => \imultiplicador|Add0~10_combout\);

-- Location: LCCOMB_X46_Y25_N12
\imultiplicador|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~8_combout\ = ((\imultiplicador|prod[2][6]~combout\ $ (\imultiplicador|Add0~10_combout\ $ (!\imultiplicador|Add1~7\)))) # (GND)
-- \imultiplicador|Add1~9\ = CARRY((\imultiplicador|prod[2][6]~combout\ & ((\imultiplicador|Add0~10_combout\) # (!\imultiplicador|Add1~7\))) # (!\imultiplicador|prod[2][6]~combout\ & (\imultiplicador|Add0~10_combout\ & !\imultiplicador|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[2][6]~combout\,
	datab => \imultiplicador|Add0~10_combout\,
	datad => VCC,
	cin => \imultiplicador|Add1~7\,
	combout => \imultiplicador|Add1~8_combout\,
	cout => \imultiplicador|Add1~9\);

-- Location: LCCOMB_X46_Y25_N22
\imultiplicador|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~6_combout\ = (\imultiplicador|Add1~8_combout\ & ((\iunidadlog|e0\(3) & (\imultiplicador|Add2~5\ & VCC)) # (!\iunidadlog|e0\(3) & (!\imultiplicador|Add2~5\)))) # (!\imultiplicador|Add1~8_combout\ & ((\iunidadlog|e0\(3) & 
-- (!\imultiplicador|Add2~5\)) # (!\iunidadlog|e0\(3) & ((\imultiplicador|Add2~5\) # (GND)))))
-- \imultiplicador|Add2~7\ = CARRY((\imultiplicador|Add1~8_combout\ & (!\iunidadlog|e0\(3) & !\imultiplicador|Add2~5\)) # (!\imultiplicador|Add1~8_combout\ & ((!\imultiplicador|Add2~5\) # (!\iunidadlog|e0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add1~8_combout\,
	datab => \iunidadlog|e0\(3),
	datad => VCC,
	cin => \imultiplicador|Add2~5\,
	combout => \imultiplicador|Add2~6_combout\,
	cout => \imultiplicador|Add2~7\);

-- Location: LCCOMB_X45_Y24_N4
\imultiplicador|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~4_combout\ = ((\imultiplicador|Add2~6_combout\ $ (\imultiplicador|prod[4][6]~combout\ $ (!\imultiplicador|Add3~3\)))) # (GND)
-- \imultiplicador|Add3~5\ = CARRY((\imultiplicador|Add2~6_combout\ & ((\imultiplicador|prod[4][6]~combout\) # (!\imultiplicador|Add3~3\))) # (!\imultiplicador|Add2~6_combout\ & (\imultiplicador|prod[4][6]~combout\ & !\imultiplicador|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add2~6_combout\,
	datab => \imultiplicador|prod[4][6]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add3~3\,
	combout => \imultiplicador|Add3~4_combout\,
	cout => \imultiplicador|Add3~5\);

-- Location: LCCOMB_X45_Y24_N14
\imultiplicador|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add4~2_combout\ = (\imultiplicador|prod[4][5]~combout\ & ((\imultiplicador|Add3~4_combout\ & (\imultiplicador|Add4~1\ & VCC)) # (!\imultiplicador|Add3~4_combout\ & (!\imultiplicador|Add4~1\)))) # (!\imultiplicador|prod[4][5]~combout\ & 
-- ((\imultiplicador|Add3~4_combout\ & (!\imultiplicador|Add4~1\)) # (!\imultiplicador|Add3~4_combout\ & ((\imultiplicador|Add4~1\) # (GND)))))
-- \imultiplicador|Add4~3\ = CARRY((\imultiplicador|prod[4][5]~combout\ & (!\imultiplicador|Add3~4_combout\ & !\imultiplicador|Add4~1\)) # (!\imultiplicador|prod[4][5]~combout\ & ((!\imultiplicador|Add4~1\) # (!\imultiplicador|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[4][5]~combout\,
	datab => \imultiplicador|Add3~4_combout\,
	datad => VCC,
	cin => \imultiplicador|Add4~1\,
	combout => \imultiplicador|Add4~2_combout\,
	cout => \imultiplicador|Add4~3\);

-- Location: LCCOMB_X46_Y25_N14
\imultiplicador|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~10_combout\ = \imultiplicador|prod[2][6]~combout\ $ (\imultiplicador|Add1~9\ $ (\imultiplicador|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imultiplicador|prod[2][6]~combout\,
	datad => \imultiplicador|Add0~10_combout\,
	cin => \imultiplicador|Add1~9\,
	combout => \imultiplicador|Add1~10_combout\);

-- Location: LCCOMB_X46_Y25_N24
\imultiplicador|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~8_combout\ = ((\imultiplicador|prod[3][7]~combout\ $ (\imultiplicador|Add1~10_combout\ $ (!\imultiplicador|Add2~7\)))) # (GND)
-- \imultiplicador|Add2~9\ = CARRY((\imultiplicador|prod[3][7]~combout\ & ((\imultiplicador|Add1~10_combout\) # (!\imultiplicador|Add2~7\))) # (!\imultiplicador|prod[3][7]~combout\ & (\imultiplicador|Add1~10_combout\ & !\imultiplicador|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[3][7]~combout\,
	datab => \imultiplicador|Add1~10_combout\,
	datad => VCC,
	cin => \imultiplicador|Add2~7\,
	combout => \imultiplicador|Add2~8_combout\,
	cout => \imultiplicador|Add2~9\);

-- Location: LCCOMB_X46_Y25_N26
\imultiplicador|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~10_combout\ = \imultiplicador|Add1~10_combout\ $ (\imultiplicador|Add2~9\ $ (\imultiplicador|prod[3][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imultiplicador|Add1~10_combout\,
	datad => \imultiplicador|prod[3][7]~combout\,
	cin => \imultiplicador|Add2~9\,
	combout => \imultiplicador|Add2~10_combout\);

-- Location: LCCOMB_X45_Y24_N6
\imultiplicador|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~6_combout\ = (\imultiplicador|Add2~8_combout\ & ((\imultiplicador|prod[4][7]~combout\ & (\imultiplicador|Add3~5\ & VCC)) # (!\imultiplicador|prod[4][7]~combout\ & (!\imultiplicador|Add3~5\)))) # (!\imultiplicador|Add2~8_combout\ & 
-- ((\imultiplicador|prod[4][7]~combout\ & (!\imultiplicador|Add3~5\)) # (!\imultiplicador|prod[4][7]~combout\ & ((\imultiplicador|Add3~5\) # (GND)))))
-- \imultiplicador|Add3~7\ = CARRY((\imultiplicador|Add2~8_combout\ & (!\imultiplicador|prod[4][7]~combout\ & !\imultiplicador|Add3~5\)) # (!\imultiplicador|Add2~8_combout\ & ((!\imultiplicador|Add3~5\) # (!\imultiplicador|prod[4][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add2~8_combout\,
	datab => \imultiplicador|prod[4][7]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add3~5\,
	combout => \imultiplicador|Add3~6_combout\,
	cout => \imultiplicador|Add3~7\);

-- Location: LCCOMB_X45_Y24_N8
\imultiplicador|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~8_combout\ = ((\iunidadlog|e0\(4) $ (\imultiplicador|Add2~10_combout\ $ (!\imultiplicador|Add3~7\)))) # (GND)
-- \imultiplicador|Add3~9\ = CARRY((\iunidadlog|e0\(4) & ((\imultiplicador|Add2~10_combout\) # (!\imultiplicador|Add3~7\))) # (!\iunidadlog|e0\(4) & (\imultiplicador|Add2~10_combout\ & !\imultiplicador|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iunidadlog|e0\(4),
	datab => \imultiplicador|Add2~10_combout\,
	datad => VCC,
	cin => \imultiplicador|Add3~7\,
	combout => \imultiplicador|Add3~8_combout\,
	cout => \imultiplicador|Add3~9\);

-- Location: LCCOMB_X45_Y24_N10
\imultiplicador|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~10_combout\ = \imultiplicador|Add2~10_combout\ $ (\imultiplicador|Add3~9\ $ (\iunidadlog|e0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imultiplicador|Add2~10_combout\,
	datad => \iunidadlog|e0\(4),
	cin => \imultiplicador|Add3~9\,
	combout => \imultiplicador|Add3~10_combout\);

-- Location: LCCOMB_X45_Y24_N16
\imultiplicador|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add4~4_combout\ = ((\imultiplicador|Add3~6_combout\ $ (\imultiplicador|prod[4][6]~combout\ $ (!\imultiplicador|Add4~3\)))) # (GND)
-- \imultiplicador|Add4~5\ = CARRY((\imultiplicador|Add3~6_combout\ & ((\imultiplicador|prod[4][6]~combout\) # (!\imultiplicador|Add4~3\))) # (!\imultiplicador|Add3~6_combout\ & (\imultiplicador|prod[4][6]~combout\ & !\imultiplicador|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~6_combout\,
	datab => \imultiplicador|prod[4][6]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add4~3\,
	combout => \imultiplicador|Add4~4_combout\,
	cout => \imultiplicador|Add4~5\);

-- Location: LCCOMB_X45_Y24_N18
\imultiplicador|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add4~6_combout\ = (\imultiplicador|Add3~8_combout\ & ((\imultiplicador|prod[4][7]~combout\ & (\imultiplicador|Add4~5\ & VCC)) # (!\imultiplicador|prod[4][7]~combout\ & (!\imultiplicador|Add4~5\)))) # (!\imultiplicador|Add3~8_combout\ & 
-- ((\imultiplicador|prod[4][7]~combout\ & (!\imultiplicador|Add4~5\)) # (!\imultiplicador|prod[4][7]~combout\ & ((\imultiplicador|Add4~5\) # (GND)))))
-- \imultiplicador|Add4~7\ = CARRY((\imultiplicador|Add3~8_combout\ & (!\imultiplicador|prod[4][7]~combout\ & !\imultiplicador|Add4~5\)) # (!\imultiplicador|Add3~8_combout\ & ((!\imultiplicador|Add4~5\) # (!\imultiplicador|prod[4][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~8_combout\,
	datab => \imultiplicador|prod[4][7]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add4~5\,
	combout => \imultiplicador|Add4~6_combout\,
	cout => \imultiplicador|Add4~7\);

-- Location: LCCOMB_X45_Y24_N20
\imultiplicador|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add4~8_combout\ = \imultiplicador|Add3~10_combout\ $ (\imultiplicador|Add4~7\ $ (!\iunidadlog|e0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~10_combout\,
	datad => \iunidadlog|e0\(4),
	cin => \imultiplicador|Add4~7\,
	combout => \imultiplicador|Add4~8_combout\);

-- Location: LCCOMB_X45_Y24_N26
\imultiplicador|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add5~4_combout\ = ((\imultiplicador|Add4~6_combout\ $ (\imultiplicador|prod[4][6]~combout\ $ (!\imultiplicador|Add5~3\)))) # (GND)
-- \imultiplicador|Add5~5\ = CARRY((\imultiplicador|Add4~6_combout\ & ((\imultiplicador|prod[4][6]~combout\) # (!\imultiplicador|Add5~3\))) # (!\imultiplicador|Add4~6_combout\ & (\imultiplicador|prod[4][6]~combout\ & !\imultiplicador|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add4~6_combout\,
	datab => \imultiplicador|prod[4][6]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add5~3\,
	combout => \imultiplicador|Add5~4_combout\,
	cout => \imultiplicador|Add5~5\);

-- Location: LCCOMB_X44_Y25_N30
\imux5bits3to1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux3~0_combout\ = (\icontrol|comb~0_combout\ & (\isumador|b_j\(1) $ (\isumador|i_CarryLookAhead|c[1]~0_combout\ $ (\A_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(1),
	datab => \icontrol|comb~0_combout\,
	datac => \isumador|i_CarryLookAhead|c[1]~0_combout\,
	datad => \A_in~combout\(1),
	combout => \imux5bits3to1|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y25_N10
\imultiplicador|prod[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[0][1]~combout\ = (\A_in~combout\(1) & \B_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(1),
	datac => \B_in~combout\(0),
	combout => \imultiplicador|prod[0][1]~combout\);

-- Location: LCCOMB_X44_Y25_N0
\isumador|i_CarryLookAhead|c[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[2]~1_combout\ = (\icontrol|sel_b~combout\ & ((\B_in~combout\(0) & ((\A_in~combout\(0)))) # (!\B_in~combout\(0) & (\icontrol|sel_r~combout\)))) # (!\icontrol|sel_b~combout\ & (((\A_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_r~combout\,
	datab => \icontrol|sel_b~combout\,
	datac => \A_in~combout\(0),
	datad => \B_in~combout\(0),
	combout => \isumador|i_CarryLookAhead|c[2]~1_combout\);

-- Location: LCCOMB_X44_Y25_N10
\isumador|i_CarryLookAhead|c[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[2]~2_combout\ = (\isumador|i_CarryLookAhead|c[2]~1_combout\ & ((\isumador|b_j\(1)) # (\A_in~combout\(1)))) # (!\isumador|i_CarryLookAhead|c[2]~1_combout\ & (\isumador|b_j\(1) & \A_in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \isumador|i_CarryLookAhead|c[2]~1_combout\,
	datac => \isumador|b_j\(1),
	datad => \A_in~combout\(1),
	combout => \isumador|i_CarryLookAhead|c[2]~2_combout\);

-- Location: LCCOMB_X47_Y25_N14
\imultiplicador|prod[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[0][2]~combout\ = (\B_in~combout\(0) & \A_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(0),
	datad => \A_in~combout\(2),
	combout => \imultiplicador|prod[0][2]~combout\);

-- Location: LCCOMB_X44_Y25_N14
\isumador|b_j[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|b_j\(2) = \icontrol|sel_r~combout\ $ (((\icontrol|sel_b~combout\ & \B_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_r~combout\,
	datac => \icontrol|sel_b~combout\,
	datad => \B_in~combout\(2),
	combout => \isumador|b_j\(2));

-- Location: LCCOMB_X47_Y25_N16
\imultiplicador|prod[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[1][3]~combout\ = (\B_in~combout\(1) & \A_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(1),
	datad => \A_in~combout\(2),
	combout => \imultiplicador|prod[1][3]~combout\);

-- Location: LCCOMB_X49_Y25_N16
\imultiplicador|prod[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[2][3]~combout\ = (\B_in~combout\(2) & \A_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~combout\(2),
	datad => \A_in~combout\(1),
	combout => \imultiplicador|prod[2][3]~combout\);

-- Location: LCCOMB_X45_Y26_N0
\imux5bits3to1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux0~0_combout\ = (\A_in~combout\(4) & (\icontrol|sel_log\(1) $ (((\icontrol|sel_log\(0)) # (\B_in~combout\(4)))))) # (!\A_in~combout\(4) & ((\icontrol|sel_log\(1) & ((\icontrol|sel_log\(0)) # (\B_in~combout\(4)))) # (!\icontrol|sel_log\(1) 
-- & (\icontrol|sel_log\(0) & \B_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(4),
	datab => \icontrol|sel_log\(1),
	datac => \icontrol|sel_log\(0),
	datad => \B_in~combout\(4),
	combout => \imux5bits3to1|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y25_N12
\imultiplicador|prod[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[1][4]~combout\ = (\B_in~combout\(1) & \A_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(1),
	datad => \A_in~combout\(3),
	combout => \imultiplicador|prod[1][4]~combout\);

-- Location: LCCOMB_X47_Y25_N6
\imultiplicador|prod[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[0][4]~combout\ = (\B_in~combout\(0) & \A_in~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(0),
	datad => \A_in~combout\(4),
	combout => \imultiplicador|prod[0][4]~combout\);

-- Location: LCCOMB_X46_Y24_N24
\imultiplicador|prod[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[3][4]~combout\ = (\A_in~combout\(1) & \B_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(1),
	datac => \B_in~combout\(3),
	combout => \imultiplicador|prod[3][4]~combout\);

-- Location: LCCOMB_X45_Y25_N24
\isumador|i_CarryLookAhead|c~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c~8_combout\ = (\A_in~combout\(4) & ((\isumador|b_j\(4)) # ((\isumador|b_j\(3) & \A_in~combout\(3))))) # (!\A_in~combout\(4) & (\isumador|b_j\(4) & (\isumador|b_j\(3) & \A_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(4),
	datab => \isumador|b_j\(4),
	datac => \isumador|b_j\(3),
	datad => \A_in~combout\(3),
	combout => \isumador|i_CarryLookAhead|c~8_combout\);

-- Location: LCCOMB_X47_Y25_N0
\imultiplicador|prod[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[1][5]~combout\ = (\B_in~combout\(1) & \A_in~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(1),
	datad => \A_in~combout\(4),
	combout => \imultiplicador|prod[1][5]~combout\);

-- Location: LCCOMB_X47_Y25_N18
\imultiplicador|prod[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[2][5]~combout\ = (\A_in~combout\(3) & \B_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(3),
	datac => \B_in~combout\(2),
	combout => \imultiplicador|prod[2][5]~combout\);

-- Location: LCCOMB_X46_Y25_N28
\imultiplicador|prod[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[2][6]~combout\ = (\A_in~combout\(4) & \B_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_in~combout\(4),
	datad => \B_in~combout\(2),
	combout => \imultiplicador|prod[2][6]~combout\);

-- Location: LCCOMB_X45_Y25_N18
\iunidadlog|e0[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iunidadlog|e0\(3) = (\B_in~combout\(3) & \A_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(3),
	datad => \A_in~combout\(3),
	combout => \iunidadlog|e0\(3));

-- Location: LCCOMB_X46_Y25_N30
\imultiplicador|prod[3][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[3][7]~combout\ = (\B_in~combout\(3) & \A_in~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(3),
	datad => \A_in~combout\(4),
	combout => \imultiplicador|prod[3][7]~combout\);

-- Location: LCCOMB_X45_Y25_N12
\iunidadlog|e0[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iunidadlog|e0\(4) = (\B_in~combout\(4) & \A_in~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_in~combout\(4),
	datac => \A_in~combout\(4),
	combout => \iunidadlog|e0\(4));

-- Location: LCCOMB_X45_Y26_N6
\icontrol|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~3_combout\ = (\sel_in~combout\(0)) # (\sel_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~3_combout\);

-- Location: LCCOMB_X45_Y26_N8
\icontrol|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~7_combout\ = (\sel_in~combout\(1) & (\sel_in~combout\(0) & \sel_in~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in~combout\(1),
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~7_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_in[0]~I\ : cycloneii_io
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
	padio => ww_sel_in(0),
	combout => \sel_in~combout\(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_in[2]~I\ : cycloneii_io
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
	padio => ww_sel_in(2),
	combout => \sel_in~combout\(2));

-- Location: LCCOMB_X45_Y26_N16
\icontrol|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~4_combout\ = (\sel_in~combout\(2)) # (!\sel_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~4_combout\);

-- Location: LCCOMB_X45_Y26_N12
\icontrol|sel_log[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_log\(0) = (\icontrol|comb~3_combout\ & ((\icontrol|sel_log\(0)) # (!\icontrol|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|comb~3_combout\,
	datac => \icontrol|comb~4_combout\,
	datad => \icontrol|sel_log\(0),
	combout => \icontrol|sel_log\(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_in[1]~I\ : cycloneii_io
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
	padio => ww_sel_in(1),
	combout => \sel_in~combout\(1));

-- Location: LCCOMB_X45_Y26_N2
\icontrol|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~5_combout\ = (\sel_in~combout\(1)) # (\sel_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(1),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~5_combout\);

-- Location: LCCOMB_X45_Y26_N4
\icontrol|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~6_combout\ = (\sel_in~combout\(2)) # (!\sel_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(1),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~6_combout\);

-- Location: LCCOMB_X45_Y26_N22
\icontrol|sel_log[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_log\(1) = (\icontrol|comb~5_combout\ & ((\icontrol|sel_log\(1)) # (!\icontrol|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \icontrol|comb~5_combout\,
	datac => \icontrol|comb~6_combout\,
	datad => \icontrol|sel_log\(1),
	combout => \icontrol|sel_log\(1));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_in[0]~I\ : cycloneii_io
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
	padio => ww_B_in(0),
	combout => \B_in~combout\(0));

-- Location: LCCOMB_X44_Y25_N24
\iunidadlog|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iunidadlog|Mux4~0_combout\ = (\A_in~combout\(0) & (\icontrol|sel_log\(1) $ (((\icontrol|sel_log\(0)) # (\B_in~combout\(0)))))) # (!\A_in~combout\(0) & ((\icontrol|sel_log\(0) & ((\icontrol|sel_log\(1)) # (\B_in~combout\(0)))) # (!\icontrol|sel_log\(0) & 
-- (\icontrol|sel_log\(1) & \B_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(0),
	datab => \icontrol|sel_log\(0),
	datac => \icontrol|sel_log\(1),
	datad => \B_in~combout\(0),
	combout => \iunidadlog|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y26_N24
\icontrol|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~0_combout\ = (\sel_in~combout\(2) & ((!\sel_in~combout\(0)) # (!\sel_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in~combout\(1),
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~0_combout\);

-- Location: LCCOMB_X45_Y26_N10
\icontrol|sel_s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_s[0]~0_combout\ = ((!\sel_in~combout\(2)) # (!\sel_in~combout\(0))) # (!\sel_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in~combout\(1),
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|sel_s[0]~0_combout\);

-- Location: LCCOMB_X45_Y26_N18
\icontrol|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~1_combout\ = ((\sel_in~combout\(0)) # (!\sel_in~combout\(2))) # (!\sel_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in~combout\(1),
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~1_combout\);

-- Location: LCCOMB_X45_Y26_N20
\icontrol|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|comb~2_combout\ = (\sel_in~combout\(1)) # (!\sel_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(1),
	datad => \sel_in~combout\(2),
	combout => \icontrol|comb~2_combout\);

-- Location: LCCOMB_X45_Y26_N26
\icontrol|sel_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_b~combout\ = (\icontrol|comb~1_combout\ & ((\icontrol|sel_b~combout\) # (!\icontrol|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \icontrol|comb~1_combout\,
	datac => \icontrol|comb~2_combout\,
	datad => \icontrol|sel_b~combout\,
	combout => \icontrol|sel_b~combout\);

-- Location: LCCOMB_X44_Y25_N12
\imux5bits3to1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux4~0_combout\ = (\icontrol|sel_s[0]~0_combout\ & (\A_in~combout\(0) $ (((\B_in~combout\(0)) # (!\icontrol|sel_b~combout\))))) # (!\icontrol|sel_s[0]~0_combout\ & (\A_in~combout\(0) & ((\B_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(0),
	datab => \icontrol|sel_s[0]~0_combout\,
	datac => \icontrol|sel_b~combout\,
	datad => \B_in~combout\(0),
	combout => \imux5bits3to1|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y25_N6
\imux5bits3to1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux4~1_combout\ = (\icontrol|comb~0_combout\ & (((\imux5bits3to1|Mux4~0_combout\)))) # (!\icontrol|comb~0_combout\ & ((\icontrol|sel_s[0]~0_combout\ & (\iunidadlog|Mux4~0_combout\)) # (!\icontrol|sel_s[0]~0_combout\ & 
-- ((\imux5bits3to1|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iunidadlog|Mux4~0_combout\,
	datab => \icontrol|comb~0_combout\,
	datac => \icontrol|sel_s[0]~0_combout\,
	datad => \imux5bits3to1|Mux4~0_combout\,
	combout => \imux5bits3to1|Mux4~1_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_in[1]~I\ : cycloneii_io
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
	padio => ww_A_in(1),
	combout => \A_in~combout\(1));

-- Location: LCCOMB_X44_Y25_N8
\imux5bits3to1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux3~1_combout\ = (\icontrol|sel_log\(1) & (\A_in~combout\(1) $ (((\B_in~combout\(1)) # (\icontrol|sel_log\(0)))))) # (!\icontrol|sel_log\(1) & ((\B_in~combout\(1) & ((\icontrol|sel_log\(0)) # (\A_in~combout\(1)))) # (!\B_in~combout\(1) & 
-- (\icontrol|sel_log\(0) & \A_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~combout\(1),
	datab => \icontrol|sel_log\(0),
	datac => \icontrol|sel_log\(1),
	datad => \A_in~combout\(1),
	combout => \imux5bits3to1|Mux3~1_combout\);

-- Location: LCCOMB_X44_Y25_N18
\imux5bits3to1|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux3~2_combout\ = (\icontrol|sel_s[0]~0_combout\ & ((\imux5bits3to1|Mux3~0_combout\) # ((\imux5bits3to1|Mux3~1_combout\ & !\icontrol|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imux5bits3to1|Mux3~0_combout\,
	datab => \imux5bits3to1|Mux3~1_combout\,
	datac => \icontrol|comb~0_combout\,
	datad => \icontrol|sel_s[0]~0_combout\,
	combout => \imux5bits3to1|Mux3~2_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_in[1]~I\ : cycloneii_io
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
	padio => ww_B_in(1),
	combout => \B_in~combout\(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_in[0]~I\ : cycloneii_io
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
	padio => ww_A_in(0),
	combout => \A_in~combout\(0));

-- Location: LCCOMB_X47_Y25_N8
\imultiplicador|prod[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[1][1]~combout\ = (\B_in~combout\(1) & \A_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(1),
	datad => \A_in~combout\(0),
	combout => \imultiplicador|prod[1][1]~combout\);

-- Location: LCCOMB_X47_Y25_N20
\imultiplicador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add0~0_combout\ = (\imultiplicador|prod[0][1]~combout\ & (\imultiplicador|prod[1][1]~combout\ $ (VCC))) # (!\imultiplicador|prod[0][1]~combout\ & (\imultiplicador|prod[1][1]~combout\ & VCC))
-- \imultiplicador|Add0~1\ = CARRY((\imultiplicador|prod[0][1]~combout\ & \imultiplicador|prod[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[0][1]~combout\,
	datab => \imultiplicador|prod[1][1]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add0~0_combout\,
	cout => \imultiplicador|Add0~1\);

-- Location: LCCOMB_X48_Y25_N24
\imux5bits3to1|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux3~3_combout\ = (\imux5bits3to1|Mux3~2_combout\) # ((\imultiplicador|Add0~0_combout\ & !\icontrol|sel_s[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imux5bits3to1|Mux3~2_combout\,
	datac => \imultiplicador|Add0~0_combout\,
	datad => \icontrol|sel_s[0]~0_combout\,
	combout => \imux5bits3to1|Mux3~3_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_in[2]~I\ : cycloneii_io
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
	padio => ww_A_in(2),
	combout => \A_in~combout\(2));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_in[2]~I\ : cycloneii_io
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
	padio => ww_B_in(2),
	combout => \B_in~combout\(2));

-- Location: LCCOMB_X44_Y25_N22
\isumador|GenSum:2:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\ = \icontrol|sel_r~combout\ $ (\A_in~combout\(2) $ (((\icontrol|sel_b~combout\ & \B_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_r~combout\,
	datab => \A_in~combout\(2),
	datac => \icontrol|sel_b~combout\,
	datad => \B_in~combout\(2),
	combout => \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X44_Y25_N28
\imux5bits3to1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux2~0_combout\ = (\icontrol|sel_log\(1) & (\A_in~combout\(2) $ (((\B_in~combout\(2)) # (\icontrol|sel_log\(0)))))) # (!\icontrol|sel_log\(1) & ((\B_in~combout\(2) & ((\icontrol|sel_log\(0)) # (\A_in~combout\(2)))) # (!\B_in~combout\(2) & 
-- (\icontrol|sel_log\(0) & \A_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~combout\(2),
	datab => \icontrol|sel_log\(0),
	datac => \icontrol|sel_log\(1),
	datad => \A_in~combout\(2),
	combout => \imux5bits3to1|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y25_N20
\imux5bits3to1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux2~1_combout\ = (\icontrol|comb~0_combout\ & (\isumador|i_CarryLookAhead|c[2]~2_combout\ $ ((\isumador|GenSum:2:i_Sumador1Bit|p_i~combout\)))) # (!\icontrol|comb~0_combout\ & (((\imux5bits3to1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|i_CarryLookAhead|c[2]~2_combout\,
	datab => \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\,
	datac => \icontrol|comb~0_combout\,
	datad => \imux5bits3to1|Mux2~0_combout\,
	combout => \imux5bits3to1|Mux2~1_combout\);

-- Location: LCCOMB_X46_Y25_N0
\imultiplicador|prod[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[2][2]~combout\ = (\A_in~combout\(0) & \B_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_in~combout\(0),
	datad => \B_in~combout\(2),
	combout => \imultiplicador|prod[2][2]~combout\);

-- Location: LCCOMB_X46_Y25_N4
\imultiplicador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add1~0_combout\ = (\imultiplicador|Add0~2_combout\ & (\imultiplicador|prod[2][2]~combout\ $ (VCC))) # (!\imultiplicador|Add0~2_combout\ & (\imultiplicador|prod[2][2]~combout\ & VCC))
-- \imultiplicador|Add1~1\ = CARRY((\imultiplicador|Add0~2_combout\ & \imultiplicador|prod[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add0~2_combout\,
	datab => \imultiplicador|prod[2][2]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add1~0_combout\,
	cout => \imultiplicador|Add1~1\);

-- Location: LCCOMB_X48_Y25_N2
\imux5bits3to1|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux2~2_combout\ = (\icontrol|sel_s[0]~0_combout\ & (\imux5bits3to1|Mux2~1_combout\)) # (!\icontrol|sel_s[0]~0_combout\ & ((\imultiplicador|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_s[0]~0_combout\,
	datab => \imux5bits3to1|Mux2~1_combout\,
	datac => \imultiplicador|Add1~0_combout\,
	combout => \imux5bits3to1|Mux2~2_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_in[3]~I\ : cycloneii_io
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
	padio => ww_A_in(3),
	combout => \A_in~combout\(3));

-- Location: LCCOMB_X45_Y26_N28
\imux5bits3to1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux1~0_combout\ = (\icontrol|sel_log\(1) & (\A_in~combout\(3) $ (((\B_in~combout\(3)) # (\icontrol|sel_log\(0)))))) # (!\icontrol|sel_log\(1) & ((\B_in~combout\(3) & ((\icontrol|sel_log\(0)) # (\A_in~combout\(3)))) # (!\B_in~combout\(3) & 
-- (\icontrol|sel_log\(0) & \A_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~combout\(3),
	datab => \icontrol|sel_log\(1),
	datac => \icontrol|sel_log\(0),
	datad => \A_in~combout\(3),
	combout => \imux5bits3to1|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y25_N4
\isumador|i_CarryLookAhead|c[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[1]~0_combout\ = (\icontrol|sel_b~combout\ & ((\B_in~combout\(0) & ((\A_in~combout\(0)))) # (!\B_in~combout\(0) & (\icontrol|sel_r~combout\)))) # (!\icontrol|sel_b~combout\ & (((\A_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_r~combout\,
	datab => \icontrol|sel_b~combout\,
	datac => \A_in~combout\(0),
	datad => \B_in~combout\(0),
	combout => \isumador|i_CarryLookAhead|c[1]~0_combout\);

-- Location: LCCOMB_X44_Y25_N16
\isumador|i_CarryLookAhead|c[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[3]~4_combout\ = (\isumador|GenSum:2:i_Sumador1Bit|p_i~combout\ & (\isumador|i_CarryLookAhead|c[1]~0_combout\ & (\isumador|b_j\(1) $ (\A_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(1),
	datab => \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\,
	datac => \isumador|i_CarryLookAhead|c[1]~0_combout\,
	datad => \A_in~combout\(1),
	combout => \isumador|i_CarryLookAhead|c[3]~4_combout\);

-- Location: LCCOMB_X45_Y26_N30
\icontrol|sel_s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_s[0]~1_combout\ = (\sel_in~combout\(0) & \sel_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_in~combout\(0),
	datad => \sel_in~combout\(2),
	combout => \icontrol|sel_s[0]~1_combout\);

-- Location: LCCOMB_X44_Y26_N0
\icontrol|sel_r\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_r~combout\ = (\icontrol|sel_s[0]~1_combout\ & ((\icontrol|sel_r~combout\) # (!\sel_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \icontrol|sel_s[0]~1_combout\,
	datac => \sel_in~combout\(1),
	datad => \icontrol|sel_r~combout\,
	combout => \icontrol|sel_r~combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_in[3]~I\ : cycloneii_io
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
	padio => ww_B_in(3),
	combout => \B_in~combout\(3));

-- Location: LCCOMB_X45_Y25_N8
\isumador|b_j[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|b_j\(3) = \icontrol|sel_r~combout\ $ (((\icontrol|sel_b~combout\ & \B_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_b~combout\,
	datab => \icontrol|sel_r~combout\,
	datac => \B_in~combout\(3),
	combout => \isumador|b_j\(3));

-- Location: LCCOMB_X44_Y25_N2
\isumador|b_j[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|b_j\(1) = \icontrol|sel_r~combout\ $ (((\icontrol|sel_b~combout\ & \B_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_r~combout\,
	datac => \icontrol|sel_b~combout\,
	datad => \B_in~combout\(1),
	combout => \isumador|b_j\(1));

-- Location: LCCOMB_X45_Y25_N2
\isumador|i_CarryLookAhead|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c~3_combout\ = (\isumador|b_j\(2) & ((\A_in~combout\(2)) # ((\A_in~combout\(1) & \isumador|b_j\(1))))) # (!\isumador|b_j\(2) & (\A_in~combout\(2) & (\A_in~combout\(1) & \isumador|b_j\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(2),
	datab => \A_in~combout\(2),
	datac => \A_in~combout\(1),
	datad => \isumador|b_j\(1),
	combout => \isumador|i_CarryLookAhead|c~3_combout\);

-- Location: LCCOMB_X45_Y25_N4
\isumador|GenSum:3:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|GenSum:3:i_Sumador1Bit|s_i~combout\ = \A_in~combout\(3) $ (\isumador|b_j\(3) $ (((\isumador|i_CarryLookAhead|c[3]~4_combout\) # (\isumador|i_CarryLookAhead|c~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(3),
	datab => \isumador|i_CarryLookAhead|c[3]~4_combout\,
	datac => \isumador|b_j\(3),
	datad => \isumador|i_CarryLookAhead|c~3_combout\,
	combout => \isumador|GenSum:3:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X45_Y26_N14
\imux5bits3to1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux1~1_combout\ = (\icontrol|sel_s[0]~0_combout\ & ((\icontrol|comb~0_combout\ & ((\isumador|GenSum:3:i_Sumador1Bit|s_i~combout\))) # (!\icontrol|comb~0_combout\ & (\imux5bits3to1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_s[0]~0_combout\,
	datab => \imux5bits3to1|Mux1~0_combout\,
	datac => \icontrol|comb~0_combout\,
	datad => \isumador|GenSum:3:i_Sumador1Bit|s_i~combout\,
	combout => \imux5bits3to1|Mux1~1_combout\);

-- Location: LCCOMB_X46_Y25_N2
\imultiplicador|prod[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[3][3]~combout\ = (\B_in~combout\(3) & \A_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_in~combout\(3),
	datac => \A_in~combout\(0),
	combout => \imultiplicador|prod[3][3]~combout\);

-- Location: LCCOMB_X46_Y25_N16
\imultiplicador|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add2~0_combout\ = (\imultiplicador|Add1~2_combout\ & (\imultiplicador|prod[3][3]~combout\ $ (VCC))) # (!\imultiplicador|Add1~2_combout\ & (\imultiplicador|prod[3][3]~combout\ & VCC))
-- \imultiplicador|Add2~1\ = CARRY((\imultiplicador|Add1~2_combout\ & \imultiplicador|prod[3][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add1~2_combout\,
	datab => \imultiplicador|prod[3][3]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add2~0_combout\,
	cout => \imultiplicador|Add2~1\);

-- Location: LCCOMB_X46_Y26_N0
\imux5bits3to1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux1~2_combout\ = (\imux5bits3to1|Mux1~1_combout\) # ((\imultiplicador|Add2~0_combout\ & !\icontrol|sel_s[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imux5bits3to1|Mux1~1_combout\,
	datab => \imultiplicador|Add2~0_combout\,
	datac => \icontrol|sel_s[0]~0_combout\,
	combout => \imux5bits3to1|Mux1~2_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_in[4]~I\ : cycloneii_io
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
	padio => ww_A_in(4),
	combout => \A_in~combout\(4));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_in[4]~I\ : cycloneii_io
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
	padio => ww_B_in(4),
	combout => \B_in~combout\(4));

-- Location: LCCOMB_X45_Y25_N22
\isumador|GenSum:4:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ = \icontrol|sel_r~combout\ $ (\A_in~combout\(4) $ (((\icontrol|sel_b~combout\ & \B_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_b~combout\,
	datab => \icontrol|sel_r~combout\,
	datac => \A_in~combout\(4),
	datad => \B_in~combout\(4),
	combout => \isumador|GenSum:4:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X44_Y25_N26
\isumador|i_CarryLookAhead|c[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[4]~6_combout\ = (\isumador|GenSum:2:i_Sumador1Bit|p_i~combout\ & ((\isumador|b_j\(1) & ((\isumador|i_CarryLookAhead|c[1]~0_combout\) # (\A_in~combout\(1)))) # (!\isumador|b_j\(1) & (\isumador|i_CarryLookAhead|c[1]~0_combout\ & 
-- \A_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(1),
	datab => \isumador|GenSum:2:i_Sumador1Bit|p_i~combout\,
	datac => \isumador|i_CarryLookAhead|c[1]~0_combout\,
	datad => \A_in~combout\(1),
	combout => \isumador|i_CarryLookAhead|c[4]~6_combout\);

-- Location: LCCOMB_X45_Y25_N0
\isumador|i_CarryLookAhead|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c~5_combout\ = (\isumador|b_j\(3) & ((\A_in~combout\(3)) # ((\isumador|b_j\(2) & \A_in~combout\(2))))) # (!\isumador|b_j\(3) & (\isumador|b_j\(2) & (\A_in~combout\(2) & \A_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(2),
	datab => \A_in~combout\(2),
	datac => \isumador|b_j\(3),
	datad => \A_in~combout\(3),
	combout => \isumador|i_CarryLookAhead|c~5_combout\);

-- Location: LCCOMB_X45_Y25_N10
\isumador|i_CarryLookAhead|c[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[4]~7_combout\ = (\isumador|i_CarryLookAhead|c~5_combout\) # ((\isumador|i_CarryLookAhead|c[4]~6_combout\ & (\A_in~combout\(3) $ (\isumador|b_j\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(3),
	datab => \isumador|i_CarryLookAhead|c[4]~6_combout\,
	datac => \isumador|b_j\(3),
	datad => \isumador|i_CarryLookAhead|c~5_combout\,
	combout => \isumador|i_CarryLookAhead|c[4]~7_combout\);

-- Location: LCCOMB_X45_Y25_N20
\imux5bits3to1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux0~1_combout\ = (\icontrol|comb~0_combout\ & ((\isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ $ (\isumador|i_CarryLookAhead|c[4]~7_combout\)))) # (!\icontrol|comb~0_combout\ & (\imux5bits3to1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imux5bits3to1|Mux0~0_combout\,
	datab => \isumador|GenSum:4:i_Sumador1Bit|p_i~combout\,
	datac => \icontrol|comb~0_combout\,
	datad => \isumador|i_CarryLookAhead|c[4]~7_combout\,
	combout => \imux5bits3to1|Mux0~1_combout\);

-- Location: LCCOMB_X46_Y24_N10
\imultiplicador|prod[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[4][4]~combout\ = (\B_in~combout\(4) & \A_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(4),
	datad => \A_in~combout\(0),
	combout => \imultiplicador|prod[4][4]~combout\);

-- Location: LCCOMB_X45_Y24_N0
\imultiplicador|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add3~0_combout\ = (\imultiplicador|Add2~2_combout\ & (\imultiplicador|prod[4][4]~combout\ $ (VCC))) # (!\imultiplicador|Add2~2_combout\ & (\imultiplicador|prod[4][4]~combout\ & VCC))
-- \imultiplicador|Add3~1\ = CARRY((\imultiplicador|Add2~2_combout\ & \imultiplicador|prod[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add2~2_combout\,
	datab => \imultiplicador|prod[4][4]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add3~0_combout\,
	cout => \imultiplicador|Add3~1\);

-- Location: LCCOMB_X46_Y24_N20
\imux5bits3to1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux5bits3to1|Mux0~2_combout\ = (\icontrol|sel_s[0]~0_combout\ & (\imux5bits3to1|Mux0~1_combout\)) # (!\icontrol|sel_s[0]~0_combout\ & ((\imultiplicador|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imux5bits3to1|Mux0~1_combout\,
	datac => \imultiplicador|Add3~0_combout\,
	datad => \icontrol|sel_s[0]~0_combout\,
	combout => \imux5bits3to1|Mux0~2_combout\);

-- Location: LCCOMB_X45_Y24_N22
\imultiplicador|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add5~0_combout\ = (\imultiplicador|Add4~2_combout\ & (\imultiplicador|prod[4][4]~combout\ $ (VCC))) # (!\imultiplicador|Add4~2_combout\ & (\imultiplicador|prod[4][4]~combout\ & VCC))
-- \imultiplicador|Add5~1\ = CARRY((\imultiplicador|Add4~2_combout\ & \imultiplicador|prod[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add4~2_combout\,
	datab => \imultiplicador|prod[4][4]~combout\,
	datad => VCC,
	combout => \imultiplicador|Add5~0_combout\,
	cout => \imultiplicador|Add5~1\);

-- Location: LCCOMB_X46_Y24_N28
\icontrol|sel_ov\ : cycloneii_lcell_comb
-- Equation(s):
-- \icontrol|sel_ov~combout\ = (!\icontrol|comb~7_combout\ & ((\icontrol|comb~0_combout\) # (\icontrol|sel_ov~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|comb~7_combout\,
	datac => \icontrol|comb~0_combout\,
	datad => \icontrol|sel_ov~combout\,
	combout => \icontrol|sel_ov~combout\);

-- Location: LCCOMB_X45_Y24_N30
\imux|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux|Selector0~1_combout\ = (!\icontrol|sel_ov~combout\ & ((\imultiplicador|Add4~0_combout\ & ((!\imultiplicador|Add3~0_combout\) # (!\imultiplicador|Add5~0_combout\))) # (!\imultiplicador|Add4~0_combout\ & ((\imultiplicador|Add5~0_combout\) # 
-- (\imultiplicador|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add4~0_combout\,
	datab => \imultiplicador|Add5~0_combout\,
	datac => \icontrol|sel_ov~combout\,
	datad => \imultiplicador|Add3~0_combout\,
	combout => \imux|Selector0~1_combout\);

-- Location: LCCOMB_X45_Y25_N30
\isumador|b_j[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|b_j\(4) = \icontrol|sel_r~combout\ $ (((\icontrol|sel_b~combout\ & \B_in~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \icontrol|sel_b~combout\,
	datac => \icontrol|sel_r~combout\,
	datad => \B_in~combout\(4),
	combout => \isumador|b_j\(4));

-- Location: LCCOMB_X45_Y25_N26
\isumador|i_CarryLookAhead|c[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[5]~9_combout\ = (\A_in~combout\(4) & (!\isumador|b_j\(4) & (\isumador|b_j\(3) $ (\A_in~combout\(3))))) # (!\A_in~combout\(4) & (\isumador|b_j\(4) & (\isumador|b_j\(3) $ (\A_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(4),
	datab => \isumador|b_j\(4),
	datac => \isumador|b_j\(3),
	datad => \A_in~combout\(3),
	combout => \isumador|i_CarryLookAhead|c[5]~9_combout\);

-- Location: LCCOMB_X45_Y25_N28
\isumador|i_CarryLookAhead|c[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \isumador|i_CarryLookAhead|c[5]~10_combout\ = (\isumador|i_CarryLookAhead|c[5]~9_combout\ & ((\isumador|i_CarryLookAhead|c[4]~6_combout\) # ((\isumador|b_j\(2) & \A_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|b_j\(2),
	datab => \isumador|i_CarryLookAhead|c[5]~9_combout\,
	datac => \isumador|i_CarryLookAhead|c[4]~6_combout\,
	datad => \A_in~combout\(2),
	combout => \isumador|i_CarryLookAhead|c[5]~10_combout\);

-- Location: LCCOMB_X45_Y25_N14
\imux|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux|Selector0~0_combout\ = (\icontrol|sel_ov~combout\ & (\isumador|i_CarryLookAhead|c[4]~7_combout\ $ (((\isumador|i_CarryLookAhead|c~8_combout\) # (\isumador|i_CarryLookAhead|c[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isumador|i_CarryLookAhead|c~8_combout\,
	datab => \isumador|i_CarryLookAhead|c[5]~10_combout\,
	datac => \icontrol|sel_ov~combout\,
	datad => \isumador|i_CarryLookAhead|c[4]~7_combout\,
	combout => \imux|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y24_N26
\imultiplicador|prod[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[4][5]~combout\ = (\A_in~combout\(1) & \B_in~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(1),
	datac => \B_in~combout\(4),
	combout => \imultiplicador|prod[4][5]~combout\);

-- Location: LCCOMB_X46_Y24_N12
\imultiplicador|prod[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[4][6]~combout\ = (\B_in~combout\(4) & \A_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(4),
	datad => \A_in~combout\(2),
	combout => \imultiplicador|prod[4][6]~combout\);

-- Location: LCCOMB_X45_Y25_N16
\imultiplicador|prod[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[3][5]~combout\ = (\B_in~combout\(3) & \A_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(3),
	datad => \A_in~combout\(2),
	combout => \imultiplicador|prod[3][5]~combout\);

-- Location: LCCOMB_X46_Y24_N30
\iunidadlog|e0[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iunidadlog|e0\(2) = (\A_in~combout\(2) & \B_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(2),
	datad => \B_in~combout\(2),
	combout => \iunidadlog|e0\(2));

-- Location: LCCOMB_X47_Y25_N2
\imultiplicador|prod[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[0][3]~combout\ = (\B_in~combout\(0) & \A_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_in~combout\(0),
	datad => \A_in~combout\(3),
	combout => \imultiplicador|prod[0][3]~combout\);

-- Location: LCCOMB_X47_Y25_N4
\iunidadlog|e0[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iunidadlog|e0\(1) = (\A_in~combout\(1) & \B_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_in~combout\(1),
	datac => \B_in~combout\(1),
	combout => \iunidadlog|e0\(1));

-- Location: LCCOMB_X45_Y24_N24
\imultiplicador|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add5~2_combout\ = (\imultiplicador|prod[4][5]~combout\ & ((\imultiplicador|Add4~4_combout\ & (\imultiplicador|Add5~1\ & VCC)) # (!\imultiplicador|Add4~4_combout\ & (!\imultiplicador|Add5~1\)))) # (!\imultiplicador|prod[4][5]~combout\ & 
-- ((\imultiplicador|Add4~4_combout\ & (!\imultiplicador|Add5~1\)) # (!\imultiplicador|Add4~4_combout\ & ((\imultiplicador|Add5~1\) # (GND)))))
-- \imultiplicador|Add5~3\ = CARRY((\imultiplicador|prod[4][5]~combout\ & (!\imultiplicador|Add4~4_combout\ & !\imultiplicador|Add5~1\)) # (!\imultiplicador|prod[4][5]~combout\ & ((!\imultiplicador|Add5~1\) # (!\imultiplicador|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[4][5]~combout\,
	datab => \imultiplicador|Add4~4_combout\,
	datad => VCC,
	cin => \imultiplicador|Add5~1\,
	combout => \imultiplicador|Add5~2_combout\,
	cout => \imultiplicador|Add5~3\);

-- Location: LCCOMB_X46_Y24_N0
\imultiplicador|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add6~0_combout\ = (\imultiplicador|prod[4][4]~combout\ & (\imultiplicador|Add5~2_combout\ $ (VCC))) # (!\imultiplicador|prod[4][4]~combout\ & (\imultiplicador|Add5~2_combout\ & VCC))
-- \imultiplicador|Add6~1\ = CARRY((\imultiplicador|prod[4][4]~combout\ & \imultiplicador|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[4][4]~combout\,
	datab => \imultiplicador|Add5~2_combout\,
	datad => VCC,
	combout => \imultiplicador|Add6~0_combout\,
	cout => \imultiplicador|Add6~1\);

-- Location: LCCOMB_X46_Y24_N2
\imultiplicador|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add6~2_combout\ = (\imultiplicador|Add5~4_combout\ & ((\imultiplicador|prod[4][5]~combout\ & (\imultiplicador|Add6~1\ & VCC)) # (!\imultiplicador|prod[4][5]~combout\ & (!\imultiplicador|Add6~1\)))) # (!\imultiplicador|Add5~4_combout\ & 
-- ((\imultiplicador|prod[4][5]~combout\ & (!\imultiplicador|Add6~1\)) # (!\imultiplicador|prod[4][5]~combout\ & ((\imultiplicador|Add6~1\) # (GND)))))
-- \imultiplicador|Add6~3\ = CARRY((\imultiplicador|Add5~4_combout\ & (!\imultiplicador|prod[4][5]~combout\ & !\imultiplicador|Add6~1\)) # (!\imultiplicador|Add5~4_combout\ & ((!\imultiplicador|Add6~1\) # (!\imultiplicador|prod[4][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add5~4_combout\,
	datab => \imultiplicador|prod[4][5]~combout\,
	datad => VCC,
	cin => \imultiplicador|Add6~1\,
	combout => \imultiplicador|Add6~2_combout\,
	cout => \imultiplicador|Add6~3\);

-- Location: LCCOMB_X46_Y24_N14
\imultiplicador|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add7~0_combout\ = (\imultiplicador|prod[4][4]~combout\ & (\imultiplicador|Add6~2_combout\ $ (VCC))) # (!\imultiplicador|prod[4][4]~combout\ & (\imultiplicador|Add6~2_combout\ & VCC))
-- \imultiplicador|Add7~1\ = CARRY((\imultiplicador|prod[4][4]~combout\ & \imultiplicador|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|prod[4][4]~combout\,
	datab => \imultiplicador|Add6~2_combout\,
	datad => VCC,
	combout => \imultiplicador|Add7~0_combout\,
	cout => \imultiplicador|Add7~1\);

-- Location: LCCOMB_X46_Y24_N8
\imux|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux|Selector0~3_combout\ = (!\icontrol|sel_ov~combout\ & ((\imultiplicador|Add3~0_combout\ & ((!\imultiplicador|Add6~0_combout\) # (!\imultiplicador|Add7~0_combout\))) # (!\imultiplicador|Add3~0_combout\ & ((\imultiplicador|Add7~0_combout\) # 
-- (\imultiplicador|Add6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~0_combout\,
	datab => \icontrol|sel_ov~combout\,
	datac => \imultiplicador|Add7~0_combout\,
	datad => \imultiplicador|Add6~0_combout\,
	combout => \imux|Selector0~3_combout\);

-- Location: LCCOMB_X45_Y25_N6
\imultiplicador|prod[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|prod[4][7]~combout\ = (\B_in~combout\(4) & \A_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_in~combout\(4),
	datad => \A_in~combout\(3),
	combout => \imultiplicador|prod[4][7]~combout\);

-- Location: LCCOMB_X45_Y24_N28
\imultiplicador|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add5~6_combout\ = \imultiplicador|Add4~8_combout\ $ (\imultiplicador|Add5~5\ $ (\imultiplicador|prod[4][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add4~8_combout\,
	datad => \imultiplicador|prod[4][7]~combout\,
	cin => \imultiplicador|Add5~5\,
	combout => \imultiplicador|Add5~6_combout\);

-- Location: LCCOMB_X46_Y24_N4
\imultiplicador|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add6~4_combout\ = \imultiplicador|Add5~6_combout\ $ (\imultiplicador|Add6~3\ $ (!\imultiplicador|prod[4][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imultiplicador|Add5~6_combout\,
	datad => \imultiplicador|prod[4][6]~combout\,
	cin => \imultiplicador|Add6~3\,
	combout => \imultiplicador|Add6~4_combout\);

-- Location: LCCOMB_X46_Y24_N16
\imultiplicador|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imultiplicador|Add7~2_combout\ = \imultiplicador|Add6~4_combout\ $ (\imultiplicador|Add7~1\ $ (\imultiplicador|prod[4][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imultiplicador|Add6~4_combout\,
	datad => \imultiplicador|prod[4][5]~combout\,
	cin => \imultiplicador|Add7~1\,
	combout => \imultiplicador|Add7~2_combout\);

-- Location: LCCOMB_X46_Y24_N22
\imux|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux|Selector0~2_combout\ = (!\icontrol|sel_ov~combout\ & (\imultiplicador|Add3~0_combout\ $ (\imultiplicador|Add7~2_combout\ $ (\imultiplicador|prod[4][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imultiplicador|Add3~0_combout\,
	datab => \icontrol|sel_ov~combout\,
	datac => \imultiplicador|Add7~2_combout\,
	datad => \imultiplicador|prod[4][4]~combout\,
	combout => \imux|Selector0~2_combout\);

-- Location: LCCOMB_X46_Y24_N18
\imux|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \imux|Selector0~4_combout\ = (\imux|Selector0~1_combout\) # ((\imux|Selector0~0_combout\) # ((\imux|Selector0~3_combout\) # (\imux|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imux|Selector0~1_combout\,
	datab => \imux|Selector0~0_combout\,
	datac => \imux|Selector0~3_combout\,
	datad => \imux|Selector0~2_combout\,
	combout => \imux|Selector0~4_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_out[0]~I\ : cycloneii_io
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
	datain => \imux5bits3to1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_out(0));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_out[1]~I\ : cycloneii_io
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
	datain => \imux5bits3to1|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_out(1));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_out[2]~I\ : cycloneii_io
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
	datain => \imux5bits3to1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_out(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_out[3]~I\ : cycloneii_io
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
	datain => \imux5bits3to1|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_out(3));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_out[4]~I\ : cycloneii_io
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
	datain => \imux5bits3to1|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_out(4));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV_out~I\ : cycloneii_io
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
	datain => \imux|Selector0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OV_out);
END structure;


