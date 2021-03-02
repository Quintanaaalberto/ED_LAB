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

-- DATE "03/01/2021 13:33:32"

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

ENTITY 	Practica6_Dec IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	s : OUT std_logic_vector(9 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica6_Dec;

-- Design Ports Information
-- s[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[8]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[4]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[5]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[6]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica6_Dec IS
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
SIGNAL ww_s : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iMultiplicador5Bits|Add1~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~8_combout\ : std_logic;
SIGNAL \iDisplays|Add1~0_combout\ : std_logic;
SIGNAL \iDisplays|Add1~3_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[3][6]~combout\ : std_logic;
SIGNAL \iDisplays|LessThan3~0_combout\ : std_logic;
SIGNAL \iDisplays|LessThan4~0_combout\ : std_logic;
SIGNAL \iDisplays|LessThan4~1_combout\ : std_logic;
SIGNAL \iDisplays|LessThan0~0_combout\ : std_logic;
SIGNAL \iDisplays|resta[6]~0_combout\ : std_logic;
SIGNAL \iDisplays|LessThan2~0_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~9_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~2_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~3_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~4_combout\ : std_logic;
SIGNAL \iDisplays|comb~12_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~13_combout\ : std_logic;
SIGNAL \iDisplays|restador1[2]~2_combout\ : std_logic;
SIGNAL \iDisplays|restador1[2]~3_combout\ : std_logic;
SIGNAL \iDisplays|LessThan6~2_combout\ : std_logic;
SIGNAL \iDisplays|restador1[2]~4_combout\ : std_logic;
SIGNAL \iDisplays|restador1[2]~5_combout\ : std_logic;
SIGNAL \iDisplays|comb~14_combout\ : std_logic;
SIGNAL \iDisplays|comb~15_combout\ : std_logic;
SIGNAL \iDisplays|comb~16_combout\ : std_logic;
SIGNAL \iDisplays|comb~18_combout\ : std_logic;
SIGNAL \iDisplays|comb~19_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~9_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~10_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~11_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~12_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~13_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~14_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~15_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~16_combout\ : std_logic;
SIGNAL \iDisplays|restador2[3]~17_combout\ : std_logic;
SIGNAL \iDisplays|restador2[3]~18_combout\ : std_logic;
SIGNAL \iDisplays|restador2[3]~19_combout\ : std_logic;
SIGNAL \iDisplays|comb~22_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~21_combout\ : std_logic;
SIGNAL \iDisplays|comb~24_combout\ : std_logic;
SIGNAL \iDisplays|comb~25_combout\ : std_logic;
SIGNAL \iDisplays|comb~26_combout\ : std_logic;
SIGNAL \iDisplays|comb~27_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][0]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][1]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][1]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[1][2]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][3]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[0][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[4]~0_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add0~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[4]~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[5]~2_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][6]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][6]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][5]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[2][4]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~1\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[5]~3\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[6]~4_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][7]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[6]~5\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[7]~6_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add1~10_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~11\ : std_logic;
SIGNAL \iMultiplicador5Bits|Add2~12_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|pp[4][8]~combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[7]~7\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[8]~8_combout\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[8]~9\ : std_logic;
SIGNAL \iMultiplicador5Bits|s[9]~10_combout\ : std_logic;
SIGNAL \iDisplays|LessThan7~0_combout\ : std_logic;
SIGNAL \iDisplays|LessThan7~1_combout\ : std_logic;
SIGNAL \iDisplays|d1[1]~1_combout\ : std_logic;
SIGNAL \iDisplays|LessThan3~1_combout\ : std_logic;
SIGNAL \iDisplays|d1[1]~3_combout\ : std_logic;
SIGNAL \iDisplays|d1[3]~2_combout\ : std_logic;
SIGNAL \iDisplays|d1[2]~0_combout\ : std_logic;
SIGNAL \iDisplays|d1[2]~4_combout\ : std_logic;
SIGNAL \iDisplays|d1[3]~5_combout\ : std_logic;
SIGNAL \iDisplays|Mux6~0_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~10_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~11_combout\ : std_logic;
SIGNAL \iDisplays|LessThan7~2_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~6_combout\ : std_logic;
SIGNAL \iDisplays|LessThan6~0_combout\ : std_logic;
SIGNAL \iDisplays|LessThan6~1_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~7_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~8_combout\ : std_logic;
SIGNAL \iDisplays|d1[0]~12_combout\ : std_logic;
SIGNAL \iDisplays|Mux5~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux4~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux3~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux2~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux1~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux0~0_combout\ : std_logic;
SIGNAL \iDisplays|resta[6]~1_combout\ : std_logic;
SIGNAL \iDisplays|comb~23_combout\ : std_logic;
SIGNAL \iDisplays|LessThan8~0_combout\ : std_logic;
SIGNAL \iDisplays|resta[6]~2_combout\ : std_logic;
SIGNAL \iDisplays|comb~17_combout\ : std_logic;
SIGNAL \iDisplays|Add0~1\ : std_logic;
SIGNAL \iDisplays|Add0~3\ : std_logic;
SIGNAL \iDisplays|Add0~5\ : std_logic;
SIGNAL \iDisplays|Add0~6_combout\ : std_logic;
SIGNAL \iDisplays|Add0~12_combout\ : std_logic;
SIGNAL \iDisplays|restador1[6]~0_combout\ : std_logic;
SIGNAL \iDisplays|restador1[6]~1_combout\ : std_logic;
SIGNAL \iDisplays|comb~13_combout\ : std_logic;
SIGNAL \iDisplays|Add0~7\ : std_logic;
SIGNAL \iDisplays|Add0~8_combout\ : std_logic;
SIGNAL \iDisplays|Add0~10_combout\ : std_logic;
SIGNAL \iDisplays|Add0~4_combout\ : std_logic;
SIGNAL \iDisplays|Add0~11_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~4_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~6_combout\ : std_logic;
SIGNAL \iDisplays|d2[2]~1_combout\ : std_logic;
SIGNAL \iDisplays|d2[3]~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux13~0_combout\ : std_logic;
SIGNAL \iDisplays|Add0~0_combout\ : std_logic;
SIGNAL \iDisplays|Add0~14_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~5_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~20_combout\ : std_logic;
SIGNAL \iDisplays|LessThan12~0_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~5_combout\ : std_logic;
SIGNAL \iDisplays|restador2[2]~8_combout\ : std_logic;
SIGNAL \iDisplays|Add0~2_combout\ : std_logic;
SIGNAL \iDisplays|Add0~13_combout\ : std_logic;
SIGNAL \iDisplays|restador2[1]~7_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~6_combout\ : std_logic;
SIGNAL \iDisplays|d2[0]~7_combout\ : std_logic;
SIGNAL \iDisplays|Mux12~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux11~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux10~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux9~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux8~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux7~0_combout\ : std_logic;
SIGNAL \iDisplays|d3[3]~2_combout\ : std_logic;
SIGNAL \iDisplays|d3[3]~3_combout\ : std_logic;
SIGNAL \iDisplays|comb~20_combout\ : std_logic;
SIGNAL \iDisplays|comb~21_combout\ : std_logic;
SIGNAL \iDisplays|Add1~1\ : std_logic;
SIGNAL \iDisplays|Add1~4\ : std_logic;
SIGNAL \iDisplays|Add1~6_combout\ : std_logic;
SIGNAL \iDisplays|Add1~8_combout\ : std_logic;
SIGNAL \iDisplays|Add1~5_combout\ : std_logic;
SIGNAL \iDisplays|Add1~2_combout\ : std_logic;
SIGNAL \iDisplays|Mux20~0_combout\ : std_logic;
SIGNAL \iDisplays|Add0~15_combout\ : std_logic;
SIGNAL \iDisplays|Add0~17_combout\ : std_logic;
SIGNAL \iDisplays|Mux19~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux18~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux17~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux16~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux15~0_combout\ : std_logic;
SIGNAL \iDisplays|Mux14~0_combout\ : std_logic;
SIGNAL \iDisplays|restador2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \iDisplays|restador1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iDisplays|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \iDisplays|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \iDisplays|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \iDisplays|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \iDisplays|ALT_INV_Mux11~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\iDisplays|ALT_INV_Mux6~0_combout\ <= NOT \iDisplays|Mux6~0_combout\;
\iDisplays|ALT_INV_Mux20~0_combout\ <= NOT \iDisplays|Mux20~0_combout\;
\iDisplays|ALT_INV_Mux7~0_combout\ <= NOT \iDisplays|Mux7~0_combout\;
\iDisplays|ALT_INV_Mux10~0_combout\ <= NOT \iDisplays|Mux10~0_combout\;
\iDisplays|ALT_INV_Mux11~0_combout\ <= NOT \iDisplays|Mux11~0_combout\;

-- Location: LCCOMB_X15_Y15_N2
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

-- Location: LCCOMB_X16_Y16_N14
\iMultiplicador5Bits|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~8_combout\ = (\iMultiplicador5Bits|Add0~7\ & (\b~combout\(1) & (\a~combout\(4) & VCC))) # (!\iMultiplicador5Bits|Add0~7\ & ((((\b~combout\(1) & \a~combout\(4))))))
-- \iMultiplicador5Bits|Add0~9\ = CARRY((\b~combout\(1) & (\a~combout\(4) & !\iMultiplicador5Bits|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~7\,
	combout => \iMultiplicador5Bits|Add0~8_combout\,
	cout => \iMultiplicador5Bits|Add0~9\);

-- Location: LCCOMB_X15_Y15_N4
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

-- Location: LCCOMB_X16_Y16_N16
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

-- Location: LCCOMB_X15_Y15_N8
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

-- Location: LCCOMB_X8_Y20_N8
\iDisplays|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~0_combout\ = (\iDisplays|restador2\(1) & (\iMultiplicador5Bits|Add0~0_combout\ $ (VCC))) # (!\iDisplays|restador2\(1) & ((\iMultiplicador5Bits|Add0~0_combout\) # (GND)))
-- \iDisplays|Add1~1\ = CARRY((\iMultiplicador5Bits|Add0~0_combout\) # (!\iDisplays|restador2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2\(1),
	datab => \iMultiplicador5Bits|Add0~0_combout\,
	datad => VCC,
	combout => \iDisplays|Add1~0_combout\,
	cout => \iDisplays|Add1~1\);

-- Location: LCCOMB_X8_Y20_N10
\iDisplays|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~3_combout\ = (\iDisplays|Add0~14_combout\ & ((\iDisplays|restador2\(2) & (!\iDisplays|Add1~1\)) # (!\iDisplays|restador2\(2) & (\iDisplays|Add1~1\ & VCC)))) # (!\iDisplays|Add0~14_combout\ & ((\iDisplays|restador2\(2) & 
-- ((\iDisplays|Add1~1\) # (GND))) # (!\iDisplays|restador2\(2) & (!\iDisplays|Add1~1\))))
-- \iDisplays|Add1~4\ = CARRY((\iDisplays|Add0~14_combout\ & (\iDisplays|restador2\(2) & !\iDisplays|Add1~1\)) # (!\iDisplays|Add0~14_combout\ & ((\iDisplays|restador2\(2)) # (!\iDisplays|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|restador2\(2),
	datad => VCC,
	cin => \iDisplays|Add1~1\,
	combout => \iDisplays|Add1~3_combout\,
	cout => \iDisplays|Add1~4\);

-- Location: LCCOMB_X16_Y16_N18
\iMultiplicador5Bits|pp[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][2]~combout\ = (\b~combout\(0) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[0][2]~combout\);

-- Location: LCCOMB_X16_Y16_N20
\iMultiplicador5Bits|pp[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][3]~combout\ = (\b~combout\(1) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[1][3]~combout\);

-- Location: LCCOMB_X15_Y15_N12
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

-- Location: LCCOMB_X16_Y16_N24
\iMultiplicador5Bits|pp[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[1][4]~combout\ = (\a~combout\(3) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(1),
	combout => \iMultiplicador5Bits|pp[1][4]~combout\);

-- Location: LCCOMB_X15_Y15_N16
\iMultiplicador5Bits|pp[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][4]~combout\ = (\b~combout\(3) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[3][4]~combout\);

-- Location: LCCOMB_X15_Y15_N20
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

-- Location: LCCOMB_X15_Y15_N24
\iMultiplicador5Bits|pp[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[3][6]~combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \iMultiplicador5Bits|pp[3][6]~combout\);

-- Location: LCCOMB_X15_Y19_N16
\iDisplays|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan3~0_combout\ = (!\iMultiplicador5Bits|Add2~2_combout\) # (!\iMultiplicador5Bits|s[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|Add2~2_combout\,
	combout => \iDisplays|LessThan3~0_combout\);

-- Location: LCCOMB_X14_Y19_N8
\iDisplays|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan4~0_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\ & (\iMultiplicador5Bits|s[5]~2_combout\ & ((\iMultiplicador5Bits|Add2~2_combout\) # (\iMultiplicador5Bits|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~2_combout\,
	datab => \iMultiplicador5Bits|Add2~0_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisplays|LessThan4~0_combout\);

-- Location: LCCOMB_X14_Y19_N2
\iDisplays|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan4~1_combout\ = (\iDisplays|LessThan4~0_combout\ & (\iMultiplicador5Bits|s[7]~6_combout\ & \iMultiplicador5Bits|s[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|LessThan4~0_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|LessThan4~1_combout\);

-- Location: LCCOMB_X14_Y19_N12
\iDisplays|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan0~0_combout\ = (!\iMultiplicador5Bits|Add2~0_combout\ & (!\iMultiplicador5Bits|Add2~2_combout\ & !\iMultiplicador5Bits|s[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|Add2~0_combout\,
	datac => \iMultiplicador5Bits|Add2~2_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y19_N6
\iDisplays|resta[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|resta[6]~0_combout\ = (!\iMultiplicador5Bits|s[7]~6_combout\ & ((\iDisplays|LessThan0~0_combout\) # ((!\iMultiplicador5Bits|s[5]~2_combout\) # (!\iMultiplicador5Bits|s[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan0~0_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisplays|resta[6]~0_combout\);

-- Location: LCCOMB_X14_Y19_N16
\iDisplays|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan2~0_combout\ = (\iMultiplicador5Bits|s[5]~2_combout\ & (\iMultiplicador5Bits|Add2~0_combout\ & (\iMultiplicador5Bits|Add2~2_combout\ & \iMultiplicador5Bits|s[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datab => \iMultiplicador5Bits|Add2~0_combout\,
	datac => \iMultiplicador5Bits|Add2~2_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|LessThan2~0_combout\);

-- Location: LCCOMB_X15_Y19_N22
\iDisplays|d1[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~9_combout\ = ((\iMultiplicador5Bits|s[7]~6_combout\ & ((\iDisplays|LessThan2~0_combout\) # (\iMultiplicador5Bits|s[6]~4_combout\)))) # (!\iDisplays|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[7]~6_combout\,
	datab => \iDisplays|LessThan2~0_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iDisplays|LessThan3~1_combout\,
	combout => \iDisplays|d1[0]~9_combout\);

-- Location: LCCOMB_X8_Y20_N16
\iDisplays|d2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~2_combout\ = (\iDisplays|Add0~14_combout\ & (((!\iDisplays|Add0~13_combout\)))) # (!\iDisplays|Add0~14_combout\ & ((\iDisplays|Add0~11_combout\ & ((\iMultiplicador5Bits|Add0~0_combout\) # (\iDisplays|Add0~13_combout\))) # 
-- (!\iDisplays|Add0~11_combout\ & ((!\iDisplays|Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|d2[0]~2_combout\);

-- Location: LCCOMB_X8_Y20_N26
\iDisplays|d2[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~3_combout\ = (\iDisplays|Add0~11_combout\ & (!\iDisplays|Add0~14_combout\ & ((!\iDisplays|Add0~13_combout\)))) # (!\iDisplays|Add0~11_combout\ & (\iDisplays|Add0~13_combout\ & ((\iDisplays|Add0~14_combout\) # 
-- (\iMultiplicador5Bits|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|d2[0]~3_combout\);

-- Location: LCCOMB_X8_Y20_N4
\iDisplays|d2[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~4_combout\ = (\iDisplays|Add0~12_combout\ & (((\iDisplays|Add0~10_combout\) # (\iDisplays|d2[0]~2_combout\)))) # (!\iDisplays|Add0~12_combout\ & (\iDisplays|d2[0]~3_combout\ & (!\iDisplays|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~12_combout\,
	datab => \iDisplays|d2[0]~3_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|d2[0]~2_combout\,
	combout => \iDisplays|d2[0]~4_combout\);

-- Location: LCCOMB_X15_Y16_N10
\iDisplays|comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~12_combout\ = (\iDisplays|restador1[6]~1_combout\ & \iDisplays|resta[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iDisplays|restador1[6]~1_combout\,
	datad => \iDisplays|resta[6]~2_combout\,
	combout => \iDisplays|comb~12_combout\);

-- Location: LCCOMB_X14_Y19_N24
\iDisplays|d1[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~13_combout\ = (\iMultiplicador5Bits|s[7]~6_combout\ & (((\iMultiplicador5Bits|s[6]~4_combout\) # (\iMultiplicador5Bits|s[5]~2_combout\)) # (!\iDisplays|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan0~0_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisplays|d1[0]~13_combout\);

-- Location: LCCOMB_X13_Y19_N10
\iDisplays|restador1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[2]~2_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\ & (\iDisplays|d1[0]~13_combout\ & \iMultiplicador5Bits|s[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[9]~10_combout\,
	datab => \iDisplays|d1[0]~13_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|restador1[2]~2_combout\);

-- Location: LCCOMB_X14_Y19_N26
\iDisplays|restador1[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[2]~3_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\) # ((\iDisplays|LessThan4~0_combout\ & (\iMultiplicador5Bits|s[7]~6_combout\ & \iMultiplicador5Bits|s[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan4~0_combout\,
	datab => \iMultiplicador5Bits|s[9]~10_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|restador1[2]~3_combout\);

-- Location: LCCOMB_X14_Y19_N20
\iDisplays|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan6~2_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\) # ((\iMultiplicador5Bits|s[7]~6_combout\) # (\iDisplays|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iDisplays|LessThan6~0_combout\,
	combout => \iDisplays|LessThan6~2_combout\);

-- Location: LCCOMB_X14_Y19_N14
\iDisplays|restador1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[2]~4_combout\ = (\iMultiplicador5Bits|s[8]~8_combout\ & ((\iDisplays|restador1[2]~3_combout\) # ((\iDisplays|LessThan6~2_combout\ & !\iDisplays|d1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan6~2_combout\,
	datab => \iDisplays|restador1[2]~3_combout\,
	datac => \iDisplays|d1[2]~0_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|restador1[2]~4_combout\);

-- Location: LCCOMB_X13_Y19_N4
\iDisplays|restador1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[2]~5_combout\ = (\iDisplays|restador1[2]~4_combout\) # ((\iMultiplicador5Bits|s[9]~10_combout\ & (\iDisplays|d1[0]~9_combout\)) # (!\iMultiplicador5Bits|s[9]~10_combout\ & ((\iDisplays|d1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[0]~9_combout\,
	datab => \iDisplays|d1[0]~6_combout\,
	datac => \iDisplays|restador1[2]~4_combout\,
	datad => \iMultiplicador5Bits|s[9]~10_combout\,
	combout => \iDisplays|restador1[2]~5_combout\);

-- Location: LCCOMB_X13_Y19_N30
\iDisplays|comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~14_combout\ = (\iDisplays|resta[6]~2_combout\ & ((\iDisplays|d1[3]~5_combout\ & (\iDisplays|restador1[2]~2_combout\)) # (!\iDisplays|d1[3]~5_combout\ & ((!\iDisplays|restador1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1[2]~2_combout\,
	datab => \iDisplays|restador1[2]~5_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	datad => \iDisplays|d1[3]~5_combout\,
	combout => \iDisplays|comb~14_combout\);

-- Location: LCCOMB_X13_Y19_N8
\iDisplays|comb~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~15_combout\ = (\iDisplays|resta[6]~2_combout\ & ((\iDisplays|d1[3]~5_combout\ & (!\iDisplays|restador1[2]~2_combout\)) # (!\iDisplays|d1[3]~5_combout\ & ((\iDisplays|restador1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1[2]~2_combout\,
	datab => \iDisplays|restador1[2]~5_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	datad => \iDisplays|d1[3]~5_combout\,
	combout => \iDisplays|comb~15_combout\);

-- Location: LCCOMB_X1_Y19_N6
\iDisplays|comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~16_combout\ = (!\iDisplays|d1[1]~3_combout\ & \iDisplays|resta[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	combout => \iDisplays|comb~16_combout\);

-- Location: LCCOMB_X13_Y19_N2
\iDisplays|comb~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~18_combout\ = (\iDisplays|resta[6]~2_combout\ & ((\iDisplays|d1[3]~5_combout\ & (!\iDisplays|restador1[2]~2_combout\)) # (!\iDisplays|d1[3]~5_combout\ & ((!\iDisplays|restador1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1[2]~2_combout\,
	datab => \iDisplays|restador1[2]~5_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	datad => \iDisplays|d1[3]~5_combout\,
	combout => \iDisplays|comb~18_combout\);

-- Location: LCCOMB_X13_Y19_N28
\iDisplays|comb~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~19_combout\ = (\iDisplays|resta[6]~2_combout\ & ((\iDisplays|d1[3]~5_combout\ & (\iDisplays|restador1[2]~2_combout\)) # (!\iDisplays|d1[3]~5_combout\ & ((\iDisplays|restador1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1[2]~2_combout\,
	datab => \iDisplays|restador1[2]~5_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	datad => \iDisplays|d1[3]~5_combout\,
	combout => \iDisplays|comb~19_combout\);

-- Location: LCCOMB_X8_Y20_N20
\iDisplays|restador2[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~9_combout\ = ((\iDisplays|Add0~14_combout\ & (\iMultiplicador5Bits|Add0~0_combout\ & \iDisplays|Add0~13_combout\)) # (!\iDisplays|Add0~14_combout\ & ((!\iDisplays|Add0~13_combout\)))) # (!\iDisplays|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|restador2[1]~9_combout\);

-- Location: LCCOMB_X8_Y20_N14
\iDisplays|restador2[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~10_combout\ = (\iDisplays|Add0~11_combout\ & ((\iDisplays|Add0~14_combout\ & ((!\iDisplays|Add0~13_combout\))) # (!\iDisplays|Add0~14_combout\ & ((\iMultiplicador5Bits|Add0~0_combout\) # (\iDisplays|Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|restador2[1]~10_combout\);

-- Location: LCCOMB_X9_Y20_N10
\iDisplays|restador2[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~11_combout\ = (\iDisplays|restador2[1]~10_combout\ & (\iDisplays|Add0~12_combout\ & !\iDisplays|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[1]~10_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|restador2[1]~11_combout\);

-- Location: LCCOMB_X9_Y20_N20
\iDisplays|restador2[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~12_combout\ = (!\iDisplays|Add0~12_combout\ & (!\iDisplays|Add0~11_combout\ & \iDisplays|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~12_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|restador2[2]~12_combout\);

-- Location: LCCOMB_X9_Y20_N30
\iDisplays|restador2[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~13_combout\ = (\iDisplays|restador2[2]~12_combout\ & ((\iDisplays|LessThan12~0_combout\) # (\iDisplays|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan12~0_combout\,
	datac => \iDisplays|restador2[2]~12_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|restador2[1]~13_combout\);

-- Location: LCCOMB_X7_Y20_N20
\iDisplays|restador2[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~14_combout\ = (\iDisplays|Add0~12_combout\ & ((\iDisplays|Add0~10_combout\) # ((!\iDisplays|Add0~13_combout\ & !\iDisplays|Add0~11_combout\)))) # (!\iDisplays|Add0~12_combout\ & (((!\iDisplays|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|restador2[1]~14_combout\);

-- Location: LCCOMB_X7_Y20_N6
\iDisplays|restador2[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~15_combout\ = (\iDisplays|restador2[1]~14_combout\) # ((\iDisplays|restador2[1]~7_combout\ & \iDisplays|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|restador2[1]~7_combout\,
	datac => \iDisplays|restador2[1]~14_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|restador2[1]~15_combout\);

-- Location: LCCOMB_X9_Y20_N8
\iDisplays|restador2[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~16_combout\ = (\iDisplays|restador2[1]~21_combout\ & ((\iDisplays|restador2[1]~11_combout\) # ((\iDisplays|restador2[1]~13_combout\) # (\iDisplays|restador2[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[1]~11_combout\,
	datab => \iDisplays|restador2[1]~13_combout\,
	datac => \iDisplays|restador2[1]~15_combout\,
	datad => \iDisplays|restador2[1]~21_combout\,
	combout => \iDisplays|restador2[1]~16_combout\);

-- Location: LCCOMB_X9_Y20_N2
\iDisplays|restador2[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[3]~17_combout\ = (!\iDisplays|Add0~10_combout\ & ((!\iDisplays|Add0~12_combout\) # (!\iDisplays|restador2[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[1]~10_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|restador2[3]~17_combout\);

-- Location: LCCOMB_X9_Y20_N12
\iDisplays|restador2[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[3]~18_combout\ = (!\iDisplays|LessThan12~0_combout\ & (\iDisplays|restador2[2]~12_combout\ & !\iDisplays|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan12~0_combout\,
	datac => \iDisplays|restador2[2]~12_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|restador2[3]~18_combout\);

-- Location: LCCOMB_X9_Y20_N14
\iDisplays|restador2[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[3]~19_combout\ = (\iDisplays|restador2[1]~21_combout\ & ((\iDisplays|restador2[3]~18_combout\) # ((\iDisplays|restador2[3]~17_combout\) # (\iDisplays|restador2[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[3]~18_combout\,
	datab => \iDisplays|restador2[3]~17_combout\,
	datac => \iDisplays|restador2[1]~15_combout\,
	datad => \iDisplays|restador2[1]~21_combout\,
	combout => \iDisplays|restador2[3]~19_combout\);

-- Location: LCCOMB_X13_Y19_N6
\iDisplays|comb~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~22_combout\ = (!\iDisplays|d1[2]~4_combout\ & (((\iMultiplicador5Bits|s[9]~10_combout\) # (\iMultiplicador5Bits|s[8]~8_combout\)) # (!\iDisplays|resta[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iMultiplicador5Bits|s[9]~10_combout\,
	datac => \iDisplays|d1[2]~4_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|comb~22_combout\);

-- Location: LCCOMB_X9_Y20_N0
\iDisplays|restador2[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~21_combout\ = (\iDisplays|Add0~12_combout\) # ((\iDisplays|restador2[1]~9_combout\) # (\iDisplays|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|restador2[1]~9_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|restador2[1]~21_combout\);

-- Location: LCCOMB_X9_Y20_N18
\iDisplays|comb~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~24_combout\ = (!\iDisplays|restador2[1]~16_combout\ & (((\iDisplays|Add0~12_combout\) # (\iDisplays|Add0~10_combout\)) # (!\iDisplays|d3[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d3[3]~2_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|restador2[1]~16_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|comb~24_combout\);

-- Location: LCCOMB_X9_Y20_N28
\iDisplays|comb~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~25_combout\ = (\iDisplays|restador2[1]~16_combout\ & (((\iDisplays|Add0~12_combout\) # (\iDisplays|Add0~10_combout\)) # (!\iDisplays|d3[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d3[3]~2_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|restador2[1]~16_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|comb~25_combout\);

-- Location: LCCOMB_X9_Y20_N6
\iDisplays|comb~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~26_combout\ = (!\iDisplays|restador2[3]~19_combout\ & (((\iDisplays|Add0~12_combout\) # (\iDisplays|Add0~10_combout\)) # (!\iDisplays|d3[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d3[3]~2_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|restador2[3]~19_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|comb~26_combout\);

-- Location: LCCOMB_X9_Y20_N16
\iDisplays|comb~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~27_combout\ = (\iDisplays|restador2[3]~19_combout\ & (((\iDisplays|Add0~12_combout\) # (\iDisplays|Add0~10_combout\)) # (!\iDisplays|d3[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d3[3]~2_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|restador2[3]~19_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|comb~27_combout\);

-- Location: LCCOMB_X13_Y19_N26
\iDisplays|restador1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1\(5) = (!\iDisplays|comb~14_combout\ & ((\iDisplays|comb~15_combout\) # (\iDisplays|restador1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|comb~14_combout\,
	datac => \iDisplays|comb~15_combout\,
	datad => \iDisplays|restador1\(5),
	combout => \iDisplays|restador1\(5));

-- Location: LCCOMB_X13_Y19_N14
\iDisplays|restador1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1\(2) = (!\iDisplays|comb~18_combout\ & ((\iDisplays|restador1\(2)) # (\iDisplays|comb~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|comb~18_combout\,
	datac => \iDisplays|restador1\(2),
	datad => \iDisplays|comb~19_combout\,
	combout => \iDisplays|restador1\(2));

-- Location: LCCOMB_X9_Y20_N26
\iDisplays|restador2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2\(1) = (!\iDisplays|comb~24_combout\ & ((\iDisplays|comb~25_combout\) # (\iDisplays|restador2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|comb~24_combout\,
	datac => \iDisplays|comb~25_combout\,
	datad => \iDisplays|restador2\(1),
	combout => \iDisplays|restador2\(1));

-- Location: LCCOMB_X9_Y20_N4
\iDisplays|restador2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2\(3) = (!\iDisplays|comb~26_combout\ & ((\iDisplays|comb~27_combout\) # (\iDisplays|restador2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|comb~27_combout\,
	datac => \iDisplays|restador2\(3),
	datad => \iDisplays|comb~26_combout\,
	combout => \iDisplays|restador2\(3));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y16_N2
\iMultiplicador5Bits|pp[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][0]~combout\ = (\b~combout\(0) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][0]~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y16_N26
\iMultiplicador5Bits|pp[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][1]~combout\ = (\b~combout\(0) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[0][1]~combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y16_N0
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

-- Location: LCCOMB_X16_Y16_N6
\iMultiplicador5Bits|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~0_combout\ = (\iMultiplicador5Bits|pp[0][1]~combout\ & (\iMultiplicador5Bits|pp[1][1]~combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[0][1]~combout\ & (\iMultiplicador5Bits|pp[1][1]~combout\ & VCC))
-- \iMultiplicador5Bits|Add0~1\ = CARRY((\iMultiplicador5Bits|pp[0][1]~combout\ & \iMultiplicador5Bits|pp[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[0][1]~combout\,
	datab => \iMultiplicador5Bits|pp[1][1]~combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|Add0~0_combout\,
	cout => \iMultiplicador5Bits|Add0~1\);

-- Location: LCCOMB_X15_Y16_N28
\iMultiplicador5Bits|pp[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][2]~combout\ = (\b~combout\(2) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[2][2]~combout\);

-- Location: LCCOMB_X16_Y16_N4
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

-- Location: LCCOMB_X16_Y16_N8
\iMultiplicador5Bits|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~2_combout\ = (\iMultiplicador5Bits|pp[0][2]~combout\ & ((\iMultiplicador5Bits|pp[1][2]~combout\ & (\iMultiplicador5Bits|Add0~1\ & VCC)) # (!\iMultiplicador5Bits|pp[1][2]~combout\ & (!\iMultiplicador5Bits|Add0~1\)))) # 
-- (!\iMultiplicador5Bits|pp[0][2]~combout\ & ((\iMultiplicador5Bits|pp[1][2]~combout\ & (!\iMultiplicador5Bits|Add0~1\)) # (!\iMultiplicador5Bits|pp[1][2]~combout\ & ((\iMultiplicador5Bits|Add0~1\) # (GND)))))
-- \iMultiplicador5Bits|Add0~3\ = CARRY((\iMultiplicador5Bits|pp[0][2]~combout\ & (!\iMultiplicador5Bits|pp[1][2]~combout\ & !\iMultiplicador5Bits|Add0~1\)) # (!\iMultiplicador5Bits|pp[0][2]~combout\ & ((!\iMultiplicador5Bits|Add0~1\) # 
-- (!\iMultiplicador5Bits|pp[1][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[0][2]~combout\,
	datab => \iMultiplicador5Bits|pp[1][2]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~1\,
	combout => \iMultiplicador5Bits|Add0~2_combout\,
	cout => \iMultiplicador5Bits|Add0~3\);

-- Location: LCCOMB_X15_Y16_N14
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

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y16_N30
\iMultiplicador5Bits|pp[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][3]~combout\ = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	combout => \iMultiplicador5Bits|pp[0][3]~combout\);

-- Location: LCCOMB_X16_Y16_N10
\iMultiplicador5Bits|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~4_combout\ = ((\iMultiplicador5Bits|pp[1][3]~combout\ $ (\iMultiplicador5Bits|pp[0][3]~combout\ $ (!\iMultiplicador5Bits|Add0~3\)))) # (GND)
-- \iMultiplicador5Bits|Add0~5\ = CARRY((\iMultiplicador5Bits|pp[1][3]~combout\ & ((\iMultiplicador5Bits|pp[0][3]~combout\) # (!\iMultiplicador5Bits|Add0~3\))) # (!\iMultiplicador5Bits|pp[1][3]~combout\ & (\iMultiplicador5Bits|pp[0][3]~combout\ & 
-- !\iMultiplicador5Bits|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[1][3]~combout\,
	datab => \iMultiplicador5Bits|pp[0][3]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~3\,
	combout => \iMultiplicador5Bits|Add0~4_combout\,
	cout => \iMultiplicador5Bits|Add0~5\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y15_N14
\iMultiplicador5Bits|pp[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][3]~combout\ = (\b~combout\(2) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[2][3]~combout\);

-- Location: LCCOMB_X15_Y15_N0
\iMultiplicador5Bits|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~0_combout\ = (\iMultiplicador5Bits|pp[3][3]~combout\ & (\iMultiplicador5Bits|pp[2][3]~combout\ $ (VCC))) # (!\iMultiplicador5Bits|pp[3][3]~combout\ & (\iMultiplicador5Bits|pp[2][3]~combout\ & VCC))
-- \iMultiplicador5Bits|Add1~1\ = CARRY((\iMultiplicador5Bits|pp[3][3]~combout\ & \iMultiplicador5Bits|pp[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[3][3]~combout\,
	datab => \iMultiplicador5Bits|pp[2][3]~combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|Add1~0_combout\,
	cout => \iMultiplicador5Bits|Add1~1\);

-- Location: LCCOMB_X15_Y16_N16
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

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y16_N2
\iMultiplicador5Bits|pp[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[0][4]~combout\ = (\b~combout\(0) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(4),
	combout => \iMultiplicador5Bits|pp[0][4]~combout\);

-- Location: LCCOMB_X16_Y16_N12
\iMultiplicador5Bits|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add0~6_combout\ = (\iMultiplicador5Bits|pp[1][4]~combout\ & ((\iMultiplicador5Bits|pp[0][4]~combout\ & (\iMultiplicador5Bits|Add0~5\ & VCC)) # (!\iMultiplicador5Bits|pp[0][4]~combout\ & (!\iMultiplicador5Bits|Add0~5\)))) # 
-- (!\iMultiplicador5Bits|pp[1][4]~combout\ & ((\iMultiplicador5Bits|pp[0][4]~combout\ & (!\iMultiplicador5Bits|Add0~5\)) # (!\iMultiplicador5Bits|pp[0][4]~combout\ & ((\iMultiplicador5Bits|Add0~5\) # (GND)))))
-- \iMultiplicador5Bits|Add0~7\ = CARRY((\iMultiplicador5Bits|pp[1][4]~combout\ & (!\iMultiplicador5Bits|pp[0][4]~combout\ & !\iMultiplicador5Bits|Add0~5\)) # (!\iMultiplicador5Bits|pp[1][4]~combout\ & ((!\iMultiplicador5Bits|Add0~5\) # 
-- (!\iMultiplicador5Bits|pp[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[1][4]~combout\,
	datab => \iMultiplicador5Bits|pp[0][4]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add0~5\,
	combout => \iMultiplicador5Bits|Add0~6_combout\,
	cout => \iMultiplicador5Bits|Add0~7\);

-- Location: LCCOMB_X15_Y16_N18
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y16_N30
\iMultiplicador5Bits|pp[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][4]~combout\ = (\b~combout\(4) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datac => \a~combout\(0),
	combout => \iMultiplicador5Bits|pp[4][4]~combout\);

-- Location: LCCOMB_X15_Y19_N4
\iMultiplicador5Bits|s[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[4]~0_combout\ = (\iMultiplicador5Bits|Add2~4_combout\ & (\iMultiplicador5Bits|pp[4][4]~combout\ $ (VCC))) # (!\iMultiplicador5Bits|Add2~4_combout\ & (\iMultiplicador5Bits|pp[4][4]~combout\ & VCC))
-- \iMultiplicador5Bits|s[4]~1\ = CARRY((\iMultiplicador5Bits|Add2~4_combout\ & \iMultiplicador5Bits|pp[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~4_combout\,
	datab => \iMultiplicador5Bits|pp[4][4]~combout\,
	datad => VCC,
	combout => \iMultiplicador5Bits|s[4]~0_combout\,
	cout => \iMultiplicador5Bits|s[4]~1\);

-- Location: LCCOMB_X15_Y16_N20
\iMultiplicador5Bits|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~6_combout\ = (\iMultiplicador5Bits|Add1~4_combout\ & ((\iMultiplicador5Bits|Add0~8_combout\ & (\iMultiplicador5Bits|Add2~5\ & VCC)) # (!\iMultiplicador5Bits|Add0~8_combout\ & (!\iMultiplicador5Bits|Add2~5\)))) # 
-- (!\iMultiplicador5Bits|Add1~4_combout\ & ((\iMultiplicador5Bits|Add0~8_combout\ & (!\iMultiplicador5Bits|Add2~5\)) # (!\iMultiplicador5Bits|Add0~8_combout\ & ((\iMultiplicador5Bits|Add2~5\) # (GND)))))
-- \iMultiplicador5Bits|Add2~7\ = CARRY((\iMultiplicador5Bits|Add1~4_combout\ & (!\iMultiplicador5Bits|Add0~8_combout\ & !\iMultiplicador5Bits|Add2~5\)) # (!\iMultiplicador5Bits|Add1~4_combout\ & ((!\iMultiplicador5Bits|Add2~5\) # 
-- (!\iMultiplicador5Bits|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add1~4_combout\,
	datab => \iMultiplicador5Bits|Add0~8_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~5\,
	combout => \iMultiplicador5Bits|Add2~6_combout\,
	cout => \iMultiplicador5Bits|Add2~7\);

-- Location: LCCOMB_X16_Y16_N28
\iMultiplicador5Bits|pp[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][5]~combout\ = (\b~combout\(4) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(1),
	combout => \iMultiplicador5Bits|pp[4][5]~combout\);

-- Location: LCCOMB_X15_Y19_N6
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

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y15_N28
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

-- Location: LCCOMB_X15_Y15_N26
\iMultiplicador5Bits|pp[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][6]~combout\ = (\b~combout\(2) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \a~combout\(4),
	combout => \iMultiplicador5Bits|pp[2][6]~combout\);

-- Location: LCCOMB_X15_Y15_N30
\iMultiplicador5Bits|pp[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][5]~combout\ = (\b~combout\(2) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \a~combout\(3),
	combout => \iMultiplicador5Bits|pp[2][5]~combout\);

-- Location: LCCOMB_X15_Y15_N18
\iMultiplicador5Bits|pp[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[2][4]~combout\ = (\b~combout\(2) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \iMultiplicador5Bits|pp[2][4]~combout\);

-- Location: LCCOMB_X15_Y15_N6
\iMultiplicador5Bits|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add1~6_combout\ = (\iMultiplicador5Bits|pp[3][6]~combout\ & ((\iMultiplicador5Bits|pp[2][6]~combout\ & (\iMultiplicador5Bits|Add1~5\ & VCC)) # (!\iMultiplicador5Bits|pp[2][6]~combout\ & (!\iMultiplicador5Bits|Add1~5\)))) # 
-- (!\iMultiplicador5Bits|pp[3][6]~combout\ & ((\iMultiplicador5Bits|pp[2][6]~combout\ & (!\iMultiplicador5Bits|Add1~5\)) # (!\iMultiplicador5Bits|pp[2][6]~combout\ & ((\iMultiplicador5Bits|Add1~5\) # (GND)))))
-- \iMultiplicador5Bits|Add1~7\ = CARRY((\iMultiplicador5Bits|pp[3][6]~combout\ & (!\iMultiplicador5Bits|pp[2][6]~combout\ & !\iMultiplicador5Bits|Add1~5\)) # (!\iMultiplicador5Bits|pp[3][6]~combout\ & ((!\iMultiplicador5Bits|Add1~5\) # 
-- (!\iMultiplicador5Bits|pp[2][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[3][6]~combout\,
	datab => \iMultiplicador5Bits|pp[2][6]~combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add1~5\,
	combout => \iMultiplicador5Bits|Add1~6_combout\,
	cout => \iMultiplicador5Bits|Add1~7\);

-- Location: LCCOMB_X15_Y16_N22
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

-- Location: LCCOMB_X15_Y19_N8
\iMultiplicador5Bits|s[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|s[6]~4_combout\ = ((\iMultiplicador5Bits|pp[4][6]~combout\ $ (\iMultiplicador5Bits|Add2~8_combout\ $ (!\iMultiplicador5Bits|s[5]~3\)))) # (GND)
-- \iMultiplicador5Bits|s[6]~5\ = CARRY((\iMultiplicador5Bits|pp[4][6]~combout\ & ((\iMultiplicador5Bits|Add2~8_combout\) # (!\iMultiplicador5Bits|s[5]~3\))) # (!\iMultiplicador5Bits|pp[4][6]~combout\ & (\iMultiplicador5Bits|Add2~8_combout\ & 
-- !\iMultiplicador5Bits|s[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|pp[4][6]~combout\,
	datab => \iMultiplicador5Bits|Add2~8_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|s[5]~3\,
	combout => \iMultiplicador5Bits|s[6]~4_combout\,
	cout => \iMultiplicador5Bits|s[6]~5\);

-- Location: LCCOMB_X16_Y16_N22
\iMultiplicador5Bits|pp[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][7]~combout\ = (\a~combout\(3) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(4),
	combout => \iMultiplicador5Bits|pp[4][7]~combout\);

-- Location: LCCOMB_X15_Y16_N24
\iMultiplicador5Bits|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|Add2~10_combout\ = (\iMultiplicador5Bits|Add1~8_combout\ & (!\iMultiplicador5Bits|Add2~9\)) # (!\iMultiplicador5Bits|Add1~8_combout\ & ((\iMultiplicador5Bits|Add2~9\) # (GND)))
-- \iMultiplicador5Bits|Add2~11\ = CARRY((!\iMultiplicador5Bits|Add2~9\) # (!\iMultiplicador5Bits|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add1~8_combout\,
	datad => VCC,
	cin => \iMultiplicador5Bits|Add2~9\,
	combout => \iMultiplicador5Bits|Add2~10_combout\,
	cout => \iMultiplicador5Bits|Add2~11\);

-- Location: LCCOMB_X15_Y19_N10
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

-- Location: LCCOMB_X15_Y15_N10
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

-- Location: LCCOMB_X15_Y16_N26
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

-- Location: LCCOMB_X15_Y15_N22
\iMultiplicador5Bits|pp[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iMultiplicador5Bits|pp[4][8]~combout\ = (\b~combout\(4) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \iMultiplicador5Bits|pp[4][8]~combout\);

-- Location: LCCOMB_X15_Y19_N12
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

-- Location: LCCOMB_X15_Y19_N14
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

-- Location: LCCOMB_X15_Y19_N2
\iDisplays|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan7~0_combout\ = (!\iMultiplicador5Bits|s[4]~0_combout\ & !\iMultiplicador5Bits|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|Add2~2_combout\,
	combout => \iDisplays|LessThan7~0_combout\);

-- Location: LCCOMB_X15_Y19_N28
\iDisplays|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan7~1_combout\ = (((!\iMultiplicador5Bits|s[5]~2_combout\ & \iDisplays|LessThan7~0_combout\)) # (!\iMultiplicador5Bits|s[7]~6_combout\)) # (!\iMultiplicador5Bits|s[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datab => \iDisplays|LessThan7~0_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iMultiplicador5Bits|s[7]~6_combout\,
	combout => \iDisplays|LessThan7~1_combout\);

-- Location: LCCOMB_X15_Y19_N30
\iDisplays|d1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[1]~1_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\ & (((\iMultiplicador5Bits|s[8]~8_combout\)))) # (!\iMultiplicador5Bits|s[9]~10_combout\ & ((\iMultiplicador5Bits|s[8]~8_combout\ & (!\iDisplays|d1[2]~0_combout\)) # 
-- (!\iMultiplicador5Bits|s[8]~8_combout\ & ((!\iDisplays|LessThan7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[2]~0_combout\,
	datab => \iDisplays|LessThan7~1_combout\,
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|d1[1]~1_combout\);

-- Location: LCCOMB_X15_Y19_N26
\iDisplays|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan3~1_combout\ = (\iMultiplicador5Bits|s[7]~6_combout\) # ((\iMultiplicador5Bits|s[6]~4_combout\ & ((\iMultiplicador5Bits|s[5]~2_combout\) # (!\iDisplays|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan3~0_combout\,
	datab => \iMultiplicador5Bits|s[5]~2_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iMultiplicador5Bits|s[7]~6_combout\,
	combout => \iDisplays|LessThan3~1_combout\);

-- Location: LCCOMB_X15_Y19_N18
\iDisplays|d1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[1]~3_combout\ = (\iDisplays|d1[1]~1_combout\ & (((!\iMultiplicador5Bits|s[9]~10_combout\)) # (!\iDisplays|d1[3]~2_combout\))) # (!\iDisplays|d1[1]~1_combout\ & (((\iMultiplicador5Bits|s[9]~10_combout\ & \iDisplays|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[3]~2_combout\,
	datab => \iDisplays|d1[1]~1_combout\,
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iDisplays|LessThan3~1_combout\,
	combout => \iDisplays|d1[1]~3_combout\);

-- Location: LCCOMB_X15_Y19_N24
\iDisplays|d1[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[3]~2_combout\ = (\iMultiplicador5Bits|s[5]~2_combout\) # ((\iMultiplicador5Bits|s[6]~4_combout\) # (\iMultiplicador5Bits|s[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iMultiplicador5Bits|s[7]~6_combout\,
	combout => \iDisplays|d1[3]~2_combout\);

-- Location: LCCOMB_X15_Y19_N0
\iDisplays|d1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[2]~0_combout\ = (\iMultiplicador5Bits|s[7]~6_combout\ & ((\iMultiplicador5Bits|s[5]~2_combout\) # ((\iMultiplicador5Bits|s[6]~4_combout\) # (\iMultiplicador5Bits|s[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[4]~0_combout\,
	datad => \iMultiplicador5Bits|s[7]~6_combout\,
	combout => \iDisplays|d1[2]~0_combout\);

-- Location: LCCOMB_X13_Y19_N16
\iDisplays|d1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[2]~4_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\ & (((!\iMultiplicador5Bits|s[8]~8_combout\)) # (!\iDisplays|d1[3]~2_combout\))) # (!\iMultiplicador5Bits|s[9]~10_combout\ & (((\iDisplays|d1[2]~0_combout\ & 
-- \iMultiplicador5Bits|s[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[9]~10_combout\,
	datab => \iDisplays|d1[3]~2_combout\,
	datac => \iDisplays|d1[2]~0_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|d1[2]~4_combout\);

-- Location: LCCOMB_X15_Y19_N20
\iDisplays|d1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[3]~5_combout\ = (\iDisplays|d1[3]~2_combout\ & (\iMultiplicador5Bits|s[9]~10_combout\ & \iMultiplicador5Bits|s[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[3]~2_combout\,
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|d1[3]~5_combout\);

-- Location: LCCOMB_X1_Y19_N0
\iDisplays|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux6~0_combout\ = \iDisplays|d1[3]~5_combout\ $ (((\iDisplays|d1[1]~3_combout\) # (\iDisplays|d1[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	combout => \iDisplays|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y19_N10
\iDisplays|d1[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~10_combout\ = (\iMultiplicador5Bits|s[6]~4_combout\ & (((\iMultiplicador5Bits|s[7]~6_combout\)))) # (!\iMultiplicador5Bits|s[6]~4_combout\ & ((\iMultiplicador5Bits|s[7]~6_combout\ & ((\iMultiplicador5Bits|s[5]~2_combout\) # 
-- (!\iDisplays|LessThan0~0_combout\))) # (!\iMultiplicador5Bits|s[7]~6_combout\ & ((!\iMultiplicador5Bits|s[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan0~0_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[5]~2_combout\,
	combout => \iDisplays|d1[0]~10_combout\);

-- Location: LCCOMB_X13_Y19_N22
\iDisplays|d1[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~11_combout\ = (\iMultiplicador5Bits|s[8]~8_combout\ & ((\iDisplays|d1[0]~10_combout\))) # (!\iMultiplicador5Bits|s[8]~8_combout\ & (\iDisplays|d1[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[0]~9_combout\,
	datac => \iDisplays|d1[0]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|d1[0]~11_combout\);

-- Location: LCCOMB_X14_Y19_N0
\iDisplays|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan7~2_combout\ = (!\iMultiplicador5Bits|s[5]~2_combout\ & (!\iMultiplicador5Bits|Add2~2_combout\ & !\iMultiplicador5Bits|s[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datac => \iMultiplicador5Bits|Add2~2_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|LessThan7~2_combout\);

-- Location: LCCOMB_X14_Y19_N18
\iDisplays|d1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~6_combout\ = (!\iMultiplicador5Bits|s[8]~8_combout\ & (((\iDisplays|LessThan7~2_combout\) # (!\iMultiplicador5Bits|s[7]~6_combout\)) # (!\iMultiplicador5Bits|s[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[8]~8_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iDisplays|LessThan7~2_combout\,
	combout => \iDisplays|d1[0]~6_combout\);

-- Location: LCCOMB_X14_Y19_N28
\iDisplays|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan6~0_combout\ = (\iMultiplicador5Bits|s[5]~2_combout\ & ((\iMultiplicador5Bits|s[4]~0_combout\) # ((\iMultiplicador5Bits|Add2~0_combout\ & \iMultiplicador5Bits|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[5]~2_combout\,
	datab => \iMultiplicador5Bits|Add2~0_combout\,
	datac => \iMultiplicador5Bits|Add2~2_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y19_N30
\iDisplays|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan6~1_combout\ = (\iMultiplicador5Bits|s[8]~8_combout\ & ((\iMultiplicador5Bits|s[6]~4_combout\) # ((\iMultiplicador5Bits|s[7]~6_combout\) # (\iDisplays|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[8]~8_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iDisplays|LessThan6~0_combout\,
	combout => \iDisplays|LessThan6~1_combout\);

-- Location: LCCOMB_X13_Y19_N18
\iDisplays|d1[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~7_combout\ = (\iDisplays|LessThan6~1_combout\) # ((!\iDisplays|resta[6]~0_combout\ & \iDisplays|d1[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|d1[0]~6_combout\,
	datad => \iDisplays|LessThan6~1_combout\,
	combout => \iDisplays|d1[0]~7_combout\);

-- Location: LCCOMB_X13_Y19_N20
\iDisplays|d1[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~8_combout\ = (\iMultiplicador5Bits|s[8]~8_combout\ & ((\iDisplays|LessThan4~1_combout\) # ((\iDisplays|d1[0]~7_combout\ & !\iDisplays|d1[2]~0_combout\)))) # (!\iMultiplicador5Bits|s[8]~8_combout\ & (((\iDisplays|d1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan4~1_combout\,
	datab => \iDisplays|d1[0]~7_combout\,
	datac => \iDisplays|d1[2]~0_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|d1[0]~8_combout\);

-- Location: LCCOMB_X13_Y19_N24
\iDisplays|d1[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d1[0]~12_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\ & (\iDisplays|d1[0]~11_combout\)) # (!\iMultiplicador5Bits|s[9]~10_combout\ & ((\iDisplays|d1[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|d1[0]~11_combout\,
	datac => \iDisplays|d1[0]~8_combout\,
	datad => \iMultiplicador5Bits|s[9]~10_combout\,
	combout => \iDisplays|d1[0]~12_combout\);

-- Location: LCCOMB_X1_Y19_N2
\iDisplays|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux5~0_combout\ = (\iDisplays|d1[2]~4_combout\ & (((\iDisplays|d1[3]~5_combout\)))) # (!\iDisplays|d1[2]~4_combout\ & ((\iDisplays|d1[1]~3_combout\) # ((!\iDisplays|d1[3]~5_combout\ & \iDisplays|d1[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\iDisplays|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux4~0_combout\ = (\iDisplays|d1[1]~3_combout\ & ((\iDisplays|d1[3]~5_combout\) # ((!\iDisplays|d1[2]~4_combout\ & \iDisplays|d1[0]~12_combout\)))) # (!\iDisplays|d1[1]~3_combout\ & ((\iDisplays|d1[2]~4_combout\) # 
-- ((\iDisplays|d1[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\iDisplays|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux3~0_combout\ = (\iDisplays|d1[1]~3_combout\ & (((\iDisplays|d1[3]~5_combout\)))) # (!\iDisplays|d1[1]~3_combout\ & (\iDisplays|d1[2]~4_combout\ $ (((!\iDisplays|d1[3]~5_combout\ & \iDisplays|d1[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\iDisplays|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux2~0_combout\ = (\iDisplays|d1[1]~3_combout\ & ((\iDisplays|d1[3]~5_combout\) # (\iDisplays|d1[2]~4_combout\ $ (!\iDisplays|d1[0]~12_combout\)))) # (!\iDisplays|d1[1]~3_combout\ & (\iDisplays|d1[2]~4_combout\ & (\iDisplays|d1[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\iDisplays|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux1~0_combout\ = (\iDisplays|d1[1]~3_combout\ & ((\iDisplays|d1[2]~4_combout\) # ((\iDisplays|d1[3]~5_combout\)))) # (!\iDisplays|d1[1]~3_combout\ & (\iDisplays|d1[2]~4_combout\ & ((\iDisplays|d1[3]~5_combout\) # 
-- (\iDisplays|d1[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\iDisplays|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux0~0_combout\ = (\iDisplays|d1[1]~3_combout\ & ((\iDisplays|d1[3]~5_combout\) # ((\iDisplays|d1[2]~4_combout\ & \iDisplays|d1[0]~12_combout\)))) # (!\iDisplays|d1[1]~3_combout\ & (\iDisplays|d1[2]~4_combout\ $ (((!\iDisplays|d1[3]~5_combout\ 
-- & \iDisplays|d1[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datab => \iDisplays|d1[2]~4_combout\,
	datac => \iDisplays|d1[3]~5_combout\,
	datad => \iDisplays|d1[0]~12_combout\,
	combout => \iDisplays|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y20_N18
\iDisplays|resta[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|resta[6]~1_combout\ = (\iMultiplicador5Bits|s[9]~10_combout\) # (\iMultiplicador5Bits|s[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|resta[6]~1_combout\);

-- Location: LCCOMB_X13_Y19_N0
\iDisplays|comb~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~23_combout\ = (\iDisplays|d1[2]~4_combout\ & (((\iMultiplicador5Bits|s[9]~10_combout\) # (\iMultiplicador5Bits|s[8]~8_combout\)) # (!\iDisplays|resta[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iMultiplicador5Bits|s[9]~10_combout\,
	datac => \iDisplays|d1[2]~4_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|comb~23_combout\);

-- Location: LCCOMB_X13_Y19_N12
\iDisplays|restador1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1\(4) = (!\iDisplays|comb~22_combout\ & ((\iDisplays|comb~23_combout\) # (\iDisplays|restador1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|comb~22_combout\,
	datab => \iDisplays|comb~23_combout\,
	datad => \iDisplays|restador1\(4),
	combout => \iDisplays|restador1\(4));

-- Location: LCCOMB_X14_Y20_N30
\iDisplays|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan8~0_combout\ = (\iMultiplicador5Bits|s[5]~2_combout\ & \iMultiplicador5Bits|s[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iMultiplicador5Bits|s[5]~2_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	combout => \iDisplays|LessThan8~0_combout\);

-- Location: LCCOMB_X14_Y20_N16
\iDisplays|resta[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|resta[6]~2_combout\ = (\iMultiplicador5Bits|s[7]~6_combout\) # ((\iDisplays|resta[6]~1_combout\) # ((!\iDisplays|LessThan0~0_combout\ & \iDisplays|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan0~0_combout\,
	datab => \iDisplays|LessThan8~0_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iDisplays|resta[6]~1_combout\,
	combout => \iDisplays|resta[6]~2_combout\);

-- Location: LCCOMB_X1_Y19_N24
\iDisplays|comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~17_combout\ = (\iDisplays|d1[1]~3_combout\ & \iDisplays|resta[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d1[1]~3_combout\,
	datac => \iDisplays|resta[6]~2_combout\,
	combout => \iDisplays|comb~17_combout\);

-- Location: LCCOMB_X1_Y19_N26
\iDisplays|restador1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1\(3) = (!\iDisplays|comb~16_combout\ & ((\iDisplays|comb~17_combout\) # (\iDisplays|restador1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|comb~16_combout\,
	datac => \iDisplays|comb~17_combout\,
	datad => \iDisplays|restador1\(3),
	combout => \iDisplays|restador1\(3));

-- Location: LCCOMB_X14_Y20_N0
\iDisplays|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~0_combout\ = (\iDisplays|restador1\(2) & (\iMultiplicador5Bits|Add2~0_combout\ $ (VCC))) # (!\iDisplays|restador1\(2) & ((\iMultiplicador5Bits|Add2~0_combout\) # (GND)))
-- \iDisplays|Add0~1\ = CARRY((\iMultiplicador5Bits|Add2~0_combout\) # (!\iDisplays|restador1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1\(2),
	datab => \iMultiplicador5Bits|Add2~0_combout\,
	datad => VCC,
	combout => \iDisplays|Add0~0_combout\,
	cout => \iDisplays|Add0~1\);

-- Location: LCCOMB_X14_Y20_N2
\iDisplays|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~2_combout\ = (\iMultiplicador5Bits|Add2~2_combout\ & ((\iDisplays|restador1\(3) & (!\iDisplays|Add0~1\)) # (!\iDisplays|restador1\(3) & (\iDisplays|Add0~1\ & VCC)))) # (!\iMultiplicador5Bits|Add2~2_combout\ & ((\iDisplays|restador1\(3) & 
-- ((\iDisplays|Add0~1\) # (GND))) # (!\iDisplays|restador1\(3) & (!\iDisplays|Add0~1\))))
-- \iDisplays|Add0~3\ = CARRY((\iMultiplicador5Bits|Add2~2_combout\ & (\iDisplays|restador1\(3) & !\iDisplays|Add0~1\)) # (!\iMultiplicador5Bits|Add2~2_combout\ & ((\iDisplays|restador1\(3)) # (!\iDisplays|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|Add2~2_combout\,
	datab => \iDisplays|restador1\(3),
	datad => VCC,
	cin => \iDisplays|Add0~1\,
	combout => \iDisplays|Add0~2_combout\,
	cout => \iDisplays|Add0~3\);

-- Location: LCCOMB_X14_Y20_N4
\iDisplays|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~4_combout\ = ((\iMultiplicador5Bits|s[4]~0_combout\ $ (\iDisplays|restador1\(4) $ (\iDisplays|Add0~3\)))) # (GND)
-- \iDisplays|Add0~5\ = CARRY((\iMultiplicador5Bits|s[4]~0_combout\ & ((!\iDisplays|Add0~3\) # (!\iDisplays|restador1\(4)))) # (!\iMultiplicador5Bits|s[4]~0_combout\ & (!\iDisplays|restador1\(4) & !\iDisplays|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[4]~0_combout\,
	datab => \iDisplays|restador1\(4),
	datad => VCC,
	cin => \iDisplays|Add0~3\,
	combout => \iDisplays|Add0~4_combout\,
	cout => \iDisplays|Add0~5\);

-- Location: LCCOMB_X14_Y20_N6
\iDisplays|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~6_combout\ = (\iDisplays|restador1\(5) & ((\iMultiplicador5Bits|s[5]~2_combout\ & (!\iDisplays|Add0~5\)) # (!\iMultiplicador5Bits|s[5]~2_combout\ & ((\iDisplays|Add0~5\) # (GND))))) # (!\iDisplays|restador1\(5) & 
-- ((\iMultiplicador5Bits|s[5]~2_combout\ & (\iDisplays|Add0~5\ & VCC)) # (!\iMultiplicador5Bits|s[5]~2_combout\ & (!\iDisplays|Add0~5\))))
-- \iDisplays|Add0~7\ = CARRY((\iDisplays|restador1\(5) & ((!\iDisplays|Add0~5\) # (!\iMultiplicador5Bits|s[5]~2_combout\))) # (!\iDisplays|restador1\(5) & (!\iMultiplicador5Bits|s[5]~2_combout\ & !\iDisplays|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador1\(5),
	datab => \iMultiplicador5Bits|s[5]~2_combout\,
	datad => VCC,
	cin => \iDisplays|Add0~5\,
	combout => \iDisplays|Add0~6_combout\,
	cout => \iDisplays|Add0~7\);

-- Location: LCCOMB_X14_Y20_N24
\iDisplays|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~12_combout\ = (\iDisplays|resta[6]~0_combout\ & ((\iDisplays|resta[6]~1_combout\ & ((\iDisplays|Add0~6_combout\))) # (!\iDisplays|resta[6]~1_combout\ & (\iMultiplicador5Bits|s[5]~2_combout\)))) # (!\iDisplays|resta[6]~0_combout\ & 
-- (((\iDisplays|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|resta[6]~1_combout\,
	datac => \iMultiplicador5Bits|s[5]~2_combout\,
	datad => \iDisplays|Add0~6_combout\,
	combout => \iDisplays|Add0~12_combout\);

-- Location: LCCOMB_X14_Y19_N4
\iDisplays|restador1[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[6]~0_combout\ = (\iMultiplicador5Bits|s[8]~8_combout\) # ((\iMultiplicador5Bits|s[7]~6_combout\ & ((\iDisplays|LessThan2~0_combout\) # (\iMultiplicador5Bits|s[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan2~0_combout\,
	datab => \iMultiplicador5Bits|s[6]~4_combout\,
	datac => \iMultiplicador5Bits|s[7]~6_combout\,
	datad => \iMultiplicador5Bits|s[8]~8_combout\,
	combout => \iDisplays|restador1[6]~0_combout\);

-- Location: LCCOMB_X14_Y19_N22
\iDisplays|restador1[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1[6]~1_combout\ = (\iDisplays|LessThan4~1_combout\ & (\iDisplays|restador1[6]~0_combout\ & (\iMultiplicador5Bits|s[9]~10_combout\))) # (!\iDisplays|LessThan4~1_combout\ & ((\iDisplays|LessThan6~1_combout\) # 
-- ((\iDisplays|restador1[6]~0_combout\ & \iMultiplicador5Bits|s[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan4~1_combout\,
	datab => \iDisplays|restador1[6]~0_combout\,
	datac => \iMultiplicador5Bits|s[9]~10_combout\,
	datad => \iDisplays|LessThan6~1_combout\,
	combout => \iDisplays|restador1[6]~1_combout\);

-- Location: LCCOMB_X15_Y16_N12
\iDisplays|comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~13_combout\ = (!\iDisplays|restador1[6]~1_combout\ & \iDisplays|resta[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iDisplays|restador1[6]~1_combout\,
	datad => \iDisplays|resta[6]~2_combout\,
	combout => \iDisplays|comb~13_combout\);

-- Location: LCCOMB_X15_Y16_N4
\iDisplays|restador1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador1\(6) = (!\iDisplays|comb~12_combout\ & ((\iDisplays|restador1\(6)) # (\iDisplays|comb~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|comb~12_combout\,
	datac => \iDisplays|restador1\(6),
	datad => \iDisplays|comb~13_combout\,
	combout => \iDisplays|restador1\(6));

-- Location: LCCOMB_X14_Y20_N8
\iDisplays|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~8_combout\ = \iMultiplicador5Bits|s[6]~4_combout\ $ (\iDisplays|Add0~7\ $ (\iDisplays|restador1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iDisplays|restador1\(6),
	cin => \iDisplays|Add0~7\,
	combout => \iDisplays|Add0~8_combout\);

-- Location: LCCOMB_X14_Y20_N20
\iDisplays|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~10_combout\ = (\iDisplays|resta[6]~0_combout\ & ((\iDisplays|resta[6]~1_combout\ & (\iDisplays|Add0~8_combout\)) # (!\iDisplays|resta[6]~1_combout\ & ((\iMultiplicador5Bits|s[6]~4_combout\))))) # (!\iDisplays|resta[6]~0_combout\ & 
-- (\iDisplays|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|Add0~8_combout\,
	datac => \iMultiplicador5Bits|s[6]~4_combout\,
	datad => \iDisplays|resta[6]~1_combout\,
	combout => \iDisplays|Add0~10_combout\);

-- Location: LCCOMB_X14_Y20_N22
\iDisplays|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~11_combout\ = (\iDisplays|resta[6]~0_combout\ & ((\iDisplays|resta[6]~1_combout\ & (\iDisplays|Add0~4_combout\)) # (!\iDisplays|resta[6]~1_combout\ & ((\iMultiplicador5Bits|s[4]~0_combout\))))) # (!\iDisplays|resta[6]~0_combout\ & 
-- (((\iDisplays|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|resta[6]~1_combout\,
	datac => \iDisplays|Add0~4_combout\,
	datad => \iMultiplicador5Bits|s[4]~0_combout\,
	combout => \iDisplays|Add0~11_combout\);

-- Location: LCCOMB_X7_Y20_N10
\iDisplays|restador2[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~4_combout\ = (!\iDisplays|Add0~11_combout\ & ((\iDisplays|Add0~12_combout\ & (!\iDisplays|Add0~13_combout\ & !\iDisplays|Add0~10_combout\)) # (!\iDisplays|Add0~12_combout\ & ((\iDisplays|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|restador2[2]~4_combout\);

-- Location: LCCOMB_X7_Y20_N30
\iDisplays|restador2[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~6_combout\ = (\iDisplays|restador2[2]~5_combout\ & (\iDisplays|Add0~11_combout\ & !\iDisplays|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[2]~5_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|restador2[2]~6_combout\);

-- Location: LCCOMB_X7_Y20_N0
\iDisplays|d2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[2]~1_combout\ = (!\iDisplays|Add0~10_combout\ & (((!\iDisplays|Add0~13_combout\ & !\iDisplays|Add0~11_combout\)) # (!\iDisplays|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|d2[2]~1_combout\);

-- Location: LCCOMB_X7_Y20_N16
\iDisplays|d2[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[3]~0_combout\ = (\iDisplays|Add0~10_combout\ & ((\iDisplays|Add0~12_combout\) # (\iDisplays|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|Add0~12_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|d2[3]~0_combout\);

-- Location: LCCOMB_X7_Y20_N2
\iDisplays|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux13~0_combout\ = (\iDisplays|restador2[2]~4_combout\ & (((\iDisplays|d2[3]~0_combout\)))) # (!\iDisplays|restador2[2]~4_combout\ & ((\iDisplays|restador2[2]~6_combout\ & ((\iDisplays|d2[3]~0_combout\))) # (!\iDisplays|restador2[2]~6_combout\ 
-- & (\iDisplays|d2[2]~1_combout\ & !\iDisplays|d2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[2]~4_combout\,
	datab => \iDisplays|restador2[2]~6_combout\,
	datac => \iDisplays|d2[2]~1_combout\,
	datad => \iDisplays|d2[3]~0_combout\,
	combout => \iDisplays|Mux13~0_combout\);

-- Location: LCCOMB_X14_Y20_N28
\iDisplays|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~14_combout\ = (\iDisplays|resta[6]~0_combout\ & ((\iDisplays|resta[6]~1_combout\ & ((\iDisplays|Add0~0_combout\))) # (!\iDisplays|resta[6]~1_combout\ & (\iMultiplicador5Bits|Add2~0_combout\)))) # (!\iDisplays|resta[6]~0_combout\ & 
-- (((\iDisplays|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|resta[6]~1_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iDisplays|Add0~0_combout\,
	combout => \iDisplays|Add0~14_combout\);

-- Location: LCCOMB_X7_Y20_N12
\iDisplays|restador2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~5_combout\ = (\iDisplays|Add0~13_combout\ & ((\iDisplays|Add0~14_combout\) # (!\iDisplays|Add0~12_combout\))) # (!\iDisplays|Add0~13_combout\ & (\iDisplays|Add0~14_combout\ & !\iDisplays|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|Add0~14_combout\,
	datad => \iDisplays|Add0~12_combout\,
	combout => \iDisplays|restador2[2]~5_combout\);

-- Location: LCCOMB_X7_Y20_N28
\iDisplays|restador2[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~20_combout\ = (\iDisplays|restador2[2]~4_combout\) # ((\iDisplays|Add0~11_combout\ & (!\iDisplays|Add0~10_combout\ & \iDisplays|restador2[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[2]~4_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|restador2[2]~5_combout\,
	combout => \iDisplays|restador2[2]~20_combout\);

-- Location: LCCOMB_X14_Y20_N26
\iDisplays|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|LessThan12~0_combout\ = (\iMultiplicador5Bits|Add0~0_combout\ & ((\iDisplays|resta[6]~2_combout\ & (\iDisplays|Add0~0_combout\)) # (!\iDisplays|resta[6]~2_combout\ & ((\iMultiplicador5Bits|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~2_combout\,
	datab => \iDisplays|Add0~0_combout\,
	datac => \iMultiplicador5Bits|Add2~0_combout\,
	datad => \iMultiplicador5Bits|Add0~0_combout\,
	combout => \iDisplays|LessThan12~0_combout\);

-- Location: LCCOMB_X9_Y20_N24
\iDisplays|d2[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~5_combout\ = (!\iDisplays|Add0~11_combout\ & (\iDisplays|Add0~10_combout\ & ((\iDisplays|Add0~13_combout\) # (\iDisplays|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iDisplays|LessThan12~0_combout\,
	datad => \iDisplays|Add0~10_combout\,
	combout => \iDisplays|d2[0]~5_combout\);

-- Location: LCCOMB_X8_Y20_N22
\iDisplays|restador2[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[2]~8_combout\ = (!\iDisplays|Add0~10_combout\ & !\iDisplays|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~10_combout\,
	datac => \iDisplays|Add0~12_combout\,
	combout => \iDisplays|restador2[2]~8_combout\);

-- Location: LCCOMB_X14_Y20_N10
\iDisplays|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~13_combout\ = (\iDisplays|resta[6]~0_combout\ & ((\iDisplays|resta[6]~1_combout\ & ((\iDisplays|Add0~2_combout\))) # (!\iDisplays|resta[6]~1_combout\ & (\iMultiplicador5Bits|Add2~2_combout\)))) # (!\iDisplays|resta[6]~0_combout\ & 
-- (((\iDisplays|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|resta[6]~0_combout\,
	datab => \iDisplays|resta[6]~1_combout\,
	datac => \iMultiplicador5Bits|Add2~2_combout\,
	datad => \iDisplays|Add0~2_combout\,
	combout => \iDisplays|Add0~13_combout\);

-- Location: LCCOMB_X8_Y20_N30
\iDisplays|restador2[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2[1]~7_combout\ = (\iDisplays|Add0~10_combout\ & (\iDisplays|Add0~13_combout\ & ((\iDisplays|Add0~14_combout\) # (\iMultiplicador5Bits|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iMultiplicador5Bits|Add0~0_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|restador2[1]~7_combout\);

-- Location: LCCOMB_X8_Y20_N24
\iDisplays|d2[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~6_combout\ = (\iDisplays|restador2[1]~7_combout\) # ((\iDisplays|LessThan12~0_combout\ & (\iDisplays|restador2[2]~8_combout\ & \iDisplays|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|LessThan12~0_combout\,
	datab => \iDisplays|restador2[2]~8_combout\,
	datac => \iDisplays|restador2[1]~7_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|d2[0]~6_combout\);

-- Location: LCCOMB_X8_Y20_N18
\iDisplays|d2[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d2[0]~7_combout\ = (\iDisplays|d2[0]~4_combout\) # ((\iDisplays|d2[0]~5_combout\) # ((\iDisplays|d2[0]~6_combout\ & \iDisplays|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[0]~4_combout\,
	datab => \iDisplays|d2[0]~5_combout\,
	datac => \iDisplays|d2[0]~6_combout\,
	datad => \iDisplays|Add0~11_combout\,
	combout => \iDisplays|d2[0]~7_combout\);

-- Location: LCCOMB_X1_Y20_N24
\iDisplays|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux12~0_combout\ = (\iDisplays|d2[3]~0_combout\ & (((\iDisplays|restador2[2]~20_combout\)))) # (!\iDisplays|d2[3]~0_combout\ & (\iDisplays|d2[2]~1_combout\ & ((\iDisplays|restador2[2]~20_combout\) # (\iDisplays|d2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\iDisplays|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux11~0_combout\ = (\iDisplays|d2[3]~0_combout\ & (((!\iDisplays|restador2[2]~20_combout\ & !\iDisplays|d2[0]~7_combout\)))) # (!\iDisplays|d2[3]~0_combout\ & ((\iDisplays|d2[2]~1_combout\ & ((!\iDisplays|d2[0]~7_combout\))) # 
-- (!\iDisplays|d2[2]~1_combout\ & (\iDisplays|restador2[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y20_N4
\iDisplays|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux10~0_combout\ = (\iDisplays|d2[3]~0_combout\ & (((!\iDisplays|restador2[2]~20_combout\)))) # (!\iDisplays|d2[3]~0_combout\ & ((\iDisplays|restador2[2]~20_combout\) # (\iDisplays|d2[2]~1_combout\ $ (\iDisplays|d2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux10~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\iDisplays|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux9~0_combout\ = (\iDisplays|restador2[2]~20_combout\ & ((\iDisplays|d2[3]~0_combout\) # (\iDisplays|d2[2]~1_combout\ $ (\iDisplays|d2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux9~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\iDisplays|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux8~0_combout\ = (\iDisplays|d2[3]~0_combout\ & (((\iDisplays|restador2[2]~20_combout\)))) # (!\iDisplays|d2[3]~0_combout\ & (!\iDisplays|d2[2]~1_combout\ & ((\iDisplays|restador2[2]~20_combout\) # (\iDisplays|d2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y20_N26
\iDisplays|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux7~0_combout\ = (\iDisplays|d2[3]~0_combout\ & (((!\iDisplays|restador2[2]~20_combout\)))) # (!\iDisplays|d2[3]~0_combout\ & ((\iDisplays|d2[2]~1_combout\ & ((\iDisplays|restador2[2]~20_combout\) # (!\iDisplays|d2[0]~7_combout\))) # 
-- (!\iDisplays|d2[2]~1_combout\ & (\iDisplays|restador2[2]~20_combout\ $ (\iDisplays|d2[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|d2[3]~0_combout\,
	datab => \iDisplays|d2[2]~1_combout\,
	datac => \iDisplays|restador2[2]~20_combout\,
	datad => \iDisplays|d2[0]~7_combout\,
	combout => \iDisplays|Mux7~0_combout\);

-- Location: LCCOMB_X8_Y20_N28
\iDisplays|d3[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d3[3]~2_combout\ = (!\iDisplays|Add0~11_combout\ & (((!\iDisplays|Add0~14_combout\ & !\iMultiplicador5Bits|Add0~0_combout\)) # (!\iDisplays|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~14_combout\,
	datab => \iDisplays|Add0~11_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|Add0~13_combout\,
	combout => \iDisplays|d3[3]~2_combout\);

-- Location: LCCOMB_X7_Y20_N22
\iDisplays|d3[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|d3[3]~3_combout\ = ((\iDisplays|Add0~10_combout\) # (\iDisplays|Add0~12_combout\)) # (!\iDisplays|d3[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|d3[3]~2_combout\,
	datac => \iDisplays|Add0~10_combout\,
	datad => \iDisplays|Add0~12_combout\,
	combout => \iDisplays|d3[3]~3_combout\);

-- Location: LCCOMB_X7_Y20_N8
\iDisplays|comb~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~20_combout\ = (!\iDisplays|restador2[2]~4_combout\ & (\iDisplays|d3[3]~3_combout\ & !\iDisplays|restador2[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[2]~4_combout\,
	datab => \iDisplays|d3[3]~3_combout\,
	datad => \iDisplays|restador2[2]~6_combout\,
	combout => \iDisplays|comb~20_combout\);

-- Location: LCCOMB_X7_Y20_N18
\iDisplays|comb~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|comb~21_combout\ = (\iDisplays|d3[3]~3_combout\ & ((\iDisplays|restador2[2]~4_combout\) # (\iDisplays|restador2[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2[2]~4_combout\,
	datab => \iDisplays|d3[3]~3_combout\,
	datad => \iDisplays|restador2[2]~6_combout\,
	combout => \iDisplays|comb~21_combout\);

-- Location: LCCOMB_X7_Y20_N24
\iDisplays|restador2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|restador2\(2) = (!\iDisplays|comb~20_combout\ & ((\iDisplays|restador2\(2)) # (\iDisplays|comb~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|comb~20_combout\,
	datac => \iDisplays|restador2\(2),
	datad => \iDisplays|comb~21_combout\,
	combout => \iDisplays|restador2\(2));

-- Location: LCCOMB_X8_Y20_N12
\iDisplays|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~6_combout\ = \iDisplays|restador2\(3) $ (\iDisplays|Add1~4\ $ (\iDisplays|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|restador2\(3),
	datad => \iDisplays|Add0~13_combout\,
	cin => \iDisplays|Add1~4\,
	combout => \iDisplays|Add1~6_combout\);

-- Location: LCCOMB_X8_Y20_N2
\iDisplays|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~8_combout\ = (\iDisplays|d3[3]~2_combout\ & ((\iDisplays|restador2[2]~8_combout\ & (\iDisplays|Add0~13_combout\)) # (!\iDisplays|restador2[2]~8_combout\ & ((\iDisplays|Add1~6_combout\))))) # (!\iDisplays|d3[3]~2_combout\ & 
-- (((\iDisplays|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add0~13_combout\,
	datab => \iDisplays|d3[3]~2_combout\,
	datac => \iDisplays|Add1~6_combout\,
	datad => \iDisplays|restador2[2]~8_combout\,
	combout => \iDisplays|Add1~8_combout\);

-- Location: LCCOMB_X8_Y20_N0
\iDisplays|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~5_combout\ = (\iDisplays|restador2[2]~8_combout\ & ((\iDisplays|d3[3]~2_combout\ & ((\iDisplays|Add0~14_combout\))) # (!\iDisplays|d3[3]~2_combout\ & (\iDisplays|Add1~3_combout\)))) # (!\iDisplays|restador2[2]~8_combout\ & 
-- (\iDisplays|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~3_combout\,
	datab => \iDisplays|restador2[2]~8_combout\,
	datac => \iDisplays|Add0~14_combout\,
	datad => \iDisplays|d3[3]~2_combout\,
	combout => \iDisplays|Add1~5_combout\);

-- Location: LCCOMB_X8_Y20_N6
\iDisplays|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add1~2_combout\ = (\iDisplays|restador2[2]~8_combout\ & ((\iDisplays|d3[3]~2_combout\ & ((\iMultiplicador5Bits|Add0~0_combout\))) # (!\iDisplays|d3[3]~2_combout\ & (\iDisplays|Add1~0_combout\)))) # (!\iDisplays|restador2[2]~8_combout\ & 
-- (\iDisplays|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~0_combout\,
	datab => \iDisplays|restador2[2]~8_combout\,
	datac => \iMultiplicador5Bits|Add0~0_combout\,
	datad => \iDisplays|d3[3]~2_combout\,
	combout => \iDisplays|Add1~2_combout\);

-- Location: LCCOMB_X1_Y23_N0
\iDisplays|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux20~0_combout\ = \iDisplays|Add1~8_combout\ $ (((\iDisplays|Add1~5_combout\) # (\iDisplays|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add1~2_combout\,
	combout => \iDisplays|Mux20~0_combout\);

-- Location: LCCOMB_X15_Y16_N8
\iDisplays|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~15_combout\ = (\b~combout\(0) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \iDisplays|Add0~15_combout\);

-- Location: LCCOMB_X15_Y16_N0
\iDisplays|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Add0~17_combout\ = (\iDisplays|resta[6]~2_combout\ & (((\iDisplays|Add0~15_combout\)))) # (!\iDisplays|resta[6]~2_combout\ & (\b~combout\(0) & (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \iDisplays|resta[6]~2_combout\,
	datac => \a~combout\(0),
	datad => \iDisplays|Add0~15_combout\,
	combout => \iDisplays|Add0~17_combout\);

-- Location: LCCOMB_X1_Y23_N2
\iDisplays|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux19~0_combout\ = (\iDisplays|Add1~5_combout\ & (((\iDisplays|Add1~8_combout\)))) # (!\iDisplays|Add1~5_combout\ & ((\iDisplays|Add1~2_combout\) # ((!\iDisplays|Add1~8_combout\ & \iDisplays|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux19~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\iDisplays|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux18~0_combout\ = (\iDisplays|Add1~2_combout\ & ((\iDisplays|Add1~8_combout\) # ((!\iDisplays|Add1~5_combout\ & \iDisplays|Add0~17_combout\)))) # (!\iDisplays|Add1~2_combout\ & (((\iDisplays|Add1~5_combout\) # (\iDisplays|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux18~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\iDisplays|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux17~0_combout\ = (\iDisplays|Add1~2_combout\ & (\iDisplays|Add1~8_combout\)) # (!\iDisplays|Add1~2_combout\ & (\iDisplays|Add1~5_combout\ $ (((!\iDisplays|Add1~8_combout\ & \iDisplays|Add0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux17~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\iDisplays|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux16~0_combout\ = (\iDisplays|Add1~2_combout\ & ((\iDisplays|Add1~8_combout\) # (\iDisplays|Add1~5_combout\ $ (!\iDisplays|Add0~17_combout\)))) # (!\iDisplays|Add1~2_combout\ & (\iDisplays|Add1~8_combout\ & (\iDisplays|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux16~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\iDisplays|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux15~0_combout\ = (\iDisplays|Add1~2_combout\ & ((\iDisplays|Add1~8_combout\) # ((\iDisplays|Add1~5_combout\)))) # (!\iDisplays|Add1~2_combout\ & (\iDisplays|Add1~5_combout\ & ((\iDisplays|Add1~8_combout\) # (\iDisplays|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux15~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\iDisplays|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iDisplays|Mux14~0_combout\ = (\iDisplays|Add1~2_combout\ & ((\iDisplays|Add1~8_combout\) # ((\iDisplays|Add1~5_combout\ & \iDisplays|Add0~17_combout\)))) # (!\iDisplays|Add1~2_combout\ & (\iDisplays|Add1~5_combout\ $ (((!\iDisplays|Add1~8_combout\ & 
-- \iDisplays|Add0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iDisplays|Add1~2_combout\,
	datab => \iDisplays|Add1~8_combout\,
	datac => \iDisplays|Add1~5_combout\,
	datad => \iDisplays|Add0~17_combout\,
	combout => \iDisplays|Mux14~0_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iMultiplicador5Bits|pp[0][0]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iMultiplicador5Bits|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iMultiplicador5Bits|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iMultiplicador5Bits|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iMultiplicador5Bits|s[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|s[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|s[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|s[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[8]~I\ : cycloneii_io
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
	padio => ww_s(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[9]~I\ : cycloneii_io
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
	datain => \iMultiplicador5Bits|s[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(9));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|ALT_INV_Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(5));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(0));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(1));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(4));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(5));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \iDisplays|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(6));
END structure;


