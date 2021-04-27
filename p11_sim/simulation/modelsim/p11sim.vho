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

-- DATE "04/27/2021 19:43:13"

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

ENTITY 	Microondas IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	p1 : IN std_logic;
	p2 : IN std_logic;
	puerta : IN std_logic;
	enc_temp : IN std_logic;
	fin : OUT std_logic;
	horno_on : OUT std_logic;
	abierta : OUT std_logic;
	ent_p : IN std_logic_vector(6 DOWNTO 0);
	cnt_min : OUT std_logic_vector(6 DOWNTO 0);
	cnt_seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END Microondas;

-- Design Ports Information
-- fin	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- horno_on	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- abierta	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[0]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[2]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[3]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[6]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[1]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[2]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[3]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[4]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[5]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- enc_temp	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- puerta	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[3]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[4]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[5]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[6]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Microondas IS
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
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_puerta : std_logic;
SIGNAL ww_enc_temp : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_horno_on : std_logic;
SIGNAL ww_abierta : std_logic;
SIGNAL ww_ent_p : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|contadorM50|Add0~2_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~10_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~18_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~36_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~38_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~42_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~46_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~1_combout\ : std_logic;
SIGNAL \i1|Selector1~0_combout\ : std_logic;
SIGNAL \i1|Selector4~0_combout\ : std_logic;
SIGNAL \i2|contadorM50|contador~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \enc_temp~combout\ : std_logic;
SIGNAL \puerta~combout\ : std_logic;
SIGNAL \i1|Selector1~9_combout\ : std_logic;
SIGNAL \i1|Selector1~3_combout\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \p2~combout\ : std_logic;
SIGNAL \i1|Selector0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i1|Selector1~10_combout\ : std_logic;
SIGNAL \i1|Selector4~1_combout\ : std_logic;
SIGNAL \i1|Selector4~2_combout\ : std_logic;
SIGNAL \i1|estado_act.puerta_abierta~regout\ : std_logic;
SIGNAL \i1|Selector1~8_combout\ : std_logic;
SIGNAL \i1|estado_act.reposo~regout\ : std_logic;
SIGNAL \i1|Selector2~0_combout\ : std_logic;
SIGNAL \i1|estado_act.carga_minutos~regout\ : std_logic;
SIGNAL \i1|Selector1~4_combout\ : std_logic;
SIGNAL \i1|Selector1~5_combout\ : std_logic;
SIGNAL \i1|Selector1~7_combout\ : std_logic;
SIGNAL \i1|Selector3~0_combout\ : std_logic;
SIGNAL \i1|Selector3~1_combout\ : std_logic;
SIGNAL \i1|estado_act.encendido~regout\ : std_logic;
SIGNAL \i1|Selector1~6_combout\ : std_logic;
SIGNAL \i1|estado_act.carga_segundos~regout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador~2_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~1\ : std_logic;
SIGNAL \i2|contadorM50|Add0~3\ : std_logic;
SIGNAL \i2|contadorM50|Add0~4_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~5\ : std_logic;
SIGNAL \i2|contadorM50|Add0~7\ : std_logic;
SIGNAL \i2|contadorM50|Add0~8_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~9\ : std_logic;
SIGNAL \i2|contadorM50|Add0~11\ : std_logic;
SIGNAL \i2|contadorM50|Add0~12_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~13\ : std_logic;
SIGNAL \i2|contadorM50|Add0~15\ : std_logic;
SIGNAL \i2|contadorM50|Add0~16_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~17\ : std_logic;
SIGNAL \i2|contadorM50|Add0~19\ : std_logic;
SIGNAL \i2|contadorM50|Add0~20_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~21\ : std_logic;
SIGNAL \i2|contadorM50|Add0~22_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~23\ : std_logic;
SIGNAL \i2|contadorM50|Add0~24_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~25\ : std_logic;
SIGNAL \i2|contadorM50|Add0~26_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~27\ : std_logic;
SIGNAL \i2|contadorM50|Add0~28_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~29\ : std_logic;
SIGNAL \i2|contadorM50|Add0~30_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~31\ : std_logic;
SIGNAL \i2|contadorM50|Add0~33\ : std_logic;
SIGNAL \i2|contadorM50|Add0~34_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~32_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~2_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~3_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~35\ : std_logic;
SIGNAL \i2|contadorM50|Add0~37\ : std_logic;
SIGNAL \i2|contadorM50|Add0~39\ : std_logic;
SIGNAL \i2|contadorM50|Add0~40_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~41\ : std_logic;
SIGNAL \i2|contadorM50|Add0~43\ : std_logic;
SIGNAL \i2|contadorM50|Add0~44_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~45\ : std_logic;
SIGNAL \i2|contadorM50|Add0~47\ : std_logic;
SIGNAL \i2|contadorM50|Add0~48_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~49\ : std_logic;
SIGNAL \i2|contadorM50|Add0~50_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~0_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~0_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~4_combout\ : std_logic;
SIGNAL \i2|contadorM50|contador~0_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~14_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~5_combout\ : std_logic;
SIGNAL \i2|contadorM50|Add0~6_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~6_combout\ : std_logic;
SIGNAL \i2|contadorM50|Equal0~7_combout\ : std_logic;
SIGNAL \i1|Selector1~11_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador[1]~3_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador~1_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador[0]~0_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|co~0_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|contador~0_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|contador[0]~1_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|Add0~0_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|contador~2_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|Add0~2_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|contador~4_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|Equal0~0_combout\ : std_logic;
SIGNAL \i1|Selector1~1_combout\ : std_logic;
SIGNAL \i1|Selector1~2_combout\ : std_logic;
SIGNAL \i1|Selector5~2_combout\ : std_logic;
SIGNAL \i1|estado_act.findecuenta~regout\ : std_logic;
SIGNAL \i2|contadorM10min|contador~0_combout\ : std_logic;
SIGNAL \i2|contadorM10min|contador[3]~1_combout\ : std_logic;
SIGNAL \i2|contadorM10min|Add0~0_combout\ : std_logic;
SIGNAL \i2|contadorM10min|contador~4_combout\ : std_logic;
SIGNAL \i2|contadorM10min|contador~3_combout\ : std_logic;
SIGNAL \i2|contadorM10min|contador~2_combout\ : std_logic;
SIGNAL \i2|contadorM6min|contador~1_combout\ : std_logic;
SIGNAL \i2|contadorM10min|Equal0~0_combout\ : std_logic;
SIGNAL \i2|contadorM6min|contador[1]~2_combout\ : std_logic;
SIGNAL \i1|Selector1~12_combout\ : std_logic;
SIGNAL \i2|contadorM6min|contador~0_combout\ : std_logic;
SIGNAL \i2|contadorM6min|contador~3_combout\ : std_logic;
SIGNAL \i2|contadorM6min|contador~4_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|Add0~1_combout\ : std_logic;
SIGNAL \i2|contadorM10sec|contador~3_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador~4_combout\ : std_logic;
SIGNAL \i2|contadorM6seg|contador~5_combout\ : std_logic;
SIGNAL \i2|contadorM50|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \i2|contadorM10sec|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|contadorM6seg|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ent_p~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2|contadorM6min|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2|contadorM10min|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i2|contadorM6seg|ALT_INV_contador\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \i2|contadorM10sec|ALT_INV_contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|contadorM6min|ALT_INV_contador\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \i2|contadorM10min|ALT_INV_contador\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_p1 <= p1;
ww_p2 <= p2;
ww_puerta <= puerta;
ww_enc_temp <= enc_temp;
fin <= ww_fin;
horno_on <= ww_horno_on;
abierta <= ww_abierta;
ww_ent_p <= ent_p;
cnt_min <= ww_cnt_min;
cnt_seg <= ww_cnt_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\i2|contadorM6seg|ALT_INV_contador\(2) <= NOT \i2|contadorM6seg|contador\(2);
\i2|contadorM6seg|ALT_INV_contador\(1) <= NOT \i2|contadorM6seg|contador\(1);
\i2|contadorM10sec|ALT_INV_contador\(3) <= NOT \i2|contadorM10sec|contador\(3);
\i2|contadorM10sec|ALT_INV_contador\(0) <= NOT \i2|contadorM10sec|contador\(0);
\i2|contadorM6min|ALT_INV_contador\(2) <= NOT \i2|contadorM6min|contador\(2);
\i2|contadorM6min|ALT_INV_contador\(1) <= NOT \i2|contadorM6min|contador\(1);
\i2|contadorM10min|ALT_INV_contador\(3) <= NOT \i2|contadorM10min|contador\(3);
\i2|contadorM10min|ALT_INV_contador\(0) <= NOT \i2|contadorM10min|contador\(0);

-- Location: LCCOMB_X49_Y17_N8
\i2|contadorM50|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~2_combout\ = (\i2|contadorM50|contador\(1) & (!\i2|contadorM50|Add0~1\)) # (!\i2|contadorM50|contador\(1) & ((\i2|contadorM50|Add0~1\) # (GND)))
-- \i2|contadorM50|Add0~3\ = CARRY((!\i2|contadorM50|Add0~1\) # (!\i2|contadorM50|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(1),
	datad => VCC,
	cin => \i2|contadorM50|Add0~1\,
	combout => \i2|contadorM50|Add0~2_combout\,
	cout => \i2|contadorM50|Add0~3\);

-- Location: LCCOMB_X49_Y17_N16
\i2|contadorM50|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~10_combout\ = (\i2|contadorM50|contador\(5) & (!\i2|contadorM50|Add0~9\)) # (!\i2|contadorM50|contador\(5) & ((\i2|contadorM50|Add0~9\) # (GND)))
-- \i2|contadorM50|Add0~11\ = CARRY((!\i2|contadorM50|Add0~9\) # (!\i2|contadorM50|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(5),
	datad => VCC,
	cin => \i2|contadorM50|Add0~9\,
	combout => \i2|contadorM50|Add0~10_combout\,
	cout => \i2|contadorM50|Add0~11\);

-- Location: LCCOMB_X49_Y17_N24
\i2|contadorM50|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~18_combout\ = (\i2|contadorM50|contador\(9) & (!\i2|contadorM50|Add0~17\)) # (!\i2|contadorM50|contador\(9) & ((\i2|contadorM50|Add0~17\) # (GND)))
-- \i2|contadorM50|Add0~19\ = CARRY((!\i2|contadorM50|Add0~17\) # (!\i2|contadorM50|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(9),
	datad => VCC,
	cin => \i2|contadorM50|Add0~17\,
	combout => \i2|contadorM50|Add0~18_combout\,
	cout => \i2|contadorM50|Add0~19\);

-- Location: LCCOMB_X49_Y16_N10
\i2|contadorM50|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~36_combout\ = (\i2|contadorM50|contador\(18) & (\i2|contadorM50|Add0~35\ $ (GND))) # (!\i2|contadorM50|contador\(18) & (!\i2|contadorM50|Add0~35\ & VCC))
-- \i2|contadorM50|Add0~37\ = CARRY((\i2|contadorM50|contador\(18) & !\i2|contadorM50|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(18),
	datad => VCC,
	cin => \i2|contadorM50|Add0~35\,
	combout => \i2|contadorM50|Add0~36_combout\,
	cout => \i2|contadorM50|Add0~37\);

-- Location: LCCOMB_X49_Y16_N12
\i2|contadorM50|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~38_combout\ = (\i2|contadorM50|contador\(19) & (!\i2|contadorM50|Add0~37\)) # (!\i2|contadorM50|contador\(19) & ((\i2|contadorM50|Add0~37\) # (GND)))
-- \i2|contadorM50|Add0~39\ = CARRY((!\i2|contadorM50|Add0~37\) # (!\i2|contadorM50|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(19),
	datad => VCC,
	cin => \i2|contadorM50|Add0~37\,
	combout => \i2|contadorM50|Add0~38_combout\,
	cout => \i2|contadorM50|Add0~39\);

-- Location: LCCOMB_X49_Y16_N16
\i2|contadorM50|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~42_combout\ = (\i2|contadorM50|contador\(21) & (!\i2|contadorM50|Add0~41\)) # (!\i2|contadorM50|contador\(21) & ((\i2|contadorM50|Add0~41\) # (GND)))
-- \i2|contadorM50|Add0~43\ = CARRY((!\i2|contadorM50|Add0~41\) # (!\i2|contadorM50|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(21),
	datad => VCC,
	cin => \i2|contadorM50|Add0~41\,
	combout => \i2|contadorM50|Add0~42_combout\,
	cout => \i2|contadorM50|Add0~43\);

-- Location: LCCOMB_X49_Y16_N20
\i2|contadorM50|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~46_combout\ = (\i2|contadorM50|contador\(23) & (!\i2|contadorM50|Add0~45\)) # (!\i2|contadorM50|contador\(23) & ((\i2|contadorM50|Add0~45\) # (GND)))
-- \i2|contadorM50|Add0~47\ = CARRY((!\i2|contadorM50|Add0~45\) # (!\i2|contadorM50|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(23),
	datad => VCC,
	cin => \i2|contadorM50|Add0~45\,
	combout => \i2|contadorM50|Add0~46_combout\,
	cout => \i2|contadorM50|Add0~47\);

-- Location: LCFF_X49_Y16_N21
\i2|contadorM50|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~46_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(23));

-- Location: LCFF_X49_Y16_N17
\i2|contadorM50|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~42_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(21));

-- Location: LCFF_X49_Y16_N13
\i2|contadorM50|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~38_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(19));

-- Location: LCCOMB_X49_Y16_N26
\i2|contadorM50|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~1_combout\ = (!\i2|contadorM50|contador\(21) & (!\i2|contadorM50|contador\(22) & (!\i2|contadorM50|contador\(20) & !\i2|contadorM50|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(21),
	datab => \i2|contadorM50|contador\(22),
	datac => \i2|contadorM50|contador\(20),
	datad => \i2|contadorM50|contador\(19),
	combout => \i2|contadorM50|Equal0~1_combout\);

-- Location: LCFF_X49_Y16_N11
\i2|contadorM50|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~36_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(18));

-- Location: LCFF_X49_Y17_N25
\i2|contadorM50|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(9));

-- Location: LCFF_X49_Y17_N17
\i2|contadorM50|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(5));

-- Location: LCFF_X48_Y17_N15
\i2|contadorM50|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(1));

-- Location: LCCOMB_X46_Y16_N10
\i1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~0_combout\ = (\enc_temp~combout\ & (\i2|contadorM6min|contador\(1) & (\i2|contadorM6min|contador\(2) & !\i2|contadorM6min|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enc_temp~combout\,
	datab => \i2|contadorM6min|contador\(1),
	datac => \i2|contadorM6min|contador\(2),
	datad => \i2|contadorM6min|contador\(0),
	combout => \i1|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y16_N10
\i1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector4~0_combout\ = (!\i1|Selector1~6_combout\ & (((\enc_temp~combout\) # (!\i1|estado_act.carga_segundos~regout\)) # (!\p2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~combout\,
	datab => \enc_temp~combout\,
	datac => \i1|estado_act.carga_segundos~regout\,
	datad => \i1|Selector1~6_combout\,
	combout => \i1|Selector4~0_combout\);

-- Location: LCCOMB_X48_Y17_N14
\i2|contadorM50|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|contador~1_combout\ = (\i2|contadorM50|Add0~2_combout\ & ((!\i2|contadorM50|Equal0~4_combout\) # (!\i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|Equal0~7_combout\,
	datac => \i2|contadorM50|Add0~2_combout\,
	datad => \i2|contadorM50|Equal0~4_combout\,
	combout => \i2|contadorM50|contador~1_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enc_temp~I\ : cycloneii_io
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
	padio => ww_enc_temp,
	combout => \enc_temp~combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\puerta~I\ : cycloneii_io
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
	padio => ww_puerta,
	combout => \puerta~combout\);

-- Location: LCCOMB_X47_Y16_N8
\i1|Selector1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~9_combout\ = (\i1|estado_act.puerta_abierta~regout\ & (\enc_temp~combout\ & !\puerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.puerta_abierta~regout\,
	datab => \enc_temp~combout\,
	datad => \puerta~combout\,
	combout => \i1|Selector1~9_combout\);

-- Location: LCCOMB_X47_Y16_N30
\i1|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~3_combout\ = (\puerta~combout\ & (\enc_temp~combout\ & \i1|estado_act.encendido~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \enc_temp~combout\,
	datad => \i1|estado_act.encendido~regout\,
	combout => \i1|Selector1~3_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1~I\ : cycloneii_io
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
	padio => ww_p1,
	combout => \p1~combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2~I\ : cycloneii_io
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
	padio => ww_p2,
	combout => \p2~combout\);

-- Location: LCCOMB_X48_Y16_N8
\i1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector0~0_combout\ = (((\enc_temp~combout\) # (!\p2~combout\)) # (!\p1~combout\)) # (!\i1|estado_act.carga_segundos~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datab => \p1~combout\,
	datac => \p2~combout\,
	datad => \enc_temp~combout\,
	combout => \i1|Selector0~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y16_N2
\i1|Selector1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~10_combout\ = (!\p2~combout\ & (\enc_temp~combout\ & (!\p1~combout\ & !\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~combout\,
	datab => \enc_temp~combout\,
	datac => \p1~combout\,
	datad => \puerta~combout\,
	combout => \i1|Selector1~10_combout\);

-- Location: LCCOMB_X47_Y16_N22
\i1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector4~1_combout\ = (\i1|Selector1~3_combout\) # ((\i1|Selector4~0_combout\ & (!\i1|Selector1~10_combout\ & !\i1|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector4~0_combout\,
	datab => \i1|Selector1~3_combout\,
	datac => \i1|Selector1~10_combout\,
	datad => \i1|Selector1~2_combout\,
	combout => \i1|Selector4~1_combout\);

-- Location: LCCOMB_X47_Y16_N4
\i1|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector4~2_combout\ = (!\i1|Selector1~9_combout\ & ((\i1|Selector1~7_combout\ & ((\i1|Selector4~1_combout\))) # (!\i1|Selector1~7_combout\ & (\i1|estado_act.puerta_abierta~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector1~7_combout\,
	datab => \i1|Selector1~9_combout\,
	datac => \i1|estado_act.puerta_abierta~regout\,
	datad => \i1|Selector4~1_combout\,
	combout => \i1|Selector4~2_combout\);

-- Location: LCFF_X47_Y16_N5
\i1|estado_act.puerta_abierta\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|Selector4~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.puerta_abierta~regout\);

-- Location: LCCOMB_X47_Y16_N16
\i1|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~8_combout\ = (\i1|Selector1~7_combout\) # ((!\puerta~combout\ & (\enc_temp~combout\ & \i1|estado_act.puerta_abierta~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \enc_temp~combout\,
	datac => \i1|estado_act.puerta_abierta~regout\,
	datad => \i1|Selector1~7_combout\,
	combout => \i1|Selector1~8_combout\);

-- Location: LCFF_X47_Y16_N9
\i1|estado_act.reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|Selector0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|Selector1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.reposo~regout\);

-- Location: LCCOMB_X48_Y16_N14
\i1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector2~0_combout\ = (\i1|estado_act.carga_segundos~regout\ & (!\p1~combout\ & (\p2~combout\ & !\enc_temp~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datab => \p1~combout\,
	datac => \p2~combout\,
	datad => \enc_temp~combout\,
	combout => \i1|Selector2~0_combout\);

-- Location: LCFF_X47_Y16_N31
\i1|estado_act.carga_minutos\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|Selector1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.carga_minutos~regout\);

-- Location: LCCOMB_X46_Y16_N12
\i1|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~4_combout\ = (\i1|estado_act.carga_minutos~regout\) # (!\i1|estado_act.reposo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|estado_act.reposo~regout\,
	datad => \i1|estado_act.carga_minutos~regout\,
	combout => \i1|Selector1~4_combout\);

-- Location: LCCOMB_X46_Y16_N30
\i1|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~5_combout\ = (!\p2~combout\ & (\enc_temp~combout\ & (!\p1~combout\ & \i1|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~combout\,
	datab => \enc_temp~combout\,
	datac => \p1~combout\,
	datad => \i1|Selector1~4_combout\,
	combout => \i1|Selector1~5_combout\);

-- Location: LCCOMB_X47_Y16_N6
\i1|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~7_combout\ = ((\i1|Selector1~3_combout\) # ((\i1|Selector1~5_combout\) # (\i1|Selector1~2_combout\))) # (!\i1|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector4~0_combout\,
	datab => \i1|Selector1~3_combout\,
	datac => \i1|Selector1~5_combout\,
	datad => \i1|Selector1~2_combout\,
	combout => \i1|Selector1~7_combout\);

-- Location: LCCOMB_X47_Y16_N12
\i1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector3~0_combout\ = (\i1|Selector1~10_combout\ & (!\i1|Selector1~3_combout\ & (!\i1|Selector1~2_combout\ & \i1|Selector1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector1~10_combout\,
	datab => \i1|Selector1~3_combout\,
	datac => \i1|Selector1~2_combout\,
	datad => \i1|Selector1~7_combout\,
	combout => \i1|Selector3~0_combout\);

-- Location: LCCOMB_X47_Y16_N18
\i1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector3~1_combout\ = (\i1|Selector1~9_combout\) # ((\i1|Selector3~0_combout\) # ((!\i1|Selector1~7_combout\ & \i1|estado_act.encendido~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector1~7_combout\,
	datab => \i1|Selector1~9_combout\,
	datac => \i1|estado_act.encendido~regout\,
	datad => \i1|Selector3~0_combout\,
	combout => \i1|Selector3~1_combout\);

-- Location: LCFF_X47_Y16_N19
\i1|estado_act.encendido\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|Selector3~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.encendido~regout\);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[5]~I\ : cycloneii_io
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
	padio => ww_ent_p(5),
	combout => \ent_p~combout\(5));

-- Location: LCCOMB_X47_Y16_N0
\i1|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~6_combout\ = (!\p2~combout\ & (!\enc_temp~combout\ & (\p1~combout\ & !\i1|estado_act.reposo~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~combout\,
	datab => \enc_temp~combout\,
	datac => \p1~combout\,
	datad => \i1|estado_act.reposo~regout\,
	combout => \i1|Selector1~6_combout\);

-- Location: LCFF_X47_Y16_N11
\i1|estado_act.carga_segundos\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|Selector1~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|Selector1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.carga_segundos~regout\);

-- Location: LCCOMB_X48_Y16_N10
\i2|contadorM6seg|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador~2_combout\ = (\i1|estado_act.carga_segundos~regout\ & (((!\ent_p~combout\(5))))) # (!\i1|estado_act.carga_segundos~regout\ & (\i2|contadorM6seg|contador\(0) $ (((!\i2|contadorM6seg|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM6seg|contador\(0),
	datab => \ent_p~combout\(5),
	datac => \i2|contadorM6seg|contador\(1),
	datad => \i1|estado_act.carga_segundos~regout\,
	combout => \i2|contadorM6seg|contador~2_combout\);

-- Location: LCCOMB_X49_Y17_N6
\i2|contadorM50|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~0_combout\ = \i2|contadorM50|contador\(0) $ (VCC)
-- \i2|contadorM50|Add0~1\ = CARRY(\i2|contadorM50|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(0),
	datad => VCC,
	combout => \i2|contadorM50|Add0~0_combout\,
	cout => \i2|contadorM50|Add0~1\);

-- Location: LCCOMB_X49_Y17_N10
\i2|contadorM50|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~4_combout\ = (\i2|contadorM50|contador\(2) & (\i2|contadorM50|Add0~3\ $ (GND))) # (!\i2|contadorM50|contador\(2) & (!\i2|contadorM50|Add0~3\ & VCC))
-- \i2|contadorM50|Add0~5\ = CARRY((\i2|contadorM50|contador\(2) & !\i2|contadorM50|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(2),
	datad => VCC,
	cin => \i2|contadorM50|Add0~3\,
	combout => \i2|contadorM50|Add0~4_combout\,
	cout => \i2|contadorM50|Add0~5\);

-- Location: LCCOMB_X49_Y17_N12
\i2|contadorM50|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~6_combout\ = (\i2|contadorM50|contador\(3) & (!\i2|contadorM50|Add0~5\)) # (!\i2|contadorM50|contador\(3) & ((\i2|contadorM50|Add0~5\) # (GND)))
-- \i2|contadorM50|Add0~7\ = CARRY((!\i2|contadorM50|Add0~5\) # (!\i2|contadorM50|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(3),
	datad => VCC,
	cin => \i2|contadorM50|Add0~5\,
	combout => \i2|contadorM50|Add0~6_combout\,
	cout => \i2|contadorM50|Add0~7\);

-- Location: LCCOMB_X49_Y17_N14
\i2|contadorM50|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~8_combout\ = (\i2|contadorM50|contador\(4) & (\i2|contadorM50|Add0~7\ $ (GND))) # (!\i2|contadorM50|contador\(4) & (!\i2|contadorM50|Add0~7\ & VCC))
-- \i2|contadorM50|Add0~9\ = CARRY((\i2|contadorM50|contador\(4) & !\i2|contadorM50|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(4),
	datad => VCC,
	cin => \i2|contadorM50|Add0~7\,
	combout => \i2|contadorM50|Add0~8_combout\,
	cout => \i2|contadorM50|Add0~9\);

-- Location: LCFF_X49_Y17_N15
\i2|contadorM50|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(4));

-- Location: LCCOMB_X49_Y17_N18
\i2|contadorM50|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~12_combout\ = (\i2|contadorM50|contador\(6) & (\i2|contadorM50|Add0~11\ $ (GND))) # (!\i2|contadorM50|contador\(6) & (!\i2|contadorM50|Add0~11\ & VCC))
-- \i2|contadorM50|Add0~13\ = CARRY((\i2|contadorM50|contador\(6) & !\i2|contadorM50|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(6),
	datad => VCC,
	cin => \i2|contadorM50|Add0~11\,
	combout => \i2|contadorM50|Add0~12_combout\,
	cout => \i2|contadorM50|Add0~13\);

-- Location: LCFF_X49_Y17_N19
\i2|contadorM50|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(6));

-- Location: LCCOMB_X49_Y17_N20
\i2|contadorM50|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~14_combout\ = (\i2|contadorM50|contador\(7) & (!\i2|contadorM50|Add0~13\)) # (!\i2|contadorM50|contador\(7) & ((\i2|contadorM50|Add0~13\) # (GND)))
-- \i2|contadorM50|Add0~15\ = CARRY((!\i2|contadorM50|Add0~13\) # (!\i2|contadorM50|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(7),
	datad => VCC,
	cin => \i2|contadorM50|Add0~13\,
	combout => \i2|contadorM50|Add0~14_combout\,
	cout => \i2|contadorM50|Add0~15\);

-- Location: LCCOMB_X49_Y17_N22
\i2|contadorM50|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~16_combout\ = (\i2|contadorM50|contador\(8) & (\i2|contadorM50|Add0~15\ $ (GND))) # (!\i2|contadorM50|contador\(8) & (!\i2|contadorM50|Add0~15\ & VCC))
-- \i2|contadorM50|Add0~17\ = CARRY((\i2|contadorM50|contador\(8) & !\i2|contadorM50|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(8),
	datad => VCC,
	cin => \i2|contadorM50|Add0~15\,
	combout => \i2|contadorM50|Add0~16_combout\,
	cout => \i2|contadorM50|Add0~17\);

-- Location: LCFF_X49_Y17_N23
\i2|contadorM50|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(8));

-- Location: LCCOMB_X49_Y17_N26
\i2|contadorM50|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~20_combout\ = (\i2|contadorM50|contador\(10) & (\i2|contadorM50|Add0~19\ $ (GND))) # (!\i2|contadorM50|contador\(10) & (!\i2|contadorM50|Add0~19\ & VCC))
-- \i2|contadorM50|Add0~21\ = CARRY((\i2|contadorM50|contador\(10) & !\i2|contadorM50|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(10),
	datad => VCC,
	cin => \i2|contadorM50|Add0~19\,
	combout => \i2|contadorM50|Add0~20_combout\,
	cout => \i2|contadorM50|Add0~21\);

-- Location: LCFF_X49_Y17_N27
\i2|contadorM50|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(10));

-- Location: LCCOMB_X49_Y17_N28
\i2|contadorM50|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~22_combout\ = (\i2|contadorM50|contador\(11) & (!\i2|contadorM50|Add0~21\)) # (!\i2|contadorM50|contador\(11) & ((\i2|contadorM50|Add0~21\) # (GND)))
-- \i2|contadorM50|Add0~23\ = CARRY((!\i2|contadorM50|Add0~21\) # (!\i2|contadorM50|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(11),
	datad => VCC,
	cin => \i2|contadorM50|Add0~21\,
	combout => \i2|contadorM50|Add0~22_combout\,
	cout => \i2|contadorM50|Add0~23\);

-- Location: LCFF_X49_Y17_N29
\i2|contadorM50|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(11));

-- Location: LCCOMB_X49_Y17_N30
\i2|contadorM50|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~24_combout\ = (\i2|contadorM50|contador\(12) & (\i2|contadorM50|Add0~23\ $ (GND))) # (!\i2|contadorM50|contador\(12) & (!\i2|contadorM50|Add0~23\ & VCC))
-- \i2|contadorM50|Add0~25\ = CARRY((\i2|contadorM50|contador\(12) & !\i2|contadorM50|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(12),
	datad => VCC,
	cin => \i2|contadorM50|Add0~23\,
	combout => \i2|contadorM50|Add0~24_combout\,
	cout => \i2|contadorM50|Add0~25\);

-- Location: LCFF_X49_Y16_N31
\i2|contadorM50|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i2|contadorM50|Add0~24_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(12));

-- Location: LCCOMB_X49_Y16_N0
\i2|contadorM50|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~26_combout\ = (\i2|contadorM50|contador\(13) & (!\i2|contadorM50|Add0~25\)) # (!\i2|contadorM50|contador\(13) & ((\i2|contadorM50|Add0~25\) # (GND)))
-- \i2|contadorM50|Add0~27\ = CARRY((!\i2|contadorM50|Add0~25\) # (!\i2|contadorM50|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(13),
	datad => VCC,
	cin => \i2|contadorM50|Add0~25\,
	combout => \i2|contadorM50|Add0~26_combout\,
	cout => \i2|contadorM50|Add0~27\);

-- Location: LCFF_X49_Y16_N1
\i2|contadorM50|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~26_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(13));

-- Location: LCCOMB_X49_Y16_N2
\i2|contadorM50|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~28_combout\ = (\i2|contadorM50|contador\(14) & (\i2|contadorM50|Add0~27\ $ (GND))) # (!\i2|contadorM50|contador\(14) & (!\i2|contadorM50|Add0~27\ & VCC))
-- \i2|contadorM50|Add0~29\ = CARRY((\i2|contadorM50|contador\(14) & !\i2|contadorM50|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(14),
	datad => VCC,
	cin => \i2|contadorM50|Add0~27\,
	combout => \i2|contadorM50|Add0~28_combout\,
	cout => \i2|contadorM50|Add0~29\);

-- Location: LCFF_X49_Y16_N3
\i2|contadorM50|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~28_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(14));

-- Location: LCCOMB_X49_Y16_N4
\i2|contadorM50|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~30_combout\ = (\i2|contadorM50|contador\(15) & (!\i2|contadorM50|Add0~29\)) # (!\i2|contadorM50|contador\(15) & ((\i2|contadorM50|Add0~29\) # (GND)))
-- \i2|contadorM50|Add0~31\ = CARRY((!\i2|contadorM50|Add0~29\) # (!\i2|contadorM50|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(15),
	datad => VCC,
	cin => \i2|contadorM50|Add0~29\,
	combout => \i2|contadorM50|Add0~30_combout\,
	cout => \i2|contadorM50|Add0~31\);

-- Location: LCFF_X49_Y16_N5
\i2|contadorM50|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~30_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(15));

-- Location: LCCOMB_X49_Y16_N6
\i2|contadorM50|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~32_combout\ = (\i2|contadorM50|contador\(16) & (\i2|contadorM50|Add0~31\ $ (GND))) # (!\i2|contadorM50|contador\(16) & (!\i2|contadorM50|Add0~31\ & VCC))
-- \i2|contadorM50|Add0~33\ = CARRY((\i2|contadorM50|contador\(16) & !\i2|contadorM50|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(16),
	datad => VCC,
	cin => \i2|contadorM50|Add0~31\,
	combout => \i2|contadorM50|Add0~32_combout\,
	cout => \i2|contadorM50|Add0~33\);

-- Location: LCCOMB_X49_Y16_N8
\i2|contadorM50|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~34_combout\ = (\i2|contadorM50|contador\(17) & (!\i2|contadorM50|Add0~33\)) # (!\i2|contadorM50|contador\(17) & ((\i2|contadorM50|Add0~33\) # (GND)))
-- \i2|contadorM50|Add0~35\ = CARRY((!\i2|contadorM50|Add0~33\) # (!\i2|contadorM50|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(17),
	datad => VCC,
	cin => \i2|contadorM50|Add0~33\,
	combout => \i2|contadorM50|Add0~34_combout\,
	cout => \i2|contadorM50|Add0~35\);

-- Location: LCFF_X49_Y16_N9
\i2|contadorM50|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~34_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(17));

-- Location: LCFF_X49_Y16_N7
\i2|contadorM50|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~32_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(16));

-- Location: LCCOMB_X49_Y16_N28
\i2|contadorM50|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~2_combout\ = (!\i2|contadorM50|contador\(18) & (!\i2|contadorM50|contador\(17) & (!\i2|contadorM50|contador\(15) & !\i2|contadorM50|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(18),
	datab => \i2|contadorM50|contador\(17),
	datac => \i2|contadorM50|contador\(15),
	datad => \i2|contadorM50|contador\(16),
	combout => \i2|contadorM50|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y16_N20
\i2|contadorM50|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~3_combout\ = (!\i2|contadorM50|contador\(14) & (!\i2|contadorM50|contador\(13) & (!\i2|contadorM50|contador\(11) & !\i2|contadorM50|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(14),
	datab => \i2|contadorM50|contador\(13),
	datac => \i2|contadorM50|contador\(11),
	datad => \i2|contadorM50|contador\(12),
	combout => \i2|contadorM50|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y16_N14
\i2|contadorM50|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~40_combout\ = (\i2|contadorM50|contador\(20) & (\i2|contadorM50|Add0~39\ $ (GND))) # (!\i2|contadorM50|contador\(20) & (!\i2|contadorM50|Add0~39\ & VCC))
-- \i2|contadorM50|Add0~41\ = CARRY((\i2|contadorM50|contador\(20) & !\i2|contadorM50|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(20),
	datad => VCC,
	cin => \i2|contadorM50|Add0~39\,
	combout => \i2|contadorM50|Add0~40_combout\,
	cout => \i2|contadorM50|Add0~41\);

-- Location: LCFF_X49_Y16_N15
\i2|contadorM50|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~40_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(20));

-- Location: LCCOMB_X49_Y16_N18
\i2|contadorM50|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~44_combout\ = (\i2|contadorM50|contador\(22) & (\i2|contadorM50|Add0~43\ $ (GND))) # (!\i2|contadorM50|contador\(22) & (!\i2|contadorM50|Add0~43\ & VCC))
-- \i2|contadorM50|Add0~45\ = CARRY((\i2|contadorM50|contador\(22) & !\i2|contadorM50|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(22),
	datad => VCC,
	cin => \i2|contadorM50|Add0~43\,
	combout => \i2|contadorM50|Add0~44_combout\,
	cout => \i2|contadorM50|Add0~45\);

-- Location: LCFF_X49_Y16_N19
\i2|contadorM50|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~44_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(22));

-- Location: LCCOMB_X49_Y16_N22
\i2|contadorM50|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~48_combout\ = (\i2|contadorM50|contador\(24) & (\i2|contadorM50|Add0~47\ $ (GND))) # (!\i2|contadorM50|contador\(24) & (!\i2|contadorM50|Add0~47\ & VCC))
-- \i2|contadorM50|Add0~49\ = CARRY((\i2|contadorM50|contador\(24) & !\i2|contadorM50|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM50|contador\(24),
	datad => VCC,
	cin => \i2|contadorM50|Add0~47\,
	combout => \i2|contadorM50|Add0~48_combout\,
	cout => \i2|contadorM50|Add0~49\);

-- Location: LCFF_X49_Y16_N23
\i2|contadorM50|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~48_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(24));

-- Location: LCCOMB_X49_Y16_N24
\i2|contadorM50|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Add0~50_combout\ = \i2|contadorM50|contador\(25) $ (\i2|contadorM50|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(25),
	cin => \i2|contadorM50|Add0~49\,
	combout => \i2|contadorM50|Add0~50_combout\);

-- Location: LCFF_X49_Y16_N25
\i2|contadorM50|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~50_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(25));

-- Location: LCFF_X49_Y17_N7
\i2|contadorM50|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(0));

-- Location: LCCOMB_X48_Y16_N18
\i2|contadorM50|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~0_combout\ = (!\i2|contadorM50|contador\(23) & (!\i2|contadorM50|contador\(25) & (\i2|contadorM50|contador\(0) & !\i2|contadorM50|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(23),
	datab => \i2|contadorM50|contador\(25),
	datac => \i2|contadorM50|contador\(0),
	datad => \i2|contadorM50|contador\(24),
	combout => \i2|contadorM50|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y16_N30
\i2|contadorM50|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~4_combout\ = (\i2|contadorM50|Equal0~1_combout\ & (\i2|contadorM50|Equal0~2_combout\ & (\i2|contadorM50|Equal0~3_combout\ & \i2|contadorM50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|Equal0~1_combout\,
	datab => \i2|contadorM50|Equal0~2_combout\,
	datac => \i2|contadorM50|Equal0~3_combout\,
	datad => \i2|contadorM50|Equal0~0_combout\,
	combout => \i2|contadorM50|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y17_N28
\i2|contadorM50|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|contador~0_combout\ = (\i2|contadorM50|Add0~4_combout\ & ((!\i2|contadorM50|Equal0~4_combout\) # (!\i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|Equal0~7_combout\,
	datac => \i2|contadorM50|Add0~4_combout\,
	datad => \i2|contadorM50|Equal0~4_combout\,
	combout => \i2|contadorM50|contador~0_combout\);

-- Location: LCFF_X48_Y17_N29
\i2|contadorM50|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(2));

-- Location: LCFF_X49_Y17_N21
\i2|contadorM50|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(7));

-- Location: LCCOMB_X49_Y17_N0
\i2|contadorM50|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~5_combout\ = (!\i2|contadorM50|contador\(9) & (!\i2|contadorM50|contador\(10) & (!\i2|contadorM50|contador\(7) & !\i2|contadorM50|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(9),
	datab => \i2|contadorM50|contador\(10),
	datac => \i2|contadorM50|contador\(7),
	datad => \i2|contadorM50|contador\(8),
	combout => \i2|contadorM50|Equal0~5_combout\);

-- Location: LCFF_X49_Y17_N13
\i2|contadorM50|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM50|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM50|contador\(3));

-- Location: LCCOMB_X49_Y17_N2
\i2|contadorM50|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~6_combout\ = (!\i2|contadorM50|contador\(5) & (!\i2|contadorM50|contador\(6) & (!\i2|contadorM50|contador\(4) & !\i2|contadorM50|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(5),
	datab => \i2|contadorM50|contador\(6),
	datac => \i2|contadorM50|contador\(4),
	datad => \i2|contadorM50|contador\(3),
	combout => \i2|contadorM50|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y17_N16
\i2|contadorM50|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM50|Equal0~7_combout\ = (!\i2|contadorM50|contador\(1) & (\i2|contadorM50|contador\(2) & (\i2|contadorM50|Equal0~5_combout\ & \i2|contadorM50|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM50|contador\(1),
	datab => \i2|contadorM50|contador\(2),
	datac => \i2|contadorM50|Equal0~5_combout\,
	datad => \i2|contadorM50|Equal0~6_combout\,
	combout => \i2|contadorM50|Equal0~7_combout\);

-- Location: LCCOMB_X48_Y16_N22
\i1|Selector1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~11_combout\ = (\i2|contadorM10sec|Equal0~0_combout\ & (\i1|estado_act.encendido~regout\ & (\i2|contadorM50|Equal0~7_combout\ & \i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10sec|Equal0~0_combout\,
	datab => \i1|estado_act.encendido~regout\,
	datac => \i2|contadorM50|Equal0~7_combout\,
	datad => \i2|contadorM50|Equal0~4_combout\,
	combout => \i1|Selector1~11_combout\);

-- Location: LCCOMB_X48_Y16_N26
\i2|contadorM6seg|contador[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador[1]~3_combout\ = (\i1|estado_act.carga_segundos~regout\) # (\i1|Selector1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datad => \i1|Selector1~11_combout\,
	combout => \i2|contadorM6seg|contador[1]~3_combout\);

-- Location: LCFF_X48_Y16_N11
\i2|contadorM6seg|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6seg|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM6seg|contador[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6seg|contador\(1));

-- Location: LCCOMB_X48_Y16_N28
\i2|contadorM6seg|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador~1_combout\ = (\i2|contadorM6seg|contador\(0)) # ((\i2|contadorM6seg|contador\(2) & \i2|contadorM6seg|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM6seg|contador\(2),
	datac => \i2|contadorM6seg|contador\(0),
	datad => \i2|contadorM6seg|contador\(1),
	combout => \i2|contadorM6seg|contador~1_combout\);

-- Location: LCCOMB_X48_Y16_N24
\i2|contadorM6seg|contador[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador[0]~0_combout\ = (\i1|Selector1~11_combout\ & (!\i2|contadorM6seg|contador~1_combout\)) # (!\i1|Selector1~11_combout\ & ((\i2|contadorM6seg|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM6seg|contador~1_combout\,
	datac => \i2|contadorM6seg|contador\(0),
	datad => \i1|Selector1~11_combout\,
	combout => \i2|contadorM6seg|contador[0]~0_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[4]~I\ : cycloneii_io
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
	padio => ww_ent_p(4),
	combout => \ent_p~combout\(4));

-- Location: LCFF_X48_Y16_N25
\i2|contadorM6seg|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6seg|contador[0]~0_combout\,
	sdata => \ent_p~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i1|estado_act.carga_segundos~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6seg|contador\(0));

-- Location: LCCOMB_X48_Y16_N16
\i2|contadorM6seg|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|co~0_combout\ = (\i2|contadorM6seg|contador\(2) & (!\i2|contadorM6seg|contador\(0) & \i2|contadorM6seg|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM6seg|contador\(2),
	datac => \i2|contadorM6seg|contador\(0),
	datad => \i2|contadorM6seg|contador\(1),
	combout => \i2|contadorM6seg|co~0_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[0]~I\ : cycloneii_io
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
	padio => ww_ent_p(0),
	combout => \ent_p~combout\(0));

-- Location: LCCOMB_X47_Y15_N28
\i2|contadorM10sec|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|contador~0_combout\ = (\i1|estado_act.carga_segundos~regout\ & ((!\ent_p~combout\(0)))) # (!\i1|estado_act.carga_segundos~regout\ & (!\i2|contadorM10sec|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datac => \i2|contadorM10sec|contador\(0),
	datad => \ent_p~combout\(0),
	combout => \i2|contadorM10sec|contador~0_combout\);

-- Location: LCCOMB_X47_Y15_N8
\i2|contadorM10sec|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|contador[0]~1_combout\ = (\i1|estado_act.carga_segundos~regout\) # ((\i2|contadorM50|Equal0~7_combout\ & (\i1|estado_act.encendido~regout\ & \i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datab => \i2|contadorM50|Equal0~7_combout\,
	datac => \i1|estado_act.encendido~regout\,
	datad => \i2|contadorM50|Equal0~4_combout\,
	combout => \i2|contadorM10sec|contador[0]~1_combout\);

-- Location: LCFF_X47_Y15_N29
\i2|contadorM10sec|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10sec|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10sec|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10sec|contador\(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[1]~I\ : cycloneii_io
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
	padio => ww_ent_p(1),
	combout => \ent_p~combout\(1));

-- Location: LCCOMB_X47_Y15_N26
\i2|contadorM10sec|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|Add0~0_combout\ = \i2|contadorM10sec|contador\(1) $ (!\i2|contadorM10sec|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM10sec|contador\(1),
	datad => \i2|contadorM10sec|contador\(0),
	combout => \i2|contadorM10sec|Add0~0_combout\);

-- Location: LCCOMB_X47_Y15_N30
\i2|contadorM10sec|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|contador~2_combout\ = (\i1|estado_act.carga_segundos~regout\ & (((\ent_p~combout\(1))))) # (!\i1|estado_act.carga_segundos~regout\ & (!\i2|contadorM10sec|Equal0~0_combout\ & ((!\i2|contadorM10sec|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10sec|Equal0~0_combout\,
	datab => \ent_p~combout\(1),
	datac => \i1|estado_act.carga_segundos~regout\,
	datad => \i2|contadorM10sec|Add0~0_combout\,
	combout => \i2|contadorM10sec|contador~2_combout\);

-- Location: LCFF_X47_Y15_N31
\i2|contadorM10sec|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10sec|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10sec|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10sec|contador\(1));

-- Location: LCCOMB_X47_Y15_N22
\i2|contadorM10sec|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|Add0~2_combout\ = \i2|contadorM10sec|contador\(3) $ (((!\i2|contadorM10sec|contador\(2) & (!\i2|contadorM10sec|contador\(1) & \i2|contadorM10sec|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10sec|contador\(2),
	datab => \i2|contadorM10sec|contador\(1),
	datac => \i2|contadorM10sec|contador\(3),
	datad => \i2|contadorM10sec|contador\(0),
	combout => \i2|contadorM10sec|Add0~2_combout\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[3]~I\ : cycloneii_io
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
	padio => ww_ent_p(3),
	combout => \ent_p~combout\(3));

-- Location: LCCOMB_X47_Y15_N14
\i2|contadorM10sec|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|contador~4_combout\ = (\i1|estado_act.carga_segundos~regout\ & ((!\ent_p~combout\(3)))) # (!\i1|estado_act.carga_segundos~regout\ & (\i2|contadorM10sec|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM10sec|Add0~2_combout\,
	datac => \i1|estado_act.carga_segundos~regout\,
	datad => \ent_p~combout\(3),
	combout => \i2|contadorM10sec|contador~4_combout\);

-- Location: LCFF_X47_Y15_N15
\i2|contadorM10sec|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10sec|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10sec|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10sec|contador\(3));

-- Location: LCCOMB_X47_Y15_N10
\i2|contadorM10sec|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|Equal0~0_combout\ = (!\i2|contadorM10sec|contador\(2) & (\i2|contadorM10sec|contador\(0) & (\i2|contadorM10sec|contador\(3) & !\i2|contadorM10sec|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10sec|contador\(2),
	datab => \i2|contadorM10sec|contador\(0),
	datac => \i2|contadorM10sec|contador\(3),
	datad => \i2|contadorM10sec|contador\(1),
	combout => \i2|contadorM10sec|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y16_N14
\i1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~1_combout\ = (\i1|Selector1~0_combout\ & (\i1|estado_act.encendido~regout\ & (\i2|contadorM6seg|co~0_combout\ & \i2|contadorM10sec|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Selector1~0_combout\,
	datab => \i1|estado_act.encendido~regout\,
	datac => \i2|contadorM6seg|co~0_combout\,
	datad => \i2|contadorM10sec|Equal0~0_combout\,
	combout => \i1|Selector1~1_combout\);

-- Location: LCCOMB_X47_Y16_N28
\i1|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~2_combout\ = (\i2|contadorM10min|Equal0~0_combout\ & (\i1|Selector1~1_combout\ & (\i2|contadorM50|Equal0~7_combout\ & \i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10min|Equal0~0_combout\,
	datab => \i1|Selector1~1_combout\,
	datac => \i2|contadorM50|Equal0~7_combout\,
	datad => \i2|contadorM50|Equal0~4_combout\,
	combout => \i1|Selector1~2_combout\);

-- Location: LCCOMB_X47_Y16_N24
\i1|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector5~2_combout\ = (!\puerta~combout\ & \i1|Selector1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datad => \i1|Selector1~2_combout\,
	combout => \i1|Selector5~2_combout\);

-- Location: LCFF_X47_Y16_N25
\i1|estado_act.findecuenta\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|Selector5~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|Selector1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|estado_act.findecuenta~regout\);

-- Location: LCCOMB_X47_Y15_N20
\i2|contadorM10min|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|contador~0_combout\ = (\i1|estado_act.carga_minutos~regout\ & ((!\ent_p~combout\(0)))) # (!\i1|estado_act.carga_minutos~regout\ & (!\i2|contadorM10min|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|estado_act.carga_minutos~regout\,
	datac => \i2|contadorM10min|contador\(0),
	datad => \ent_p~combout\(0),
	combout => \i2|contadorM10min|contador~0_combout\);

-- Location: LCCOMB_X47_Y15_N24
\i2|contadorM10min|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|contador[3]~1_combout\ = (\i1|estado_act.carga_minutos~regout\) # ((\i2|contadorM6seg|co~0_combout\ & \i1|Selector1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM6seg|co~0_combout\,
	datac => \i1|estado_act.carga_minutos~regout\,
	datad => \i1|Selector1~11_combout\,
	combout => \i2|contadorM10min|contador[3]~1_combout\);

-- Location: LCFF_X47_Y15_N21
\i2|contadorM10min|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10min|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10min|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10min|contador\(0));

-- Location: LCCOMB_X47_Y15_N18
\i2|contadorM10min|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|Add0~0_combout\ = \i2|contadorM10min|contador\(3) $ (((\i2|contadorM10min|contador\(0) & (!\i2|contadorM10min|contador\(2) & !\i2|contadorM10min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10min|contador\(0),
	datab => \i2|contadorM10min|contador\(2),
	datac => \i2|contadorM10min|contador\(1),
	datad => \i2|contadorM10min|contador\(3),
	combout => \i2|contadorM10min|Add0~0_combout\);

-- Location: LCCOMB_X47_Y15_N6
\i2|contadorM10min|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|contador~4_combout\ = (\i1|estado_act.carga_minutos~regout\ & ((!\ent_p~combout\(3)))) # (!\i1|estado_act.carga_minutos~regout\ & (\i2|contadorM10min|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM10min|Add0~0_combout\,
	datac => \i1|estado_act.carga_minutos~regout\,
	datad => \ent_p~combout\(3),
	combout => \i2|contadorM10min|contador~4_combout\);

-- Location: LCFF_X47_Y15_N7
\i2|contadorM10min|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10min|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10min|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10min|contador\(3));

-- Location: LCCOMB_X47_Y15_N2
\i2|contadorM10min|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|contador~3_combout\ = (\i2|contadorM10min|contador\(0) & ((\i2|contadorM10min|contador\(1) & (\i2|contadorM10min|contador\(2))) # (!\i2|contadorM10min|contador\(1) & (!\i2|contadorM10min|contador\(2) & 
-- !\i2|contadorM10min|contador\(3))))) # (!\i2|contadorM10min|contador\(0) & (((\i2|contadorM10min|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10min|contador\(0),
	datab => \i2|contadorM10min|contador\(1),
	datac => \i2|contadorM10min|contador\(2),
	datad => \i2|contadorM10min|contador\(3),
	combout => \i2|contadorM10min|contador~3_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[2]~I\ : cycloneii_io
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
	padio => ww_ent_p(2),
	combout => \ent_p~combout\(2));

-- Location: LCFF_X47_Y15_N3
\i2|contadorM10min|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10min|contador~3_combout\,
	sdata => \ent_p~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i1|estado_act.carga_minutos~regout\,
	ena => \i2|contadorM10min|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10min|contador\(2));

-- Location: LCCOMB_X47_Y15_N4
\i2|contadorM10min|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|contador~2_combout\ = (\i2|contadorM10min|contador\(0) & (!\i2|contadorM10min|contador\(1) & ((\i2|contadorM10min|contador\(2)) # (!\i2|contadorM10min|contador\(3))))) # (!\i2|contadorM10min|contador\(0) & 
-- (((\i2|contadorM10min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10min|contador\(0),
	datab => \i2|contadorM10min|contador\(2),
	datac => \i2|contadorM10min|contador\(1),
	datad => \i2|contadorM10min|contador\(3),
	combout => \i2|contadorM10min|contador~2_combout\);

-- Location: LCFF_X47_Y15_N5
\i2|contadorM10min|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10min|contador~2_combout\,
	sdata => \ent_p~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i1|estado_act.carga_minutos~regout\,
	ena => \i2|contadorM10min|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10min|contador\(1));

-- Location: LCCOMB_X46_Y16_N18
\i2|contadorM6min|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6min|contador~1_combout\ = (\i1|estado_act.carga_minutos~regout\ & (!\ent_p~combout\(5))) # (!\i1|estado_act.carga_minutos~regout\ & ((\i2|contadorM6min|contador\(0) $ (!\i2|contadorM6min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_p~combout\(5),
	datab => \i2|contadorM6min|contador\(0),
	datac => \i2|contadorM6min|contador\(1),
	datad => \i1|estado_act.carga_minutos~regout\,
	combout => \i2|contadorM6min|contador~1_combout\);

-- Location: LCCOMB_X47_Y15_N0
\i2|contadorM10min|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10min|Equal0~0_combout\ = (\i2|contadorM10min|contador\(0) & (!\i2|contadorM10min|contador\(2) & (!\i2|contadorM10min|contador\(1) & \i2|contadorM10min|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10min|contador\(0),
	datab => \i2|contadorM10min|contador\(2),
	datac => \i2|contadorM10min|contador\(1),
	datad => \i2|contadorM10min|contador\(3),
	combout => \i2|contadorM10min|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y16_N26
\i2|contadorM6min|contador[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6min|contador[1]~2_combout\ = (\i1|estado_act.carga_minutos~regout\) # ((\i2|contadorM10min|Equal0~0_combout\ & (\i2|contadorM6seg|co~0_combout\ & \i1|Selector1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_minutos~regout\,
	datab => \i2|contadorM10min|Equal0~0_combout\,
	datac => \i2|contadorM6seg|co~0_combout\,
	datad => \i1|Selector1~11_combout\,
	combout => \i2|contadorM6min|contador[1]~2_combout\);

-- Location: LCFF_X46_Y16_N19
\i2|contadorM6min|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6min|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM6min|contador[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6min|contador\(1));

-- Location: LCCOMB_X47_Y16_N20
\i1|Selector1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Selector1~12_combout\ = (\i2|contadorM10min|Equal0~0_combout\ & (\i2|contadorM6seg|co~0_combout\ & \i1|Selector1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM10min|Equal0~0_combout\,
	datac => \i2|contadorM6seg|co~0_combout\,
	datad => \i1|Selector1~11_combout\,
	combout => \i1|Selector1~12_combout\);

-- Location: LCCOMB_X46_Y16_N28
\i2|contadorM6min|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6min|contador~0_combout\ = (\i2|contadorM6min|contador\(0) & (((!\i1|Selector1~12_combout\)))) # (!\i2|contadorM6min|contador\(0) & (\i1|Selector1~12_combout\ & ((!\i2|contadorM6min|contador\(1)) # (!\i2|contadorM6min|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM6min|contador\(2),
	datab => \i2|contadorM6min|contador\(1),
	datac => \i2|contadorM6min|contador\(0),
	datad => \i1|Selector1~12_combout\,
	combout => \i2|contadorM6min|contador~0_combout\);

-- Location: LCFF_X46_Y16_N29
\i2|contadorM6min|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6min|contador~0_combout\,
	sdata => \ent_p~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i1|estado_act.carga_minutos~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6min|contador\(0));

-- Location: LCCOMB_X46_Y16_N8
\i2|contadorM6min|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6min|contador~3_combout\ = (!\i1|estado_act.carga_minutos~regout\ & (\i2|contadorM6min|contador\(2) $ (((\i2|contadorM6min|contador\(0)) # (!\i2|contadorM6min|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM6min|contador\(1),
	datab => \i2|contadorM6min|contador\(0),
	datac => \i2|contadorM6min|contador\(2),
	datad => \i1|estado_act.carga_minutos~regout\,
	combout => \i2|contadorM6min|contador~3_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[6]~I\ : cycloneii_io
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
	padio => ww_ent_p(6),
	combout => \ent_p~combout\(6));

-- Location: LCCOMB_X46_Y16_N24
\i2|contadorM6min|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6min|contador~4_combout\ = (!\i2|contadorM6min|contador~3_combout\ & ((!\i1|estado_act.carga_minutos~regout\) # (!\ent_p~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM6min|contador~3_combout\,
	datac => \ent_p~combout\(6),
	datad => \i1|estado_act.carga_minutos~regout\,
	combout => \i2|contadorM6min|contador~4_combout\);

-- Location: LCFF_X46_Y16_N25
\i2|contadorM6min|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6min|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM6min|contador[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6min|contador\(2));

-- Location: LCCOMB_X47_Y15_N12
\i2|contadorM10sec|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|Add0~1_combout\ = \i2|contadorM10sec|contador\(2) $ (((\i2|contadorM10sec|contador\(1)) # (!\i2|contadorM10sec|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contadorM10sec|contador\(1),
	datac => \i2|contadorM10sec|contador\(2),
	datad => \i2|contadorM10sec|contador\(0),
	combout => \i2|contadorM10sec|Add0~1_combout\);

-- Location: LCCOMB_X47_Y15_N16
\i2|contadorM10sec|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM10sec|contador~3_combout\ = (\i1|estado_act.carga_segundos~regout\ & (((\ent_p~combout\(2))))) # (!\i1|estado_act.carga_segundos~regout\ & (!\i2|contadorM10sec|Equal0~0_combout\ & ((!\i2|contadorM10sec|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contadorM10sec|Equal0~0_combout\,
	datab => \ent_p~combout\(2),
	datac => \i1|estado_act.carga_segundos~regout\,
	datad => \i2|contadorM10sec|Add0~1_combout\,
	combout => \i2|contadorM10sec|contador~3_combout\);

-- Location: LCFF_X47_Y15_N17
\i2|contadorM10sec|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM10sec|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM10sec|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM10sec|contador\(2));

-- Location: LCCOMB_X48_Y16_N4
\i2|contadorM6seg|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador~4_combout\ = (!\i1|estado_act.carga_segundos~regout\ & (\i2|contadorM6seg|contador\(2) $ (((\i2|contadorM6seg|contador\(0)) # (!\i2|contadorM6seg|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datab => \i2|contadorM6seg|contador\(2),
	datac => \i2|contadorM6seg|contador\(0),
	datad => \i2|contadorM6seg|contador\(1),
	combout => \i2|contadorM6seg|contador~4_combout\);

-- Location: LCCOMB_X48_Y16_N12
\i2|contadorM6seg|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contadorM6seg|contador~5_combout\ = (!\i2|contadorM6seg|contador~4_combout\ & ((!\ent_p~combout\(6)) # (!\i1|estado_act.carga_segundos~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|estado_act.carga_segundos~regout\,
	datab => \i2|contadorM6seg|contador~4_combout\,
	datac => \ent_p~combout\(6),
	combout => \i2|contadorM6seg|contador~5_combout\);

-- Location: LCFF_X48_Y16_N13
\i2|contadorM6seg|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contadorM6seg|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i2|contadorM6seg|contador[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contadorM6seg|contador\(2));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fin~I\ : cycloneii_io
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
	datain => \i1|estado_act.findecuenta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fin);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\horno_on~I\ : cycloneii_io
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
	datain => \i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_horno_on);

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\abierta~I\ : cycloneii_io
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
	datain => \i1|estado_act.puerta_abierta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_abierta);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[0]~I\ : cycloneii_io
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
	datain => \i2|contadorM10min|ALT_INV_contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(0));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[1]~I\ : cycloneii_io
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
	datain => \i2|contadorM10min|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(1));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[2]~I\ : cycloneii_io
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
	datain => \i2|contadorM10min|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(2));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[3]~I\ : cycloneii_io
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
	datain => \i2|contadorM10min|ALT_INV_contador\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(3));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[4]~I\ : cycloneii_io
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
	datain => \i2|contadorM6min|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(4));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[5]~I\ : cycloneii_io
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
	datain => \i2|contadorM6min|ALT_INV_contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(5));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[6]~I\ : cycloneii_io
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
	datain => \i2|contadorM6min|ALT_INV_contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(6));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[0]~I\ : cycloneii_io
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
	datain => \i2|contadorM10sec|ALT_INV_contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(0));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[1]~I\ : cycloneii_io
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
	datain => \i2|contadorM10sec|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(1));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[2]~I\ : cycloneii_io
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
	datain => \i2|contadorM10sec|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(2));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[3]~I\ : cycloneii_io
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
	datain => \i2|contadorM10sec|ALT_INV_contador\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(3));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[4]~I\ : cycloneii_io
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
	datain => \i2|contadorM6seg|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(4));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[5]~I\ : cycloneii_io
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
	datain => \i2|contadorM6seg|ALT_INV_contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(5));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[6]~I\ : cycloneii_io
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
	datain => \i2|contadorM6seg|ALT_INV_contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(6));
END structure;


