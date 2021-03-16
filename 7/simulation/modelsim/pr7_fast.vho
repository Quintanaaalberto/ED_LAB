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

-- DATE "03/16/2021 20:22:27"

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

ENTITY 	pr7 IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	ov : OUT std_logic;
	sign : OUT std_logic;
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END pr7;

-- Design Ports Information
-- ov	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pr7 IS
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
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ov : std_logic;
SIGNAL ww_sign : std_logic;
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ialu|imultiplicador|Add0~0_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~2_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~6_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~0_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~4_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~6_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~4_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~8_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~6_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~4_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~8_combout\ : std_logic;
SIGNAL \idisplay|Add0~4_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[0][4]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[1][3]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[1][2]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[0][1]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[2][3]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[3][3]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[4][4]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[2][5]~combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[3]~1_combout\ : std_logic;
SIGNAL \ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \ialu|iunidadlog|Mux4~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux1~0_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c~8_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[3]~9_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux1~1_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux2~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux2~1_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux3~1_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~4_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~6_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~7_combout\ : std_logic;
SIGNAL \idisplay|comb~8_combout\ : std_logic;
SIGNAL \idisplay|restador[0]~0_combout\ : std_logic;
SIGNAL \idisplay|restador[1]~1_combout\ : std_logic;
SIGNAL \idisplay|restador[1]~2_combout\ : std_logic;
SIGNAL \idisplay|restador[1]~3_combout\ : std_logic;
SIGNAL \idisplay|d2[1]~4_combout\ : std_logic;
SIGNAL \idisplay|d2[1]~5_combout\ : std_logic;
SIGNAL \idisplay|comb~9_combout\ : std_logic;
SIGNAL \idisplay|comb~10_combout\ : std_logic;
SIGNAL \idisplay|restador[3]~4_combout\ : std_logic;
SIGNAL \idisplay|comb~11_combout\ : std_logic;
SIGNAL \idisplay|comb~12_combout\ : std_logic;
SIGNAL \idisplay|comb~13_combout\ : std_logic;
SIGNAL \idisplay|comb~14_combout\ : std_logic;
SIGNAL \ialu|icontrol|sel_s[0]~1_combout\ : std_logic;
SIGNAL \ialu|icontrol|sel_r~combout\ : std_logic;
SIGNAL \ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c~4_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~3_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~2_combout\ : std_logic;
SIGNAL \ialu|icontrol|sel_b~combout\ : std_logic;
SIGNAL \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[5]~5_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[5]~6_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[5]~7_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[4][8]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[1][5]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[1][4]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[0][3]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[0][2]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[1][1]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~1\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~3\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~5\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~7\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~9\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~10_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[2][6]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~8_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[2][4]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add0~4_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[2][2]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~1\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~3\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~5\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~7\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~9\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~10_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[3][7]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[3][6]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[3][5]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[3][4]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add1~2_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~1\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~3\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~5\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~7\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~9\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~10_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[4][7]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[4][6]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|prod[4][5]~combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~2_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~1\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~3\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~5\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~7\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~9\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~10_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~6_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~0_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~2_combout\ : std_logic;
SIGNAL \ialu|imux|Selector0~0_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add3~8_combout\ : std_logic;
SIGNAL \ialu|imux|Selector0~1_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~1_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~0_combout\ : std_logic;
SIGNAL \ialu|icontrol|sel_ov~combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[5]~0_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[4]~2_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c[4]~3_combout\ : std_logic;
SIGNAL \ialu|imux|Selector0~2_combout\ : std_logic;
SIGNAL \ialu|icontrol|comb~5_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux0~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux0~1_combout\ : std_logic;
SIGNAL \ialu|icontrol|sel_s[0]~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux0~2_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c~11_combout\ : std_logic;
SIGNAL \ialu|isumador|i_CarryLookAhead|c~10_combout\ : std_logic;
SIGNAL \ialu|isumador|GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux2~2_combout\ : std_logic;
SIGNAL \idisplay|N[2]~3_combout\ : std_logic;
SIGNAL \ialu|imux5bits|Selector4~0_combout\ : std_logic;
SIGNAL \ialu|isumador|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux3~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux3~2_combout\ : std_logic;
SIGNAL \idisplay|Add0~1_cout\ : std_logic;
SIGNAL \idisplay|Add0~2_combout\ : std_logic;
SIGNAL \idisplay|N[1]~4_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux4~1_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux4~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux4~2_combout\ : std_logic;
SIGNAL \idisplay|Add1~1\ : std_logic;
SIGNAL \idisplay|Add1~4\ : std_logic;
SIGNAL \idisplay|Add1~6_combout\ : std_logic;
SIGNAL \ialu|imultiplicador|Add2~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|Mux1~2_combout\ : std_logic;
SIGNAL \idisplay|Add0~3\ : std_logic;
SIGNAL \idisplay|Add0~5\ : std_logic;
SIGNAL \idisplay|Add0~7\ : std_logic;
SIGNAL \idisplay|Add0~8_combout\ : std_logic;
SIGNAL \idisplay|LessThan3~4_combout\ : std_logic;
SIGNAL \idisplay|Add0~6_combout\ : std_logic;
SIGNAL \idisplay|LessThan3~2_combout\ : std_logic;
SIGNAL \idisplay|LessThan3~3_combout\ : std_logic;
SIGNAL \idisplay|Add1~8_combout\ : std_logic;
SIGNAL \idisplay|N[3]~2_combout\ : std_logic;
SIGNAL \idisplay|Add1~7\ : std_logic;
SIGNAL \idisplay|Add1~9_combout\ : std_logic;
SIGNAL \idisplay|Add1~11_combout\ : std_logic;
SIGNAL \idisplay|Add1~0_combout\ : std_logic;
SIGNAL \idisplay|Add1~2_combout\ : std_logic;
SIGNAL \idisplay|Add1~3_combout\ : std_logic;
SIGNAL \idisplay|Add1~5_combout\ : std_logic;
SIGNAL \idisplay|Mux6~0_combout\ : std_logic;
SIGNAL \idisplay|Mux5~0_combout\ : std_logic;
SIGNAL \idisplay|Mux4~0_combout\ : std_logic;
SIGNAL \idisplay|Mux3~0_combout\ : std_logic;
SIGNAL \idisplay|Mux2~0_combout\ : std_logic;
SIGNAL \idisplay|Mux1~0_combout\ : std_logic;
SIGNAL \idisplay|Mux0~0_combout\ : std_logic;
SIGNAL \idisplay|Add0~9\ : std_logic;
SIGNAL \idisplay|Add0~10_combout\ : std_logic;
SIGNAL \idisplay|N[5]~5_combout\ : std_logic;
SIGNAL \idisplay|d2[1]~0_combout\ : std_logic;
SIGNAL \idisplay|LessThan4~0_combout\ : std_logic;
SIGNAL \idisplay|LessThan4~1_combout\ : std_logic;
SIGNAL \idisplay|d2[1]~1_combout\ : std_logic;
SIGNAL \idisplay|LessThan5~0_combout\ : std_logic;
SIGNAL \idisplay|d1[3]~0_combout\ : std_logic;
SIGNAL \idisplay|Mux12~2_combout\ : std_logic;
SIGNAL \idisplay|d2[0]~2_combout\ : std_logic;
SIGNAL \idisplay|Mux10~2_combout\ : std_logic;
SIGNAL \idisplay|d2[2]~3_combout\ : std_logic;
SIGNAL \idisplay|Mux9~0_combout\ : std_logic;
SIGNAL \idisplay|restador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ialu|isumador|b_j\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ialu|icontrol|sel_log\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \idisplay|ALT_INV_d2[1]~1_combout\ : std_logic;
SIGNAL \idisplay|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ialu|imux5bits3to1|ALT_INV_Mux0~2_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_sel <= sel;
ov <= ww_ov;
sign <= ww_sign;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\idisplay|ALT_INV_d2[1]~1_combout\ <= NOT \idisplay|d2[1]~1_combout\;
\idisplay|ALT_INV_Mux6~0_combout\ <= NOT \idisplay|Mux6~0_combout\;
\ialu|imux5bits3to1|ALT_INV_Mux0~2_combout\ <= NOT \ialu|imux5bits3to1|Mux0~2_combout\;

-- Location: LCCOMB_X37_Y21_N18
\ialu|imultiplicador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~0_combout\ = (\ialu|imultiplicador|prod[0][1]~combout\ & (\ialu|imultiplicador|prod[1][1]~combout\ $ (VCC))) # (!\ialu|imultiplicador|prod[0][1]~combout\ & (\ialu|imultiplicador|prod[1][1]~combout\ & VCC))
-- \ialu|imultiplicador|Add0~1\ = CARRY((\ialu|imultiplicador|prod[0][1]~combout\ & \ialu|imultiplicador|prod[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[0][1]~combout\,
	datab => \ialu|imultiplicador|prod[1][1]~combout\,
	datad => VCC,
	combout => \ialu|imultiplicador|Add0~0_combout\,
	cout => \ialu|imultiplicador|Add0~1\);

-- Location: LCCOMB_X37_Y21_N20
\ialu|imultiplicador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~2_combout\ = (\ialu|imultiplicador|prod[1][2]~combout\ & ((\ialu|imultiplicador|prod[0][2]~combout\ & (\ialu|imultiplicador|Add0~1\ & VCC)) # (!\ialu|imultiplicador|prod[0][2]~combout\ & (!\ialu|imultiplicador|Add0~1\)))) # 
-- (!\ialu|imultiplicador|prod[1][2]~combout\ & ((\ialu|imultiplicador|prod[0][2]~combout\ & (!\ialu|imultiplicador|Add0~1\)) # (!\ialu|imultiplicador|prod[0][2]~combout\ & ((\ialu|imultiplicador|Add0~1\) # (GND)))))
-- \ialu|imultiplicador|Add0~3\ = CARRY((\ialu|imultiplicador|prod[1][2]~combout\ & (!\ialu|imultiplicador|prod[0][2]~combout\ & !\ialu|imultiplicador|Add0~1\)) # (!\ialu|imultiplicador|prod[1][2]~combout\ & ((!\ialu|imultiplicador|Add0~1\) # 
-- (!\ialu|imultiplicador|prod[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[1][2]~combout\,
	datab => \ialu|imultiplicador|prod[0][2]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add0~1\,
	combout => \ialu|imultiplicador|Add0~2_combout\,
	cout => \ialu|imultiplicador|Add0~3\);

-- Location: LCCOMB_X37_Y21_N24
\ialu|imultiplicador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~6_combout\ = (\ialu|imultiplicador|prod[0][4]~combout\ & ((\ialu|imultiplicador|prod[1][4]~combout\ & (\ialu|imultiplicador|Add0~5\ & VCC)) # (!\ialu|imultiplicador|prod[1][4]~combout\ & (!\ialu|imultiplicador|Add0~5\)))) # 
-- (!\ialu|imultiplicador|prod[0][4]~combout\ & ((\ialu|imultiplicador|prod[1][4]~combout\ & (!\ialu|imultiplicador|Add0~5\)) # (!\ialu|imultiplicador|prod[1][4]~combout\ & ((\ialu|imultiplicador|Add0~5\) # (GND)))))
-- \ialu|imultiplicador|Add0~7\ = CARRY((\ialu|imultiplicador|prod[0][4]~combout\ & (!\ialu|imultiplicador|prod[1][4]~combout\ & !\ialu|imultiplicador|Add0~5\)) # (!\ialu|imultiplicador|prod[0][4]~combout\ & ((!\ialu|imultiplicador|Add0~5\) # 
-- (!\ialu|imultiplicador|prod[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[0][4]~combout\,
	datab => \ialu|imultiplicador|prod[1][4]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add0~5\,
	combout => \ialu|imultiplicador|Add0~6_combout\,
	cout => \ialu|imultiplicador|Add0~7\);

-- Location: LCCOMB_X38_Y21_N18
\ialu|imultiplicador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~0_combout\ = (\ialu|imultiplicador|Add0~2_combout\ & (\ialu|imultiplicador|prod[2][2]~combout\ $ (VCC))) # (!\ialu|imultiplicador|Add0~2_combout\ & (\ialu|imultiplicador|prod[2][2]~combout\ & VCC))
-- \ialu|imultiplicador|Add1~1\ = CARRY((\ialu|imultiplicador|Add0~2_combout\ & \ialu|imultiplicador|prod[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add0~2_combout\,
	datab => \ialu|imultiplicador|prod[2][2]~combout\,
	datad => VCC,
	combout => \ialu|imultiplicador|Add1~0_combout\,
	cout => \ialu|imultiplicador|Add1~1\);

-- Location: LCCOMB_X38_Y21_N22
\ialu|imultiplicador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~4_combout\ = ((\ialu|imultiplicador|Add0~6_combout\ $ (\ialu|imultiplicador|prod[2][4]~combout\ $ (!\ialu|imultiplicador|Add1~3\)))) # (GND)
-- \ialu|imultiplicador|Add1~5\ = CARRY((\ialu|imultiplicador|Add0~6_combout\ & ((\ialu|imultiplicador|prod[2][4]~combout\) # (!\ialu|imultiplicador|Add1~3\))) # (!\ialu|imultiplicador|Add0~6_combout\ & (\ialu|imultiplicador|prod[2][4]~combout\ & 
-- !\ialu|imultiplicador|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add0~6_combout\,
	datab => \ialu|imultiplicador|prod[2][4]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add1~3\,
	combout => \ialu|imultiplicador|Add1~4_combout\,
	cout => \ialu|imultiplicador|Add1~5\);

-- Location: LCCOMB_X38_Y21_N24
\ialu|imultiplicador|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~6_combout\ = (\ialu|imultiplicador|prod[2][5]~combout\ & ((\ialu|imultiplicador|Add0~8_combout\ & (\ialu|imultiplicador|Add1~5\ & VCC)) # (!\ialu|imultiplicador|Add0~8_combout\ & (!\ialu|imultiplicador|Add1~5\)))) # 
-- (!\ialu|imultiplicador|prod[2][5]~combout\ & ((\ialu|imultiplicador|Add0~8_combout\ & (!\ialu|imultiplicador|Add1~5\)) # (!\ialu|imultiplicador|Add0~8_combout\ & ((\ialu|imultiplicador|Add1~5\) # (GND)))))
-- \ialu|imultiplicador|Add1~7\ = CARRY((\ialu|imultiplicador|prod[2][5]~combout\ & (!\ialu|imultiplicador|Add0~8_combout\ & !\ialu|imultiplicador|Add1~5\)) # (!\ialu|imultiplicador|prod[2][5]~combout\ & ((!\ialu|imultiplicador|Add1~5\) # 
-- (!\ialu|imultiplicador|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[2][5]~combout\,
	datab => \ialu|imultiplicador|Add0~8_combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add1~5\,
	combout => \ialu|imultiplicador|Add1~6_combout\,
	cout => \ialu|imultiplicador|Add1~7\);

-- Location: LCCOMB_X39_Y21_N6
\ialu|imultiplicador|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~4_combout\ = ((\ialu|imultiplicador|Add1~6_combout\ $ (\ialu|imultiplicador|prod[3][5]~combout\ $ (!\ialu|imultiplicador|Add2~3\)))) # (GND)
-- \ialu|imultiplicador|Add2~5\ = CARRY((\ialu|imultiplicador|Add1~6_combout\ & ((\ialu|imultiplicador|prod[3][5]~combout\) # (!\ialu|imultiplicador|Add2~3\))) # (!\ialu|imultiplicador|Add1~6_combout\ & (\ialu|imultiplicador|prod[3][5]~combout\ & 
-- !\ialu|imultiplicador|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add1~6_combout\,
	datab => \ialu|imultiplicador|prod[3][5]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add2~3\,
	combout => \ialu|imultiplicador|Add2~4_combout\,
	cout => \ialu|imultiplicador|Add2~5\);

-- Location: LCCOMB_X38_Y21_N26
\ialu|imultiplicador|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~8_combout\ = ((\ialu|imultiplicador|Add0~10_combout\ $ (\ialu|imultiplicador|prod[2][6]~combout\ $ (!\ialu|imultiplicador|Add1~7\)))) # (GND)
-- \ialu|imultiplicador|Add1~9\ = CARRY((\ialu|imultiplicador|Add0~10_combout\ & ((\ialu|imultiplicador|prod[2][6]~combout\) # (!\ialu|imultiplicador|Add1~7\))) # (!\ialu|imultiplicador|Add0~10_combout\ & (\ialu|imultiplicador|prod[2][6]~combout\ & 
-- !\ialu|imultiplicador|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add0~10_combout\,
	datab => \ialu|imultiplicador|prod[2][6]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add1~7\,
	combout => \ialu|imultiplicador|Add1~8_combout\,
	cout => \ialu|imultiplicador|Add1~9\);

-- Location: LCCOMB_X39_Y21_N8
\ialu|imultiplicador|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~6_combout\ = (\ialu|imultiplicador|Add1~8_combout\ & ((\ialu|imultiplicador|prod[3][6]~combout\ & (\ialu|imultiplicador|Add2~5\ & VCC)) # (!\ialu|imultiplicador|prod[3][6]~combout\ & (!\ialu|imultiplicador|Add2~5\)))) # 
-- (!\ialu|imultiplicador|Add1~8_combout\ & ((\ialu|imultiplicador|prod[3][6]~combout\ & (!\ialu|imultiplicador|Add2~5\)) # (!\ialu|imultiplicador|prod[3][6]~combout\ & ((\ialu|imultiplicador|Add2~5\) # (GND)))))
-- \ialu|imultiplicador|Add2~7\ = CARRY((\ialu|imultiplicador|Add1~8_combout\ & (!\ialu|imultiplicador|prod[3][6]~combout\ & !\ialu|imultiplicador|Add2~5\)) # (!\ialu|imultiplicador|Add1~8_combout\ & ((!\ialu|imultiplicador|Add2~5\) # 
-- (!\ialu|imultiplicador|prod[3][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add1~8_combout\,
	datab => \ialu|imultiplicador|prod[3][6]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add2~5\,
	combout => \ialu|imultiplicador|Add2~6_combout\,
	cout => \ialu|imultiplicador|Add2~7\);

-- Location: LCCOMB_X39_Y21_N24
\ialu|imultiplicador|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~4_combout\ = ((\ialu|imultiplicador|Add2~6_combout\ $ (\ialu|imultiplicador|prod[4][6]~combout\ $ (!\ialu|imultiplicador|Add3~3\)))) # (GND)
-- \ialu|imultiplicador|Add3~5\ = CARRY((\ialu|imultiplicador|Add2~6_combout\ & ((\ialu|imultiplicador|prod[4][6]~combout\) # (!\ialu|imultiplicador|Add3~3\))) # (!\ialu|imultiplicador|Add2~6_combout\ & (\ialu|imultiplicador|prod[4][6]~combout\ & 
-- !\ialu|imultiplicador|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add2~6_combout\,
	datab => \ialu|imultiplicador|prod[4][6]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add3~3\,
	combout => \ialu|imultiplicador|Add3~4_combout\,
	cout => \ialu|imultiplicador|Add3~5\);

-- Location: LCCOMB_X39_Y21_N10
\ialu|imultiplicador|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~8_combout\ = ((\ialu|imultiplicador|prod[3][7]~combout\ $ (\ialu|imultiplicador|Add1~10_combout\ $ (!\ialu|imultiplicador|Add2~7\)))) # (GND)
-- \ialu|imultiplicador|Add2~9\ = CARRY((\ialu|imultiplicador|prod[3][7]~combout\ & ((\ialu|imultiplicador|Add1~10_combout\) # (!\ialu|imultiplicador|Add2~7\))) # (!\ialu|imultiplicador|prod[3][7]~combout\ & (\ialu|imultiplicador|Add1~10_combout\ & 
-- !\ialu|imultiplicador|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[3][7]~combout\,
	datab => \ialu|imultiplicador|Add1~10_combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add2~7\,
	combout => \ialu|imultiplicador|Add2~8_combout\,
	cout => \ialu|imultiplicador|Add2~9\);

-- Location: LCCOMB_X38_Y22_N20
\idisplay|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~4_combout\ = (\ialu|imux5bits3to1|Mux2~2_combout\ & (!\idisplay|Add0~3\ & VCC)) # (!\ialu|imux5bits3to1|Mux2~2_combout\ & (\idisplay|Add0~3\ $ (GND)))
-- \idisplay|Add0~5\ = CARRY((!\ialu|imux5bits3to1|Mux2~2_combout\ & !\idisplay|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux2~2_combout\,
	datad => VCC,
	cin => \idisplay|Add0~3\,
	combout => \idisplay|Add0~4_combout\,
	cout => \idisplay|Add0~5\);

-- Location: LCCOMB_X37_Y21_N10
\ialu|imultiplicador|prod[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[0][4]~combout\ = (\a~combout\(4) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(4),
	datad => \b~combout\(0),
	combout => \ialu|imultiplicador|prod[0][4]~combout\);

-- Location: LCCOMB_X37_Y21_N12
\ialu|imultiplicador|prod[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[1][3]~combout\ = (\b~combout\(1) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(2),
	combout => \ialu|imultiplicador|prod[1][3]~combout\);

-- Location: LCCOMB_X37_Y21_N16
\ialu|imultiplicador|prod[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[1][2]~combout\ = (\a~combout\(1) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	combout => \ialu|imultiplicador|prod[1][2]~combout\);

-- Location: LCCOMB_X37_Y21_N6
\ialu|imultiplicador|prod[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[0][1]~combout\ = (\b~combout\(0) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	combout => \ialu|imultiplicador|prod[0][1]~combout\);

-- Location: LCCOMB_X38_Y21_N10
\ialu|imultiplicador|prod[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[2][3]~combout\ = (\b~combout\(2) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(1),
	combout => \ialu|imultiplicador|prod[2][3]~combout\);

-- Location: LCCOMB_X38_Y21_N14
\ialu|imultiplicador|prod[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[3][3]~combout\ = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(3),
	combout => \ialu|imultiplicador|prod[3][3]~combout\);

-- Location: LCCOMB_X39_Y21_N16
\ialu|imultiplicador|prod[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[4][4]~combout\ = (\a~combout\(0) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(4),
	combout => \ialu|imultiplicador|prod[4][4]~combout\);

-- Location: LCCOMB_X38_Y21_N16
\ialu|imultiplicador|prod[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[2][5]~combout\ = (\b~combout\(2) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(3),
	combout => \ialu|imultiplicador|prod[2][5]~combout\);

-- Location: LCCOMB_X36_Y20_N24
\ialu|isumador|i_CarryLookAhead|c[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[3]~1_combout\ = (\ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ & ((\ialu|imux5bits|Selector4~0_combout\ & ((\a~combout\(0)))) # (!\ialu|imux5bits|Selector4~0_combout\ & (\ialu|icontrol|sel_r~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_r~combout\,
	datab => \ialu|imux5bits|Selector4~0_combout\,
	datac => \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\,
	datad => \a~combout\(0),
	combout => \ialu|isumador|i_CarryLookAhead|c[3]~1_combout\);

-- Location: LCCOMB_X37_Y20_N16
\ialu|isumador|GenSum:3:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\ = \ialu|icontrol|sel_r~combout\ $ (\a~combout\(3) $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X36_Y20_N12
\ialu|isumador|b_j[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|b_j\(0) = \ialu|icontrol|sel_r~combout\ $ (((\b~combout\(0)) # (!\ialu|icontrol|sel_b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \ialu|icontrol|sel_b~combout\,
	combout => \ialu|isumador|b_j\(0));

-- Location: LCCOMB_X37_Y20_N24
\ialu|iunidadlog|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|iunidadlog|Mux4~0_combout\ = (\ialu|icontrol|sel_log\(1) & (\a~combout\(0) $ (((\b~combout\(0)) # (\ialu|icontrol|sel_log\(0)))))) # (!\ialu|icontrol|sel_log\(1) & ((\b~combout\(0) & ((\ialu|icontrol|sel_log\(0)) # (\a~combout\(0)))) # 
-- (!\b~combout\(0) & (\ialu|icontrol|sel_log\(0) & \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \ialu|icontrol|sel_log\(0),
	datac => \ialu|icontrol|sel_log\(1),
	datad => \a~combout\(0),
	combout => \ialu|iunidadlog|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y21_N30
\ialu|imux5bits3to1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux1~0_combout\ = (\a~combout\(3) & (\ialu|icontrol|sel_log\(1) $ (((\ialu|icontrol|sel_log\(0)) # (\b~combout\(3)))))) # (!\a~combout\(3) & ((\ialu|icontrol|sel_log\(0) & ((\ialu|icontrol|sel_log\(1)) # (\b~combout\(3)))) # 
-- (!\ialu|icontrol|sel_log\(0) & (\ialu|icontrol|sel_log\(1) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_log\(0),
	datab => \a~combout\(3),
	datac => \ialu|icontrol|sel_log\(1),
	datad => \b~combout\(3),
	combout => \ialu|imux5bits3to1|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y20_N4
\ialu|isumador|i_CarryLookAhead|c~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c~8_combout\ = (\a~combout\(2) & ((\ialu|isumador|b_j\(2)) # ((\a~combout\(1) & \ialu|isumador|b_j\(1))))) # (!\a~combout\(2) & (\ialu|isumador|b_j\(2) & (\a~combout\(1) & \ialu|isumador|b_j\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \ialu|isumador|b_j\(2),
	datac => \a~combout\(1),
	datad => \ialu|isumador|b_j\(1),
	combout => \ialu|isumador|i_CarryLookAhead|c~8_combout\);

-- Location: LCCOMB_X36_Y20_N14
\ialu|isumador|i_CarryLookAhead|c[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[3]~9_combout\ = (\ialu|isumador|i_CarryLookAhead|c~8_combout\) # ((\ialu|isumador|i_CarryLookAhead|c[3]~1_combout\ & (\ialu|isumador|b_j\(2) $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[3]~1_combout\,
	datab => \ialu|isumador|b_j\(2),
	datac => \a~combout\(2),
	datad => \ialu|isumador|i_CarryLookAhead|c~8_combout\,
	combout => \ialu|isumador|i_CarryLookAhead|c[3]~9_combout\);

-- Location: LCCOMB_X37_Y20_N28
\ialu|imux5bits3to1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux1~1_combout\ = (\ialu|icontrol|comb~0_combout\ & (\ialu|isumador|i_CarryLookAhead|c[3]~9_combout\ $ (((\ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\))))) # (!\ialu|icontrol|comb~0_combout\ & 
-- (((\ialu|imux5bits3to1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[3]~9_combout\,
	datab => \ialu|imux5bits3to1|Mux1~0_combout\,
	datac => \ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\,
	datad => \ialu|icontrol|comb~0_combout\,
	combout => \ialu|imux5bits3to1|Mux1~1_combout\);

-- Location: LCCOMB_X38_Y21_N8
\ialu|imux5bits3to1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux2~0_combout\ = (\a~combout\(2) & (\ialu|icontrol|sel_log\(1) $ (((\ialu|icontrol|sel_log\(0)) # (\b~combout\(2)))))) # (!\a~combout\(2) & ((\ialu|icontrol|sel_log\(0) & ((\ialu|icontrol|sel_log\(1)) # (\b~combout\(2)))) # 
-- (!\ialu|icontrol|sel_log\(0) & (\ialu|icontrol|sel_log\(1) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_log\(0),
	datab => \a~combout\(2),
	datac => \ialu|icontrol|sel_log\(1),
	datad => \b~combout\(2),
	combout => \ialu|imux5bits3to1|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y20_N6
\ialu|imux5bits3to1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux2~1_combout\ = (\ialu|icontrol|sel_s[0]~0_combout\ & (((!\sel~combout\(2) & \ialu|imux5bits3to1|Mux2~0_combout\)))) # (!\ialu|icontrol|sel_s[0]~0_combout\ & ((\ialu|imultiplicador|Add1~0_combout\) # ((!\sel~combout\(2) & 
-- \ialu|imux5bits3to1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_s[0]~0_combout\,
	datab => \ialu|imultiplicador|Add1~0_combout\,
	datac => \sel~combout\(2),
	datad => \ialu|imux5bits3to1|Mux2~0_combout\,
	combout => \ialu|imux5bits3to1|Mux2~1_combout\);

-- Location: LCCOMB_X38_Y21_N6
\ialu|imux5bits3to1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux3~1_combout\ = (\ialu|icontrol|sel_log\(1) & (\a~combout\(1) $ (((\ialu|icontrol|sel_log\(0)) # (\b~combout\(1)))))) # (!\ialu|icontrol|sel_log\(1) & ((\ialu|icontrol|sel_log\(0) & ((\b~combout\(1)) # (\a~combout\(1)))) # 
-- (!\ialu|icontrol|sel_log\(0) & (\b~combout\(1) & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_log\(0),
	datab => \b~combout\(1),
	datac => \ialu|icontrol|sel_log\(1),
	datad => \a~combout\(1),
	combout => \ialu|imux5bits3to1|Mux3~1_combout\);

-- Location: LCCOMB_X38_Y20_N24
\ialu|icontrol|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~4_combout\ = (\sel~combout\(2)) # (\sel~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|comb~4_combout\);

-- Location: LCCOMB_X38_Y20_N12
\ialu|icontrol|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~6_combout\ = (\sel~combout\(1)) # (\sel~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datac => \sel~combout\(2),
	combout => \ialu|icontrol|comb~6_combout\);

-- Location: LCCOMB_X38_Y20_N22
\ialu|icontrol|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~7_combout\ = (\sel~combout\(2)) # (!\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datac => \sel~combout\(2),
	combout => \ialu|icontrol|comb~7_combout\);

-- Location: LCCOMB_X37_Y23_N8
\idisplay|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~8_combout\ = (\idisplay|LessThan3~3_combout\ & ((\idisplay|d2[2]~3_combout\))) # (!\idisplay|LessThan3~3_combout\ & (!\idisplay|d1[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datac => \idisplay|d2[2]~3_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|comb~8_combout\);

-- Location: LCCOMB_X38_Y23_N16
\idisplay|restador[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador[0]~0_combout\ = (!\idisplay|d2[2]~3_combout\ & ((\idisplay|N[5]~5_combout\) # ((\idisplay|LessThan3~4_combout\ & \idisplay|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|N[5]~5_combout\,
	datab => \idisplay|LessThan3~4_combout\,
	datac => \idisplay|LessThan3~2_combout\,
	datad => \idisplay|d2[2]~3_combout\,
	combout => \idisplay|restador[0]~0_combout\);

-- Location: LCCOMB_X38_Y23_N26
\idisplay|restador[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador[1]~1_combout\ = (\idisplay|Add0~8_combout\ & (\idisplay|Add0~10_combout\ & \ialu|imux5bits3to1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~8_combout\,
	datac => \idisplay|Add0~10_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|restador[1]~1_combout\);

-- Location: LCCOMB_X38_Y23_N20
\idisplay|restador[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador[1]~2_combout\ = (\idisplay|restador[1]~1_combout\ & ((\idisplay|N[2]~3_combout\ & (!\idisplay|N[3]~2_combout\)) # (!\idisplay|N[2]~3_combout\ & ((\idisplay|N[3]~2_combout\) # (\idisplay|N[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|N[2]~3_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datac => \idisplay|restador[1]~1_combout\,
	datad => \idisplay|N[1]~4_combout\,
	combout => \idisplay|restador[1]~2_combout\);

-- Location: LCCOMB_X38_Y23_N22
\idisplay|restador[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador[1]~3_combout\ = (\idisplay|restador[1]~2_combout\) # ((!\idisplay|d2[2]~3_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d2[2]~3_combout\,
	datab => \idisplay|LessThan3~3_combout\,
	datac => \idisplay|restador[1]~2_combout\,
	datad => \idisplay|LessThan4~1_combout\,
	combout => \idisplay|restador[1]~3_combout\);

-- Location: LCCOMB_X38_Y23_N24
\idisplay|d2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[1]~4_combout\ = (!\idisplay|N[5]~5_combout\ & ((\idisplay|LessThan4~0_combout\) # ((\idisplay|LessThan3~4_combout\ & \idisplay|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|N[5]~5_combout\,
	datab => \idisplay|LessThan3~4_combout\,
	datac => \idisplay|LessThan3~2_combout\,
	datad => \idisplay|LessThan4~0_combout\,
	combout => \idisplay|d2[1]~4_combout\);

-- Location: LCCOMB_X38_Y23_N18
\idisplay|d2[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[1]~5_combout\ = (\idisplay|Add0~10_combout\ & (\idisplay|d2[1]~0_combout\ & \ialu|imux5bits3to1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~10_combout\,
	datab => \idisplay|d2[1]~0_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|d2[1]~5_combout\);

-- Location: LCCOMB_X37_Y23_N18
\idisplay|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~9_combout\ = (!\idisplay|d2[1]~4_combout\ & (!\idisplay|d2[1]~5_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|d1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|d2[1]~4_combout\,
	datac => \idisplay|d2[1]~5_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|comb~9_combout\);

-- Location: LCCOMB_X37_Y23_N28
\idisplay|comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~10_combout\ = (\idisplay|d1[3]~0_combout\ & (\idisplay|LessThan3~3_combout\ & ((\idisplay|d2[1]~4_combout\) # (\idisplay|d2[1]~5_combout\)))) # (!\idisplay|d1[3]~0_combout\ & ((\idisplay|d2[1]~4_combout\) # ((\idisplay|d2[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|d2[1]~4_combout\,
	datac => \idisplay|d2[1]~5_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|comb~10_combout\);

-- Location: LCCOMB_X38_Y23_N28
\idisplay|restador[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador[3]~4_combout\ = (!\idisplay|restador[1]~2_combout\ & ((\idisplay|d2[2]~3_combout\) # ((\idisplay|LessThan3~3_combout\) # (!\idisplay|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d2[2]~3_combout\,
	datab => \idisplay|LessThan3~3_combout\,
	datac => \idisplay|restador[1]~2_combout\,
	datad => \idisplay|LessThan4~1_combout\,
	combout => \idisplay|restador[3]~4_combout\);

-- Location: LCCOMB_X37_Y23_N6
\idisplay|comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~11_combout\ = (!\idisplay|restador[1]~3_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|d1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|restador[1]~3_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|comb~11_combout\);

-- Location: LCCOMB_X37_Y23_N0
\idisplay|comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~12_combout\ = (\idisplay|restador[1]~3_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|d1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|restador[1]~3_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|comb~12_combout\);

-- Location: LCCOMB_X39_Y23_N22
\idisplay|comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~13_combout\ = (!\idisplay|restador[3]~4_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|d1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|restador[3]~4_combout\,
	combout => \idisplay|comb~13_combout\);

-- Location: LCCOMB_X39_Y23_N24
\idisplay|comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|comb~14_combout\ = (\idisplay|restador[3]~4_combout\ & ((\idisplay|LessThan3~3_combout\) # (!\idisplay|d1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|restador[3]~4_combout\,
	combout => \idisplay|comb~14_combout\);

-- Location: LCCOMB_X38_Y20_N14
\ialu|icontrol|sel_log[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_log\(1) = (\ialu|icontrol|comb~6_combout\ & ((\ialu|icontrol|sel_log\(1)) # (!\ialu|icontrol|comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|comb~7_combout\,
	datac => \ialu|icontrol|sel_log\(1),
	datad => \ialu|icontrol|comb~6_combout\,
	combout => \ialu|icontrol|sel_log\(1));

-- Location: LCCOMB_X37_Y23_N10
\idisplay|restador[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador\(0) = (!\idisplay|comb~8_combout\ & ((\idisplay|restador[0]~0_combout\) # (\idisplay|restador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|restador[0]~0_combout\,
	datac => \idisplay|comb~8_combout\,
	datad => \idisplay|restador\(0),
	combout => \idisplay|restador\(0));

-- Location: LCCOMB_X37_Y23_N12
\idisplay|restador[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador\(1) = (!\idisplay|comb~11_combout\ & ((\idisplay|comb~12_combout\) # (\idisplay|restador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|comb~11_combout\,
	datab => \idisplay|comb~12_combout\,
	datad => \idisplay|restador\(1),
	combout => \idisplay|restador\(1));

-- Location: LCCOMB_X37_Y23_N30
\idisplay|restador[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador\(2) = (!\idisplay|comb~9_combout\ & ((\idisplay|comb~10_combout\) # (\idisplay|restador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idisplay|comb~9_combout\,
	datac => \idisplay|comb~10_combout\,
	datad => \idisplay|restador\(2),
	combout => \idisplay|restador\(2));

-- Location: LCCOMB_X39_Y23_N26
\idisplay|restador[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|restador\(3) = (!\idisplay|comb~13_combout\ & ((\idisplay|comb~14_combout\) # (\idisplay|restador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idisplay|comb~13_combout\,
	datac => \idisplay|comb~14_combout\,
	datad => \idisplay|restador\(3),
	combout => \idisplay|restador\(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : cycloneii_io
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
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : cycloneii_io
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
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LCCOMB_X38_Y20_N28
\ialu|icontrol|sel_s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_s[0]~1_combout\ = (\sel~combout\(2) & \sel~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|sel_s[0]~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : cycloneii_io
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
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: LCCOMB_X37_Y20_N22
\ialu|icontrol|sel_r\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_r~combout\ = (\ialu|icontrol|sel_s[0]~1_combout\ & ((\ialu|icontrol|sel_r~combout\) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|sel_s[0]~1_combout\,
	datac => \sel~combout\(1),
	datad => \ialu|icontrol|sel_r~combout\,
	combout => \ialu|icontrol|sel_r~combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y20_N26
\ialu|isumador|GenSum:4:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ = \ialu|icontrol|sel_r~combout\ $ (\a~combout\(4) $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y20_N0
\ialu|isumador|b_j[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|b_j\(3) = \ialu|icontrol|sel_r~combout\ $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \b~combout\(3),
	combout => \ialu|isumador|b_j\(3));

-- Location: LCCOMB_X37_Y20_N4
\ialu|isumador|b_j[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|b_j\(4) = \ialu|icontrol|sel_r~combout\ $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \b~combout\(4),
	combout => \ialu|isumador|b_j\(4));

-- Location: LCCOMB_X37_Y20_N14
\ialu|isumador|i_CarryLookAhead|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c~4_combout\ = (\ialu|isumador|b_j\(4) & ((\a~combout\(4)) # ((\a~combout\(3) & \ialu|isumador|b_j\(3))))) # (!\ialu|isumador|b_j\(4) & (\a~combout\(3) & (\ialu|isumador|b_j\(3) & \a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \ialu|isumador|b_j\(3),
	datac => \ialu|isumador|b_j\(4),
	datad => \a~combout\(4),
	combout => \ialu|isumador|i_CarryLookAhead|c~4_combout\);

-- Location: LCCOMB_X38_Y20_N30
\ialu|icontrol|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~3_combout\ = (\sel~combout\(1)) # (!\sel~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datac => \sel~combout\(2),
	combout => \ialu|icontrol|comb~3_combout\);

-- Location: LCCOMB_X38_Y20_N4
\ialu|icontrol|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~2_combout\ = ((\sel~combout\(0)) # (!\sel~combout\(2))) # (!\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|comb~2_combout\);

-- Location: LCCOMB_X38_Y20_N26
\ialu|icontrol|sel_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_b~combout\ = (\ialu|icontrol|comb~2_combout\ & ((\ialu|icontrol|sel_b~combout\) # (!\ialu|icontrol|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|comb~3_combout\,
	datac => \ialu|icontrol|comb~2_combout\,
	datad => \ialu|icontrol|sel_b~combout\,
	combout => \ialu|icontrol|sel_b~combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y20_N8
\ialu|isumador|b_j[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|b_j\(2) = \ialu|icontrol|sel_r~combout\ $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \ialu|icontrol|sel_b~combout\,
	datad => \b~combout\(2),
	combout => \ialu|isumador|b_j\(2));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y20_N28
\ialu|isumador|GenSum:1:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ = \ialu|icontrol|sel_r~combout\ $ (\a~combout\(1) $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y20_N22
\ialu|isumador|i_CarryLookAhead|c[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[5]~5_combout\ = (\ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ & ((\ialu|isumador|b_j\(0) & ((\ialu|icontrol|sel_r~combout\) # (\a~combout\(0)))) # (!\ialu|isumador|b_j\(0) & (\ialu|icontrol|sel_r~combout\ & 
-- \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|b_j\(0),
	datab => \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\,
	datac => \ialu|icontrol|sel_r~combout\,
	datad => \a~combout\(0),
	combout => \ialu|isumador|i_CarryLookAhead|c[5]~5_combout\);

-- Location: LCCOMB_X36_Y20_N16
\ialu|isumador|i_CarryLookAhead|c[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[5]~6_combout\ = (\ialu|isumador|b_j\(2) & ((\ialu|isumador|i_CarryLookAhead|c[5]~0_combout\) # ((\a~combout\(2)) # (\ialu|isumador|i_CarryLookAhead|c[5]~5_combout\)))) # (!\ialu|isumador|b_j\(2) & (\a~combout\(2) & 
-- ((\ialu|isumador|i_CarryLookAhead|c[5]~0_combout\) # (\ialu|isumador|i_CarryLookAhead|c[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[5]~0_combout\,
	datab => \ialu|isumador|b_j\(2),
	datac => \a~combout\(2),
	datad => \ialu|isumador|i_CarryLookAhead|c[5]~5_combout\,
	combout => \ialu|isumador|i_CarryLookAhead|c[5]~6_combout\);

-- Location: LCCOMB_X37_Y20_N20
\ialu|isumador|i_CarryLookAhead|c[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[5]~7_combout\ = (\ialu|isumador|i_CarryLookAhead|c~4_combout\) # ((\ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\ & (\ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\ & 
-- \ialu|isumador|i_CarryLookAhead|c[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|GenSum:3:i_Sumador1Bit|p_i~combout\,
	datab => \ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\,
	datac => \ialu|isumador|i_CarryLookAhead|c~4_combout\,
	datad => \ialu|isumador|i_CarryLookAhead|c[5]~6_combout\,
	combout => \ialu|isumador|i_CarryLookAhead|c[5]~7_combout\);

-- Location: LCCOMB_X39_Y21_N0
\ialu|imultiplicador|prod[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[4][8]~combout\ = (\a~combout\(4) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \b~combout\(4),
	combout => \ialu|imultiplicador|prod[4][8]~combout\);

-- Location: LCCOMB_X37_Y21_N0
\ialu|imultiplicador|prod[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[1][5]~combout\ = (\b~combout\(1) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(4),
	combout => \ialu|imultiplicador|prod[1][5]~combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y21_N8
\ialu|imultiplicador|prod[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[1][4]~combout\ = (\b~combout\(1) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	combout => \ialu|imultiplicador|prod[1][4]~combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y21_N14
\ialu|imultiplicador|prod[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[0][3]~combout\ = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(0),
	combout => \ialu|imultiplicador|prod[0][3]~combout\);

-- Location: LCCOMB_X37_Y21_N2
\ialu|imultiplicador|prod[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[0][2]~combout\ = (\b~combout\(0) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(2),
	combout => \ialu|imultiplicador|prod[0][2]~combout\);

-- Location: LCCOMB_X37_Y21_N4
\ialu|imultiplicador|prod[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[1][1]~combout\ = (\b~combout\(1) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(0),
	combout => \ialu|imultiplicador|prod[1][1]~combout\);

-- Location: LCCOMB_X37_Y21_N22
\ialu|imultiplicador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~4_combout\ = ((\ialu|imultiplicador|prod[1][3]~combout\ $ (\ialu|imultiplicador|prod[0][3]~combout\ $ (!\ialu|imultiplicador|Add0~3\)))) # (GND)
-- \ialu|imultiplicador|Add0~5\ = CARRY((\ialu|imultiplicador|prod[1][3]~combout\ & ((\ialu|imultiplicador|prod[0][3]~combout\) # (!\ialu|imultiplicador|Add0~3\))) # (!\ialu|imultiplicador|prod[1][3]~combout\ & (\ialu|imultiplicador|prod[0][3]~combout\ & 
-- !\ialu|imultiplicador|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[1][3]~combout\,
	datab => \ialu|imultiplicador|prod[0][3]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add0~3\,
	combout => \ialu|imultiplicador|Add0~4_combout\,
	cout => \ialu|imultiplicador|Add0~5\);

-- Location: LCCOMB_X37_Y21_N26
\ialu|imultiplicador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~8_combout\ = ((\ialu|imultiplicador|prod[0][4]~combout\ $ (\ialu|imultiplicador|prod[1][5]~combout\ $ (!\ialu|imultiplicador|Add0~7\)))) # (GND)
-- \ialu|imultiplicador|Add0~9\ = CARRY((\ialu|imultiplicador|prod[0][4]~combout\ & ((\ialu|imultiplicador|prod[1][5]~combout\) # (!\ialu|imultiplicador|Add0~7\))) # (!\ialu|imultiplicador|prod[0][4]~combout\ & (\ialu|imultiplicador|prod[1][5]~combout\ & 
-- !\ialu|imultiplicador|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[0][4]~combout\,
	datab => \ialu|imultiplicador|prod[1][5]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add0~7\,
	combout => \ialu|imultiplicador|Add0~8_combout\,
	cout => \ialu|imultiplicador|Add0~9\);

-- Location: LCCOMB_X37_Y21_N28
\ialu|imultiplicador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add0~10_combout\ = \ialu|imultiplicador|prod[0][4]~combout\ $ (\ialu|imultiplicador|Add0~9\ $ (\ialu|imultiplicador|prod[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[0][4]~combout\,
	datad => \ialu|imultiplicador|prod[1][5]~combout\,
	cin => \ialu|imultiplicador|Add0~9\,
	combout => \ialu|imultiplicador|Add0~10_combout\);

-- Location: LCCOMB_X38_Y21_N2
\ialu|imultiplicador|prod[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[2][6]~combout\ = (\b~combout\(2) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(4),
	combout => \ialu|imultiplicador|prod[2][6]~combout\);

-- Location: LCCOMB_X38_Y21_N0
\ialu|imultiplicador|prod[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[2][4]~combout\ = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \ialu|imultiplicador|prod[2][4]~combout\);

-- Location: LCCOMB_X38_Y21_N4
\ialu|imultiplicador|prod[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[2][2]~combout\ = (\b~combout\(2) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(0),
	combout => \ialu|imultiplicador|prod[2][2]~combout\);

-- Location: LCCOMB_X38_Y21_N20
\ialu|imultiplicador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~2_combout\ = (\ialu|imultiplicador|prod[2][3]~combout\ & ((\ialu|imultiplicador|Add0~4_combout\ & (\ialu|imultiplicador|Add1~1\ & VCC)) # (!\ialu|imultiplicador|Add0~4_combout\ & (!\ialu|imultiplicador|Add1~1\)))) # 
-- (!\ialu|imultiplicador|prod[2][3]~combout\ & ((\ialu|imultiplicador|Add0~4_combout\ & (!\ialu|imultiplicador|Add1~1\)) # (!\ialu|imultiplicador|Add0~4_combout\ & ((\ialu|imultiplicador|Add1~1\) # (GND)))))
-- \ialu|imultiplicador|Add1~3\ = CARRY((\ialu|imultiplicador|prod[2][3]~combout\ & (!\ialu|imultiplicador|Add0~4_combout\ & !\ialu|imultiplicador|Add1~1\)) # (!\ialu|imultiplicador|prod[2][3]~combout\ & ((!\ialu|imultiplicador|Add1~1\) # 
-- (!\ialu|imultiplicador|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[2][3]~combout\,
	datab => \ialu|imultiplicador|Add0~4_combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add1~1\,
	combout => \ialu|imultiplicador|Add1~2_combout\,
	cout => \ialu|imultiplicador|Add1~3\);

-- Location: LCCOMB_X38_Y21_N28
\ialu|imultiplicador|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add1~10_combout\ = \ialu|imultiplicador|Add0~10_combout\ $ (\ialu|imultiplicador|Add1~9\ $ (\ialu|imultiplicador|prod[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imultiplicador|Add0~10_combout\,
	datad => \ialu|imultiplicador|prod[2][6]~combout\,
	cin => \ialu|imultiplicador|Add1~9\,
	combout => \ialu|imultiplicador|Add1~10_combout\);

-- Location: LCCOMB_X38_Y21_N12
\ialu|imultiplicador|prod[3][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[3][7]~combout\ = (\a~combout\(4) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datad => \b~combout\(3),
	combout => \ialu|imultiplicador|prod[3][7]~combout\);

-- Location: LCCOMB_X40_Y21_N20
\ialu|imultiplicador|prod[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[3][6]~combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \ialu|imultiplicador|prod[3][6]~combout\);

-- Location: LCCOMB_X40_Y21_N10
\ialu|imultiplicador|prod[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[3][5]~combout\ = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datac => \a~combout\(2),
	combout => \ialu|imultiplicador|prod[3][5]~combout\);

-- Location: LCCOMB_X40_Y21_N8
\ialu|imultiplicador|prod[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[3][4]~combout\ = (\a~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(3),
	combout => \ialu|imultiplicador|prod[3][4]~combout\);

-- Location: LCCOMB_X39_Y21_N2
\ialu|imultiplicador|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~0_combout\ = (\ialu|imultiplicador|prod[3][3]~combout\ & (\ialu|imultiplicador|Add1~2_combout\ $ (VCC))) # (!\ialu|imultiplicador|prod[3][3]~combout\ & (\ialu|imultiplicador|Add1~2_combout\ & VCC))
-- \ialu|imultiplicador|Add2~1\ = CARRY((\ialu|imultiplicador|prod[3][3]~combout\ & \ialu|imultiplicador|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[3][3]~combout\,
	datab => \ialu|imultiplicador|Add1~2_combout\,
	datad => VCC,
	combout => \ialu|imultiplicador|Add2~0_combout\,
	cout => \ialu|imultiplicador|Add2~1\);

-- Location: LCCOMB_X39_Y21_N4
\ialu|imultiplicador|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~2_combout\ = (\ialu|imultiplicador|Add1~4_combout\ & ((\ialu|imultiplicador|prod[3][4]~combout\ & (\ialu|imultiplicador|Add2~1\ & VCC)) # (!\ialu|imultiplicador|prod[3][4]~combout\ & (!\ialu|imultiplicador|Add2~1\)))) # 
-- (!\ialu|imultiplicador|Add1~4_combout\ & ((\ialu|imultiplicador|prod[3][4]~combout\ & (!\ialu|imultiplicador|Add2~1\)) # (!\ialu|imultiplicador|prod[3][4]~combout\ & ((\ialu|imultiplicador|Add2~1\) # (GND)))))
-- \ialu|imultiplicador|Add2~3\ = CARRY((\ialu|imultiplicador|Add1~4_combout\ & (!\ialu|imultiplicador|prod[3][4]~combout\ & !\ialu|imultiplicador|Add2~1\)) # (!\ialu|imultiplicador|Add1~4_combout\ & ((!\ialu|imultiplicador|Add2~1\) # 
-- (!\ialu|imultiplicador|prod[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add1~4_combout\,
	datab => \ialu|imultiplicador|prod[3][4]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add2~1\,
	combout => \ialu|imultiplicador|Add2~2_combout\,
	cout => \ialu|imultiplicador|Add2~3\);

-- Location: LCCOMB_X39_Y21_N12
\ialu|imultiplicador|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add2~10_combout\ = \ialu|imultiplicador|Add1~10_combout\ $ (\ialu|imultiplicador|Add2~9\ $ (\ialu|imultiplicador|prod[3][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imultiplicador|Add1~10_combout\,
	datad => \ialu|imultiplicador|prod[3][7]~combout\,
	cin => \ialu|imultiplicador|Add2~9\,
	combout => \ialu|imultiplicador|Add2~10_combout\);

-- Location: LCCOMB_X40_Y21_N24
\ialu|imultiplicador|prod[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[4][7]~combout\ = (\b~combout\(4) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datac => \a~combout\(3),
	combout => \ialu|imultiplicador|prod[4][7]~combout\);

-- Location: LCCOMB_X40_Y21_N30
\ialu|imultiplicador|prod[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[4][6]~combout\ = (\b~combout\(4) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datac => \a~combout\(2),
	combout => \ialu|imultiplicador|prod[4][6]~combout\);

-- Location: LCCOMB_X37_Y21_N30
\ialu|imultiplicador|prod[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|prod[4][5]~combout\ = (\b~combout\(4) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datac => \a~combout\(1),
	combout => \ialu|imultiplicador|prod[4][5]~combout\);

-- Location: LCCOMB_X39_Y21_N20
\ialu|imultiplicador|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~0_combout\ = (\ialu|imultiplicador|prod[4][4]~combout\ & (\ialu|imultiplicador|Add2~2_combout\ $ (VCC))) # (!\ialu|imultiplicador|prod[4][4]~combout\ & (\ialu|imultiplicador|Add2~2_combout\ & VCC))
-- \ialu|imultiplicador|Add3~1\ = CARRY((\ialu|imultiplicador|prod[4][4]~combout\ & \ialu|imultiplicador|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|prod[4][4]~combout\,
	datab => \ialu|imultiplicador|Add2~2_combout\,
	datad => VCC,
	combout => \ialu|imultiplicador|Add3~0_combout\,
	cout => \ialu|imultiplicador|Add3~1\);

-- Location: LCCOMB_X39_Y21_N22
\ialu|imultiplicador|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~2_combout\ = (\ialu|imultiplicador|Add2~4_combout\ & ((\ialu|imultiplicador|prod[4][5]~combout\ & (\ialu|imultiplicador|Add3~1\ & VCC)) # (!\ialu|imultiplicador|prod[4][5]~combout\ & (!\ialu|imultiplicador|Add3~1\)))) # 
-- (!\ialu|imultiplicador|Add2~4_combout\ & ((\ialu|imultiplicador|prod[4][5]~combout\ & (!\ialu|imultiplicador|Add3~1\)) # (!\ialu|imultiplicador|prod[4][5]~combout\ & ((\ialu|imultiplicador|Add3~1\) # (GND)))))
-- \ialu|imultiplicador|Add3~3\ = CARRY((\ialu|imultiplicador|Add2~4_combout\ & (!\ialu|imultiplicador|prod[4][5]~combout\ & !\ialu|imultiplicador|Add3~1\)) # (!\ialu|imultiplicador|Add2~4_combout\ & ((!\ialu|imultiplicador|Add3~1\) # 
-- (!\ialu|imultiplicador|prod[4][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add2~4_combout\,
	datab => \ialu|imultiplicador|prod[4][5]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add3~1\,
	combout => \ialu|imultiplicador|Add3~2_combout\,
	cout => \ialu|imultiplicador|Add3~3\);

-- Location: LCCOMB_X39_Y21_N26
\ialu|imultiplicador|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~6_combout\ = (\ialu|imultiplicador|Add2~8_combout\ & ((\ialu|imultiplicador|prod[4][7]~combout\ & (\ialu|imultiplicador|Add3~5\ & VCC)) # (!\ialu|imultiplicador|prod[4][7]~combout\ & (!\ialu|imultiplicador|Add3~5\)))) # 
-- (!\ialu|imultiplicador|Add2~8_combout\ & ((\ialu|imultiplicador|prod[4][7]~combout\ & (!\ialu|imultiplicador|Add3~5\)) # (!\ialu|imultiplicador|prod[4][7]~combout\ & ((\ialu|imultiplicador|Add3~5\) # (GND)))))
-- \ialu|imultiplicador|Add3~7\ = CARRY((\ialu|imultiplicador|Add2~8_combout\ & (!\ialu|imultiplicador|prod[4][7]~combout\ & !\ialu|imultiplicador|Add3~5\)) # (!\ialu|imultiplicador|Add2~8_combout\ & ((!\ialu|imultiplicador|Add3~5\) # 
-- (!\ialu|imultiplicador|prod[4][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add2~8_combout\,
	datab => \ialu|imultiplicador|prod[4][7]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add3~5\,
	combout => \ialu|imultiplicador|Add3~6_combout\,
	cout => \ialu|imultiplicador|Add3~7\);

-- Location: LCCOMB_X39_Y21_N28
\ialu|imultiplicador|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~8_combout\ = ((\ialu|imultiplicador|Add2~10_combout\ $ (\ialu|imultiplicador|prod[4][8]~combout\ $ (!\ialu|imultiplicador|Add3~7\)))) # (GND)
-- \ialu|imultiplicador|Add3~9\ = CARRY((\ialu|imultiplicador|Add2~10_combout\ & ((\ialu|imultiplicador|prod[4][8]~combout\) # (!\ialu|imultiplicador|Add3~7\))) # (!\ialu|imultiplicador|Add2~10_combout\ & (\ialu|imultiplicador|prod[4][8]~combout\ & 
-- !\ialu|imultiplicador|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add2~10_combout\,
	datab => \ialu|imultiplicador|prod[4][8]~combout\,
	datad => VCC,
	cin => \ialu|imultiplicador|Add3~7\,
	combout => \ialu|imultiplicador|Add3~8_combout\,
	cout => \ialu|imultiplicador|Add3~9\);

-- Location: LCCOMB_X39_Y21_N30
\ialu|imultiplicador|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imultiplicador|Add3~10_combout\ = \ialu|imultiplicador|prod[4][8]~combout\ $ (\ialu|imultiplicador|Add3~9\ $ (\ialu|imultiplicador|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imultiplicador|prod[4][8]~combout\,
	datad => \ialu|imultiplicador|Add2~10_combout\,
	cin => \ialu|imultiplicador|Add3~9\,
	combout => \ialu|imultiplicador|Add3~10_combout\);

-- Location: LCCOMB_X39_Y21_N14
\ialu|imux|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux|Selector0~0_combout\ = (\ialu|imultiplicador|Add3~4_combout\ & (((!\ialu|imultiplicador|Add3~2_combout\) # (!\ialu|imultiplicador|Add3~0_combout\)) # (!\ialu|imultiplicador|Add3~6_combout\))) # (!\ialu|imultiplicador|Add3~4_combout\ & 
-- ((\ialu|imultiplicador|Add3~6_combout\) # ((\ialu|imultiplicador|Add3~0_combout\) # (\ialu|imultiplicador|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add3~4_combout\,
	datab => \ialu|imultiplicador|Add3~6_combout\,
	datac => \ialu|imultiplicador|Add3~0_combout\,
	datad => \ialu|imultiplicador|Add3~2_combout\,
	combout => \ialu|imux|Selector0~0_combout\);

-- Location: LCCOMB_X39_Y21_N18
\ialu|imux|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux|Selector0~1_combout\ = (\ialu|imux|Selector0~0_combout\) # ((\ialu|imultiplicador|Add3~0_combout\ & ((!\ialu|imultiplicador|Add3~8_combout\) # (!\ialu|imultiplicador|Add3~10_combout\))) # (!\ialu|imultiplicador|Add3~0_combout\ & 
-- ((\ialu|imultiplicador|Add3~10_combout\) # (\ialu|imultiplicador|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add3~0_combout\,
	datab => \ialu|imultiplicador|Add3~10_combout\,
	datac => \ialu|imux|Selector0~0_combout\,
	datad => \ialu|imultiplicador|Add3~8_combout\,
	combout => \ialu|imux|Selector0~1_combout\);

-- Location: LCCOMB_X38_Y20_N2
\ialu|icontrol|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~1_combout\ = (\sel~combout\(1) & (\sel~combout\(2) & \sel~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|comb~1_combout\);

-- Location: LCCOMB_X38_Y20_N8
\ialu|icontrol|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~0_combout\ = (\sel~combout\(2) & ((!\sel~combout\(0)) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|comb~0_combout\);

-- Location: LCCOMB_X38_Y20_N16
\ialu|icontrol|sel_ov\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_ov~combout\ = (!\ialu|icontrol|comb~1_combout\ & ((\ialu|icontrol|sel_ov~combout\) # (\ialu|icontrol|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|comb~1_combout\,
	datac => \ialu|icontrol|sel_ov~combout\,
	datad => \ialu|icontrol|comb~0_combout\,
	combout => \ialu|icontrol|sel_ov~combout\);

-- Location: LCCOMB_X36_Y20_N10
\ialu|isumador|i_CarryLookAhead|c[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[5]~0_combout\ = (\a~combout\(1) & (\ialu|icontrol|sel_r~combout\ $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_b~combout\,
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \ialu|isumador|i_CarryLookAhead|c[5]~0_combout\);

-- Location: LCCOMB_X36_Y20_N18
\ialu|isumador|i_CarryLookAhead|c[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[4]~2_combout\ = (\ialu|isumador|b_j\(2) & ((\ialu|isumador|i_CarryLookAhead|c[3]~1_combout\) # ((\a~combout\(2)) # (\ialu|isumador|i_CarryLookAhead|c[5]~0_combout\)))) # (!\ialu|isumador|b_j\(2) & (\a~combout\(2) & 
-- ((\ialu|isumador|i_CarryLookAhead|c[3]~1_combout\) # (\ialu|isumador|i_CarryLookAhead|c[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[3]~1_combout\,
	datab => \ialu|isumador|b_j\(2),
	datac => \a~combout\(2),
	datad => \ialu|isumador|i_CarryLookAhead|c[5]~0_combout\,
	combout => \ialu|isumador|i_CarryLookAhead|c[4]~2_combout\);

-- Location: LCCOMB_X37_Y20_N10
\ialu|isumador|i_CarryLookAhead|c[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c[4]~3_combout\ = (\a~combout\(3) & ((\ialu|isumador|i_CarryLookAhead|c[4]~2_combout\) # (\ialu|isumador|b_j\(3)))) # (!\a~combout\(3) & (\ialu|isumador|i_CarryLookAhead|c[4]~2_combout\ & \ialu|isumador|b_j\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \ialu|isumador|i_CarryLookAhead|c[4]~2_combout\,
	datad => \ialu|isumador|b_j\(3),
	combout => \ialu|isumador|i_CarryLookAhead|c[4]~3_combout\);

-- Location: LCCOMB_X37_Y20_N6
\ialu|imux|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux|Selector0~2_combout\ = (\ialu|icontrol|sel_ov~combout\ & (\ialu|isumador|i_CarryLookAhead|c[5]~7_combout\ $ (((\ialu|isumador|i_CarryLookAhead|c[4]~3_combout\))))) # (!\ialu|icontrol|sel_ov~combout\ & (((\ialu|imux|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[5]~7_combout\,
	datab => \ialu|imux|Selector0~1_combout\,
	datac => \ialu|icontrol|sel_ov~combout\,
	datad => \ialu|isumador|i_CarryLookAhead|c[4]~3_combout\,
	combout => \ialu|imux|Selector0~2_combout\);

-- Location: LCCOMB_X38_Y20_N18
\ialu|icontrol|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|comb~5_combout\ = (\sel~combout\(2)) # (!\sel~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|comb~5_combout\);

-- Location: LCCOMB_X38_Y20_N20
\ialu|icontrol|sel_log[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_log\(0) = (\ialu|icontrol|comb~4_combout\ & ((\ialu|icontrol|sel_log\(0)) # (!\ialu|icontrol|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|comb~4_combout\,
	datac => \ialu|icontrol|sel_log\(0),
	datad => \ialu|icontrol|comb~5_combout\,
	combout => \ialu|icontrol|sel_log\(0));

-- Location: LCCOMB_X37_Y20_N8
\ialu|imux5bits3to1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux0~0_combout\ = (\ialu|icontrol|sel_log\(1) & (\a~combout\(4) $ (((\ialu|icontrol|sel_log\(0)) # (\b~combout\(4)))))) # (!\ialu|icontrol|sel_log\(1) & ((\ialu|icontrol|sel_log\(0) & ((\b~combout\(4)) # (\a~combout\(4)))) # 
-- (!\ialu|icontrol|sel_log\(0) & (\b~combout\(4) & \a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_log\(1),
	datab => \ialu|icontrol|sel_log\(0),
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \ialu|imux5bits3to1|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y20_N18
\ialu|imux5bits3to1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux0~1_combout\ = (\ialu|icontrol|comb~0_combout\ & (\ialu|isumador|i_CarryLookAhead|c[4]~3_combout\ $ ((\ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\)))) # (!\ialu|icontrol|comb~0_combout\ & 
-- (((\ialu|imux5bits3to1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|i_CarryLookAhead|c[4]~3_combout\,
	datab => \ialu|isumador|GenSum:4:i_Sumador1Bit|p_i~combout\,
	datac => \ialu|imux5bits3to1|Mux0~0_combout\,
	datad => \ialu|icontrol|comb~0_combout\,
	combout => \ialu|imux5bits3to1|Mux0~1_combout\);

-- Location: LCCOMB_X38_Y20_N10
\ialu|icontrol|sel_s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|icontrol|sel_s[0]~0_combout\ = ((!\sel~combout\(0)) # (!\sel~combout\(2))) # (!\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	combout => \ialu|icontrol|sel_s[0]~0_combout\);

-- Location: LCCOMB_X38_Y22_N8
\ialu|imux5bits3to1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux0~2_combout\ = (\ialu|icontrol|sel_s[0]~0_combout\ & ((\ialu|imux5bits3to1|Mux0~1_combout\))) # (!\ialu|icontrol|sel_s[0]~0_combout\ & (\ialu|imultiplicador|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add3~0_combout\,
	datab => \ialu|imux5bits3to1|Mux0~1_combout\,
	datac => \ialu|icontrol|sel_s[0]~0_combout\,
	combout => \ialu|imux5bits3to1|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y20_N2
\ialu|isumador|b_j[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|b_j\(1) = \ialu|icontrol|sel_r~combout\ $ (((\ialu|icontrol|sel_b~combout\ & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|icontrol|sel_r~combout\,
	datac => \ialu|icontrol|sel_b~combout\,
	datad => \b~combout\(1),
	combout => \ialu|isumador|b_j\(1));

-- Location: LCCOMB_X36_Y20_N26
\ialu|isumador|i_CarryLookAhead|c~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c~11_combout\ = (\ialu|isumador|b_j\(1) & ((\a~combout\(1)) # ((\ialu|isumador|b_j\(0) & \a~combout\(0))))) # (!\ialu|isumador|b_j\(1) & (\ialu|isumador|b_j\(0) & (\a~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|b_j\(0),
	datab => \ialu|isumador|b_j\(1),
	datac => \a~combout\(1),
	datad => \a~combout\(0),
	combout => \ialu|isumador|i_CarryLookAhead|c~11_combout\);

-- Location: LCCOMB_X36_Y20_N0
\ialu|isumador|i_CarryLookAhead|c~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|i_CarryLookAhead|c~10_combout\ = (\ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ & (\ialu|icontrol|sel_r~combout\ & (\ialu|isumador|b_j\(0) $ (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|isumador|b_j\(0),
	datab => \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\,
	datac => \ialu|icontrol|sel_r~combout\,
	datad => \a~combout\(0),
	combout => \ialu|isumador|i_CarryLookAhead|c~10_combout\);

-- Location: LCCOMB_X36_Y20_N20
\ialu|isumador|GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|GenSum:2:i_Sumador1Bit|s_i~combout\ = \a~combout\(2) $ (\ialu|isumador|b_j\(2) $ (((\ialu|isumador|i_CarryLookAhead|c~11_combout\) # (\ialu|isumador|i_CarryLookAhead|c~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \ialu|isumador|i_CarryLookAhead|c~11_combout\,
	datac => \ialu|isumador|b_j\(2),
	datad => \ialu|isumador|i_CarryLookAhead|c~10_combout\,
	combout => \ialu|isumador|GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X38_Y20_N0
\ialu|imux5bits3to1|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux2~2_combout\ = (\ialu|imux5bits3to1|Mux2~1_combout\) # ((\ialu|isumador|GenSum:2:i_Sumador1Bit|s_i~combout\ & (\ialu|icontrol|comb~0_combout\ & \ialu|icontrol|sel_s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux2~1_combout\,
	datab => \ialu|isumador|GenSum:2:i_Sumador1Bit|s_i~combout\,
	datac => \ialu|icontrol|comb~0_combout\,
	datad => \ialu|icontrol|sel_s[0]~0_combout\,
	combout => \ialu|imux5bits3to1|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y22_N10
\idisplay|N[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|N[2]~3_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & (\idisplay|Add0~4_combout\)) # (!\ialu|imux5bits3to1|Mux0~2_combout\ & ((\ialu|imux5bits3to1|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~4_combout\,
	datab => \ialu|imux5bits3to1|Mux2~2_combout\,
	datac => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|N[2]~3_combout\);

-- Location: LCCOMB_X36_Y20_N30
\ialu|imux5bits|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits|Selector4~0_combout\ = (\b~combout\(0)) # (!\ialu|icontrol|sel_b~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \ialu|icontrol|sel_b~combout\,
	combout => \ialu|imux5bits|Selector4~0_combout\);

-- Location: LCCOMB_X36_Y20_N6
\ialu|isumador|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|isumador|GenSum:1:i_Sumador1Bit|s_i~combout\ = \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\ $ (((\ialu|imux5bits|Selector4~0_combout\ & ((\a~combout\(0)))) # (!\ialu|imux5bits|Selector4~0_combout\ & (\ialu|icontrol|sel_r~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|sel_r~combout\,
	datab => \ialu|imux5bits|Selector4~0_combout\,
	datac => \ialu|isumador|GenSum:1:i_Sumador1Bit|p_i~combout\,
	datad => \a~combout\(0),
	combout => \ialu|isumador|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X38_Y22_N28
\ialu|imux5bits3to1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux3~0_combout\ = (\ialu|icontrol|sel_s[0]~0_combout\ & (((\ialu|isumador|GenSum:1:i_Sumador1Bit|s_i~combout\ & \ialu|icontrol|comb~0_combout\)))) # (!\ialu|icontrol|sel_s[0]~0_combout\ & (\ialu|imultiplicador|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add0~0_combout\,
	datab => \ialu|isumador|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datac => \ialu|icontrol|sel_s[0]~0_combout\,
	datad => \ialu|icontrol|comb~0_combout\,
	combout => \ialu|imux5bits3to1|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y22_N30
\ialu|imux5bits3to1|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux3~2_combout\ = (\ialu|imux5bits3to1|Mux3~0_combout\) # ((\ialu|imux5bits3to1|Mux3~1_combout\ & !\sel~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux3~1_combout\,
	datac => \sel~combout\(2),
	datad => \ialu|imux5bits3to1|Mux3~0_combout\,
	combout => \ialu|imux5bits3to1|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y22_N16
\idisplay|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~1_cout\ = CARRY(!\ialu|imux5bits3to1|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux4~2_combout\,
	datad => VCC,
	cout => \idisplay|Add0~1_cout\);

-- Location: LCCOMB_X38_Y22_N18
\idisplay|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~2_combout\ = (\ialu|imux5bits3to1|Mux3~2_combout\ & ((\idisplay|Add0~1_cout\) # (GND))) # (!\ialu|imux5bits3to1|Mux3~2_combout\ & (!\idisplay|Add0~1_cout\))
-- \idisplay|Add0~3\ = CARRY((\ialu|imux5bits3to1|Mux3~2_combout\) # (!\idisplay|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux3~2_combout\,
	datad => VCC,
	cin => \idisplay|Add0~1_cout\,
	combout => \idisplay|Add0~2_combout\,
	cout => \idisplay|Add0~3\);

-- Location: LCCOMB_X38_Y22_N12
\idisplay|N[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|N[1]~4_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & ((\idisplay|Add0~2_combout\))) # (!\ialu|imux5bits3to1|Mux0~2_combout\ & (\ialu|imux5bits3to1|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux3~2_combout\,
	datac => \ialu|imux5bits3to1|Mux0~2_combout\,
	datad => \idisplay|Add0~2_combout\,
	combout => \idisplay|N[1]~4_combout\);

-- Location: LCCOMB_X37_Y20_N30
\ialu|imux5bits3to1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux4~1_combout\ = (\b~combout\(0) & (\ialu|icontrol|sel_s[0]~1_combout\ & (\sel~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \ialu|icontrol|sel_s[0]~1_combout\,
	datac => \sel~combout\(1),
	datad => \a~combout\(0),
	combout => \ialu|imux5bits3to1|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y20_N12
\ialu|imux5bits3to1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux4~0_combout\ = (\ialu|icontrol|comb~0_combout\ & (\ialu|icontrol|sel_s[0]~0_combout\ & (\ialu|imux5bits|Selector4~0_combout\ $ (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|icontrol|comb~0_combout\,
	datab => \ialu|icontrol|sel_s[0]~0_combout\,
	datac => \ialu|imux5bits|Selector4~0_combout\,
	datad => \a~combout\(0),
	combout => \ialu|imux5bits3to1|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y20_N2
\ialu|imux5bits3to1|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux4~2_combout\ = (\ialu|imux5bits3to1|Mux4~1_combout\) # ((\ialu|imux5bits3to1|Mux4~0_combout\) # ((\ialu|iunidadlog|Mux4~0_combout\ & !\sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|iunidadlog|Mux4~0_combout\,
	datab => \ialu|imux5bits3to1|Mux4~1_combout\,
	datac => \sel~combout\(2),
	datad => \ialu|imux5bits3to1|Mux4~0_combout\,
	combout => \ialu|imux5bits3to1|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y23_N20
\idisplay|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~0_combout\ = (\idisplay|restador\(0) & (\ialu|imux5bits3to1|Mux4~2_combout\ $ (VCC))) # (!\idisplay|restador\(0) & ((\ialu|imux5bits3to1|Mux4~2_combout\) # (GND)))
-- \idisplay|Add1~1\ = CARRY((\ialu|imux5bits3to1|Mux4~2_combout\) # (!\idisplay|restador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|restador\(0),
	datab => \ialu|imux5bits3to1|Mux4~2_combout\,
	datad => VCC,
	combout => \idisplay|Add1~0_combout\,
	cout => \idisplay|Add1~1\);

-- Location: LCCOMB_X37_Y23_N22
\idisplay|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~3_combout\ = (\idisplay|restador\(1) & ((\idisplay|N[1]~4_combout\ & (!\idisplay|Add1~1\)) # (!\idisplay|N[1]~4_combout\ & ((\idisplay|Add1~1\) # (GND))))) # (!\idisplay|restador\(1) & ((\idisplay|N[1]~4_combout\ & (\idisplay|Add1~1\ & 
-- VCC)) # (!\idisplay|N[1]~4_combout\ & (!\idisplay|Add1~1\))))
-- \idisplay|Add1~4\ = CARRY((\idisplay|restador\(1) & ((!\idisplay|Add1~1\) # (!\idisplay|N[1]~4_combout\))) # (!\idisplay|restador\(1) & (!\idisplay|N[1]~4_combout\ & !\idisplay|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|restador\(1),
	datab => \idisplay|N[1]~4_combout\,
	datad => VCC,
	cin => \idisplay|Add1~1\,
	combout => \idisplay|Add1~3_combout\,
	cout => \idisplay|Add1~4\);

-- Location: LCCOMB_X37_Y23_N24
\idisplay|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~6_combout\ = ((\idisplay|restador\(2) $ (\idisplay|N[2]~3_combout\ $ (\idisplay|Add1~4\)))) # (GND)
-- \idisplay|Add1~7\ = CARRY((\idisplay|restador\(2) & (\idisplay|N[2]~3_combout\ & !\idisplay|Add1~4\)) # (!\idisplay|restador\(2) & ((\idisplay|N[2]~3_combout\) # (!\idisplay|Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|restador\(2),
	datab => \idisplay|N[2]~3_combout\,
	datad => VCC,
	cin => \idisplay|Add1~4\,
	combout => \idisplay|Add1~6_combout\,
	cout => \idisplay|Add1~7\);

-- Location: LCCOMB_X38_Y22_N2
\ialu|imux5bits3to1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ialu|imux5bits3to1|Mux1~2_combout\ = (\ialu|icontrol|sel_s[0]~0_combout\ & (\ialu|imux5bits3to1|Mux1~1_combout\)) # (!\ialu|icontrol|sel_s[0]~0_combout\ & ((\ialu|imultiplicador|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux1~1_combout\,
	datab => \ialu|icontrol|sel_s[0]~0_combout\,
	datac => \ialu|imultiplicador|Add2~0_combout\,
	combout => \ialu|imux5bits3to1|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y22_N22
\idisplay|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~6_combout\ = (\ialu|imux5bits3to1|Mux1~2_combout\ & ((\idisplay|Add0~5\) # (GND))) # (!\ialu|imux5bits3to1|Mux1~2_combout\ & (!\idisplay|Add0~5\))
-- \idisplay|Add0~7\ = CARRY((\ialu|imux5bits3to1|Mux1~2_combout\) # (!\idisplay|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux1~2_combout\,
	datad => VCC,
	cin => \idisplay|Add0~5\,
	combout => \idisplay|Add0~6_combout\,
	cout => \idisplay|Add0~7\);

-- Location: LCCOMB_X38_Y22_N24
\idisplay|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~8_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & (!\idisplay|Add0~7\ & VCC)) # (!\ialu|imux5bits3to1|Mux0~2_combout\ & (\idisplay|Add0~7\ $ (GND)))
-- \idisplay|Add0~9\ = CARRY((!\ialu|imux5bits3to1|Mux0~2_combout\ & !\idisplay|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux0~2_combout\,
	datad => VCC,
	cin => \idisplay|Add0~7\,
	combout => \idisplay|Add0~8_combout\,
	cout => \idisplay|Add0~9\);

-- Location: LCCOMB_X38_Y22_N4
\idisplay|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan3~4_combout\ = (\idisplay|Add0~4_combout\ & (\ialu|imux5bits3to1|Mux0~2_combout\ & \idisplay|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~4_combout\,
	datab => \ialu|imux5bits3to1|Mux0~2_combout\,
	datac => \idisplay|Add0~8_combout\,
	combout => \idisplay|LessThan3~4_combout\);

-- Location: LCCOMB_X38_Y22_N14
\idisplay|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan3~2_combout\ = (\idisplay|Add0~6_combout\ & ((\ialu|imux5bits3to1|Mux0~2_combout\ & ((\idisplay|Add0~2_combout\))) # (!\ialu|imux5bits3to1|Mux0~2_combout\ & (\ialu|imux5bits3to1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux3~2_combout\,
	datab => \idisplay|Add0~2_combout\,
	datac => \ialu|imux5bits3to1|Mux0~2_combout\,
	datad => \idisplay|Add0~6_combout\,
	combout => \idisplay|LessThan3~2_combout\);

-- Location: LCCOMB_X38_Y23_N4
\idisplay|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan3~3_combout\ = (\idisplay|Add0~10_combout\ & ((\ialu|imux5bits3to1|Mux0~2_combout\) # ((\idisplay|LessThan3~4_combout\ & \idisplay|LessThan3~2_combout\)))) # (!\idisplay|Add0~10_combout\ & (\idisplay|LessThan3~4_combout\ & 
-- (\idisplay|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~10_combout\,
	datab => \idisplay|LessThan3~4_combout\,
	datac => \idisplay|LessThan3~2_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|LessThan3~3_combout\);

-- Location: LCCOMB_X37_Y23_N4
\idisplay|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~8_combout\ = (\idisplay|d1[3]~0_combout\ & ((\idisplay|LessThan3~3_combout\ & ((\idisplay|Add1~6_combout\))) # (!\idisplay|LessThan3~3_combout\ & (\idisplay|N[2]~3_combout\)))) # (!\idisplay|d1[3]~0_combout\ & 
-- (((\idisplay|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|N[2]~3_combout\,
	datac => \idisplay|Add1~6_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|Add1~8_combout\);

-- Location: LCCOMB_X38_Y22_N0
\idisplay|N[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|N[3]~2_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & ((\idisplay|Add0~6_combout\))) # (!\ialu|imux5bits3to1|Mux0~2_combout\ & (\ialu|imux5bits3to1|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux1~2_combout\,
	datac => \ialu|imux5bits3to1|Mux0~2_combout\,
	datad => \idisplay|Add0~6_combout\,
	combout => \idisplay|N[3]~2_combout\);

-- Location: LCCOMB_X37_Y23_N26
\idisplay|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~9_combout\ = \idisplay|restador\(3) $ (\idisplay|Add1~7\ $ (!\idisplay|N[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|restador\(3),
	datad => \idisplay|N[3]~2_combout\,
	cin => \idisplay|Add1~7\,
	combout => \idisplay|Add1~9_combout\);

-- Location: LCCOMB_X37_Y23_N14
\idisplay|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~11_combout\ = (\idisplay|d1[3]~0_combout\ & ((\idisplay|LessThan3~3_combout\ & ((\idisplay|Add1~9_combout\))) # (!\idisplay|LessThan3~3_combout\ & (\idisplay|N[3]~2_combout\)))) # (!\idisplay|d1[3]~0_combout\ & 
-- (((\idisplay|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datac => \idisplay|Add1~9_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|Add1~11_combout\);

-- Location: LCCOMB_X37_Y23_N16
\idisplay|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~2_combout\ = (\idisplay|d1[3]~0_combout\ & ((\idisplay|LessThan3~3_combout\ & ((\idisplay|Add1~0_combout\))) # (!\idisplay|LessThan3~3_combout\ & (\ialu|imux5bits3to1|Mux4~2_combout\)))) # (!\idisplay|d1[3]~0_combout\ & 
-- (((\idisplay|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \ialu|imux5bits3to1|Mux4~2_combout\,
	datac => \idisplay|Add1~0_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|Add1~2_combout\);

-- Location: LCCOMB_X37_Y23_N2
\idisplay|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add1~5_combout\ = (\idisplay|d1[3]~0_combout\ & ((\idisplay|LessThan3~3_combout\ & (\idisplay|Add1~3_combout\)) # (!\idisplay|LessThan3~3_combout\ & ((\idisplay|N[1]~4_combout\))))) # (!\idisplay|d1[3]~0_combout\ & (\idisplay|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|Add1~3_combout\,
	datac => \idisplay|N[1]~4_combout\,
	datad => \idisplay|LessThan3~3_combout\,
	combout => \idisplay|Add1~5_combout\);

-- Location: LCCOMB_X36_Y23_N24
\idisplay|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux6~0_combout\ = (\idisplay|Add1~8_combout\ & (!\idisplay|Add1~11_combout\ & ((!\idisplay|Add1~5_combout\) # (!\idisplay|Add1~2_combout\)))) # (!\idisplay|Add1~8_combout\ & (\idisplay|Add1~11_combout\ $ (((\idisplay|Add1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y23_N2
\idisplay|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux5~0_combout\ = (\idisplay|Add1~8_combout\ & ((\idisplay|Add1~11_combout\) # ((\idisplay|Add1~2_combout\ & \idisplay|Add1~5_combout\)))) # (!\idisplay|Add1~8_combout\ & ((\idisplay|Add1~5_combout\) # ((!\idisplay|Add1~11_combout\ & 
-- \idisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y23_N28
\idisplay|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux4~0_combout\ = (\idisplay|Add1~2_combout\) # ((\idisplay|Add1~5_combout\ & ((\idisplay|Add1~11_combout\))) # (!\idisplay|Add1~5_combout\ & (\idisplay|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y23_N22
\idisplay|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux3~0_combout\ = (\idisplay|Add1~5_combout\ & ((\idisplay|Add1~11_combout\) # ((\idisplay|Add1~8_combout\ & \idisplay|Add1~2_combout\)))) # (!\idisplay|Add1~5_combout\ & (\idisplay|Add1~8_combout\ $ (((!\idisplay|Add1~11_combout\ & 
-- \idisplay|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y23_N16
\idisplay|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux2~0_combout\ = (\idisplay|Add1~8_combout\ & (\idisplay|Add1~11_combout\)) # (!\idisplay|Add1~8_combout\ & (\idisplay|Add1~5_combout\ & ((\idisplay|Add1~11_combout\) # (!\idisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y23_N18
\idisplay|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux1~0_combout\ = (\idisplay|Add1~8_combout\ & ((\idisplay|Add1~11_combout\) # (\idisplay|Add1~2_combout\ $ (\idisplay|Add1~5_combout\)))) # (!\idisplay|Add1~8_combout\ & (\idisplay|Add1~11_combout\ & ((\idisplay|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y23_N4
\idisplay|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux0~0_combout\ = (\idisplay|Add1~5_combout\ & (((\idisplay|Add1~11_combout\)))) # (!\idisplay|Add1~5_combout\ & (\idisplay|Add1~8_combout\ $ (((!\idisplay|Add1~11_combout\ & \idisplay|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add1~8_combout\,
	datab => \idisplay|Add1~11_combout\,
	datac => \idisplay|Add1~2_combout\,
	datad => \idisplay|Add1~5_combout\,
	combout => \idisplay|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y22_N26
\idisplay|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Add0~10_combout\ = \ialu|imux5bits3to1|Mux0~2_combout\ $ (!\idisplay|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ialu|imux5bits3to1|Mux0~2_combout\,
	cin => \idisplay|Add0~9\,
	combout => \idisplay|Add0~10_combout\);

-- Location: LCCOMB_X38_Y22_N6
\idisplay|N[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|N[5]~5_combout\ = (\idisplay|Add0~10_combout\ & ((\ialu|icontrol|sel_s[0]~0_combout\ & ((\ialu|imux5bits3to1|Mux0~1_combout\))) # (!\ialu|icontrol|sel_s[0]~0_combout\ & (\ialu|imultiplicador|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imultiplicador|Add3~0_combout\,
	datab => \ialu|imux5bits3to1|Mux0~1_combout\,
	datac => \ialu|icontrol|sel_s[0]~0_combout\,
	datad => \idisplay|Add0~10_combout\,
	combout => \idisplay|N[5]~5_combout\);

-- Location: LCCOMB_X38_Y23_N30
\idisplay|d2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[1]~0_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & ((\idisplay|N[3]~2_combout\ & (\idisplay|Add0~8_combout\ & \idisplay|N[2]~3_combout\)) # (!\idisplay|N[3]~2_combout\ & (!\idisplay|Add0~8_combout\)))) # 
-- (!\ialu|imux5bits3to1|Mux0~2_combout\ & (!\idisplay|N[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux0~2_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datac => \idisplay|Add0~8_combout\,
	datad => \idisplay|N[2]~3_combout\,
	combout => \idisplay|d2[1]~0_combout\);

-- Location: LCCOMB_X38_Y23_N0
\idisplay|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan4~0_combout\ = (\ialu|imux5bits3to1|Mux0~2_combout\ & (\idisplay|Add0~8_combout\ & ((\idisplay|N[3]~2_combout\) # (\idisplay|N[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ialu|imux5bits3to1|Mux0~2_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datac => \idisplay|Add0~8_combout\,
	datad => \idisplay|N[2]~3_combout\,
	combout => \idisplay|LessThan4~0_combout\);

-- Location: LCCOMB_X38_Y23_N10
\idisplay|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan4~1_combout\ = (\idisplay|LessThan4~0_combout\) # ((\idisplay|Add0~10_combout\ & \ialu|imux5bits3to1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~10_combout\,
	datab => \idisplay|LessThan4~0_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|LessThan4~1_combout\);

-- Location: LCCOMB_X38_Y23_N12
\idisplay|d2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[1]~1_combout\ = (\idisplay|N[5]~5_combout\ & (\idisplay|d2[1]~0_combout\)) # (!\idisplay|N[5]~5_combout\ & (((\idisplay|LessThan3~3_combout\) # (\idisplay|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|N[5]~5_combout\,
	datab => \idisplay|d2[1]~0_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|LessThan4~1_combout\,
	combout => \idisplay|d2[1]~1_combout\);

-- Location: LCCOMB_X38_Y23_N8
\idisplay|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|LessThan5~0_combout\ = (\idisplay|N[3]~2_combout\ & ((\idisplay|N[2]~3_combout\) # (\idisplay|N[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|N[2]~3_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datad => \idisplay|N[1]~4_combout\,
	combout => \idisplay|LessThan5~0_combout\);

-- Location: LCCOMB_X38_Y23_N2
\idisplay|d1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d1[3]~0_combout\ = (!\idisplay|LessThan5~0_combout\ & (((!\idisplay|Add0~8_combout\ & !\idisplay|Add0~10_combout\)) # (!\ialu|imux5bits3to1|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~8_combout\,
	datab => \idisplay|Add0~10_combout\,
	datac => \idisplay|LessThan5~0_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|d1[3]~0_combout\);

-- Location: LCCOMB_X39_Y23_N4
\idisplay|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux12~2_combout\ = (\idisplay|d2[1]~1_combout\) # ((\idisplay|LessThan3~3_combout\) # ((!\idisplay|d1[3]~0_combout\ & !\idisplay|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datab => \idisplay|d2[1]~1_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|LessThan4~1_combout\,
	combout => \idisplay|Mux12~2_combout\);

-- Location: LCCOMB_X39_Y23_N0
\idisplay|d2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[0]~2_combout\ = (\idisplay|LessThan3~3_combout\) # ((!\idisplay|d1[3]~0_combout\ & !\idisplay|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d1[3]~0_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|LessThan4~1_combout\,
	combout => \idisplay|d2[0]~2_combout\);

-- Location: LCCOMB_X38_Y23_N6
\idisplay|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux10~2_combout\ = (!\idisplay|d2[1]~1_combout\ & ((\idisplay|LessThan3~3_combout\) # ((!\idisplay|LessThan4~1_combout\ & !\idisplay|d1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|LessThan4~1_combout\,
	datab => \idisplay|d1[3]~0_combout\,
	datac => \idisplay|LessThan3~3_combout\,
	datad => \idisplay|d2[1]~1_combout\,
	combout => \idisplay|Mux10~2_combout\);

-- Location: LCCOMB_X38_Y23_N14
\idisplay|d2[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|d2[2]~3_combout\ = (\idisplay|Add0~10_combout\ & (\ialu|imux5bits3to1|Mux0~2_combout\ & ((\idisplay|Add0~8_combout\) # (\idisplay|N[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|Add0~8_combout\,
	datab => \idisplay|N[3]~2_combout\,
	datac => \idisplay|Add0~10_combout\,
	datad => \ialu|imux5bits3to1|Mux0~2_combout\,
	combout => \idisplay|d2[2]~3_combout\);

-- Location: LCCOMB_X39_Y23_N10
\idisplay|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \idisplay|Mux9~0_combout\ = (!\idisplay|d2[2]~3_combout\ & (\idisplay|d2[1]~1_combout\ & !\idisplay|d2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idisplay|d2[2]~3_combout\,
	datac => \idisplay|d2[1]~1_combout\,
	datad => \idisplay|d2[0]~2_combout\,
	combout => \idisplay|Mux9~0_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ialu|imux|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ov);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign~I\ : cycloneii_io
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
	datain => \ialu|imux5bits3to1|ALT_INV_Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|ALT_INV_d2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|d2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \idisplay|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));
END structure;


