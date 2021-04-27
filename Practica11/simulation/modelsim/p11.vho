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

-- DATE "04/27/2021 18:50:03"

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

ENTITY 	p11 IS
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
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0);
	d_c : OUT std_logic_vector(6 DOWNTO 0);
	d_d : OUT std_logic_vector(6 DOWNTO 0)
	);
END p11;

-- Design Ports Information
-- fin	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- horno_on	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- abierta	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[0]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[0]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[1]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[2]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[3]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[4]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[5]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[6]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[0]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[2]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[3]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[4]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[5]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[6]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- puerta	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enc_temp	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[0]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[1]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[2]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[3]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[4]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF p11 IS
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
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_d : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Micro|i2|contadorM50|Add0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~4_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~14_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~18_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~26_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~43\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~44_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~45\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~46_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~47\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~48_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~49\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~50_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|Equal0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~0_combout\ : std_logic;
SIGNAL \Micro|i1|Selector6~6_combout\ : std_logic;
SIGNAL \Micro|i1|Selector3~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador~5_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~17_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~18_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~19_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \enc_temp~combout\ : std_logic;
SIGNAL \puerta~combout\ : std_logic;
SIGNAL \Micro|i1|Selector6~5_combout\ : std_logic;
SIGNAL \p2~combout\ : std_logic;
SIGNAL \Detectorp2|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \Detectorp2|est_act.E1~regout\ : std_logic;
SIGNAL \Detectorp2|Selector2~0_combout\ : std_logic;
SIGNAL \Detectorp2|est_act.E2~regout\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \Detectorp1|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \Detectorp1|est_act.E1~regout\ : std_logic;
SIGNAL \Detectorp1|Selector2~0_combout\ : std_logic;
SIGNAL \Detectorp1|est_act.E2~regout\ : std_logic;
SIGNAL \Micro|i1|Selector6~4_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.carga_segundos~regout\ : std_logic;
SIGNAL \Micro|i1|Selector2~0_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.carga_minutos~regout\ : std_logic;
SIGNAL \Micro|i1|Selector0~0_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.reposo~regout\ : std_logic;
SIGNAL \Micro|i1|Selector6~2_combout\ : std_logic;
SIGNAL \Micro|i1|Selector6~3_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~7_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~1\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~3\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~5\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~7\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~8_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~9\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~11\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~12_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~16_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~13\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~15\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~16_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~5_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~10_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~6_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~6_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~7_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~14_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~17\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~19\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~20_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~21\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~22_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~23\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~24_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~15_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~25\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~27\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~28_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~13_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~29\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~30_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~12_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~31\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~32_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~33\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~34_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~11_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~35\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~36_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~37\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~38_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~10_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~39\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~40_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~21_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~41\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Add0~42_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|contador~20_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~3_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM50|Equal0~4_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|co~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador[1]~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador~3_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador~4_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|contador[0]~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6seg|co~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador[1]~6_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~8_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~4_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~5_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|Equal0~0_combout\ : std_logic;
SIGNAL \Micro|i1|Selector6~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|contador~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|contador[3]~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|Add0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|contador~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|Add0~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|contador~3_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|Add0~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|contador~4_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10sec|Equal0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador~3_combout\ : std_logic;
SIGNAL \Micro|i1|Selector3~0_combout\ : std_logic;
SIGNAL \Micro|i1|Selector6~7_combout\ : std_logic;
SIGNAL \Micro|i1|Selector3~2_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.encendido~regout\ : std_logic;
SIGNAL \Micro|i1|Selector6~0_combout\ : std_logic;
SIGNAL \Micro|i1|Selector5~0_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.findecuenta~regout\ : std_logic;
SIGNAL \Micro|i1|Selector6~8_combout\ : std_logic;
SIGNAL \Micro|i1|Selector4~0_combout\ : std_logic;
SIGNAL \Micro|i1|Selector4~1_combout\ : std_logic;
SIGNAL \Micro|i1|estado_act.puerta_abierta~regout\ : std_logic;
SIGNAL \Display1|Mux6~0_combout\ : std_logic;
SIGNAL \Display1|Mux5~0_combout\ : std_logic;
SIGNAL \Display1|Mux4~0_combout\ : std_logic;
SIGNAL \Display1|Mux3~0_combout\ : std_logic;
SIGNAL \Display1|Mux2~0_combout\ : std_logic;
SIGNAL \Display1|Mux1~0_combout\ : std_logic;
SIGNAL \Display1|Mux0~0_combout\ : std_logic;
SIGNAL \Display2|Mux6~0_combout\ : std_logic;
SIGNAL \Display2|Mux5~0_combout\ : std_logic;
SIGNAL \Display2|Mux4~0_combout\ : std_logic;
SIGNAL \Display2|Mux3~0_combout\ : std_logic;
SIGNAL \Display2|Mux2~0_combout\ : std_logic;
SIGNAL \Display2|Mux1~0_combout\ : std_logic;
SIGNAL \Display2|Mux0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|contador~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|contador[0]~1_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|contador~2_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|contador~3_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|Add0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM10min|contador~4_combout\ : std_logic;
SIGNAL \Display3|Mux6~0_combout\ : std_logic;
SIGNAL \Display3|Mux5~0_combout\ : std_logic;
SIGNAL \Display3|Mux4~0_combout\ : std_logic;
SIGNAL \Display3|Mux3~0_combout\ : std_logic;
SIGNAL \Display3|Mux2~0_combout\ : std_logic;
SIGNAL \Display3|Mux1~0_combout\ : std_logic;
SIGNAL \Display3|Mux0~0_combout\ : std_logic;
SIGNAL \Display4|Mux6~0_combout\ : std_logic;
SIGNAL \Display4|Mux5~0_combout\ : std_logic;
SIGNAL \Display4|Mux4~0_combout\ : std_logic;
SIGNAL \Display4|Mux3~0_combout\ : std_logic;
SIGNAL \Display4|Mux2~0_combout\ : std_logic;
SIGNAL \Display4|Mux1~0_combout\ : std_logic;
SIGNAL \Display4|Mux0~0_combout\ : std_logic;
SIGNAL \Micro|i2|contadorM6min|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Micro|i2|contadorM50|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Micro|i2|contadorM10sec|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Micro|i2|contadorM6seg|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ent_p~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Micro|i2|contadorM10min|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \Display4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Display2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux6~0_combout\ : std_logic;

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
d_a <= ww_d_a;
d_b <= ww_d_b;
d_c <= ww_d_c;
d_d <= ww_d_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\Display4|ALT_INV_Mux1~0_combout\ <= NOT \Display4|Mux1~0_combout\;
\Display3|ALT_INV_Mux6~0_combout\ <= NOT \Display3|Mux6~0_combout\;
\Display2|ALT_INV_Mux1~0_combout\ <= NOT \Display2|Mux1~0_combout\;
\Display1|ALT_INV_Mux6~0_combout\ <= NOT \Display1|Mux6~0_combout\;

-- Location: LCCOMB_X47_Y5_N6
\Micro|i2|contadorM50|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~0_combout\ = \Micro|i2|contadorM50|contador\(0) $ (VCC)
-- \Micro|i2|contadorM50|Add0~1\ = CARRY(\Micro|i2|contadorM50|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(0),
	datad => VCC,
	combout => \Micro|i2|contadorM50|Add0~0_combout\,
	cout => \Micro|i2|contadorM50|Add0~1\);

-- Location: LCCOMB_X47_Y5_N10
\Micro|i2|contadorM50|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~4_combout\ = (\Micro|i2|contadorM50|contador\(2) & (\Micro|i2|contadorM50|Add0~3\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(2) & (!\Micro|i2|contadorM50|Add0~3\ & VCC))
-- \Micro|i2|contadorM50|Add0~5\ = CARRY((\Micro|i2|contadorM50|contador\(2) & !\Micro|i2|contadorM50|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(2),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~3\,
	combout => \Micro|i2|contadorM50|Add0~4_combout\,
	cout => \Micro|i2|contadorM50|Add0~5\);

-- Location: LCCOMB_X47_Y5_N20
\Micro|i2|contadorM50|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~14_combout\ = (\Micro|i2|contadorM50|contador\(7) & (!\Micro|i2|contadorM50|Add0~13\)) # (!\Micro|i2|contadorM50|contador\(7) & ((\Micro|i2|contadorM50|Add0~13\) # (GND)))
-- \Micro|i2|contadorM50|Add0~15\ = CARRY((!\Micro|i2|contadorM50|Add0~13\) # (!\Micro|i2|contadorM50|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(7),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~13\,
	combout => \Micro|i2|contadorM50|Add0~14_combout\,
	cout => \Micro|i2|contadorM50|Add0~15\);

-- Location: LCCOMB_X47_Y5_N24
\Micro|i2|contadorM50|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~18_combout\ = (\Micro|i2|contadorM50|contador\(9) & (!\Micro|i2|contadorM50|Add0~17\)) # (!\Micro|i2|contadorM50|contador\(9) & ((\Micro|i2|contadorM50|Add0~17\) # (GND)))
-- \Micro|i2|contadorM50|Add0~19\ = CARRY((!\Micro|i2|contadorM50|Add0~17\) # (!\Micro|i2|contadorM50|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(9),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~17\,
	combout => \Micro|i2|contadorM50|Add0~18_combout\,
	cout => \Micro|i2|contadorM50|Add0~19\);

-- Location: LCCOMB_X47_Y4_N0
\Micro|i2|contadorM50|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~26_combout\ = (\Micro|i2|contadorM50|contador\(13) & (!\Micro|i2|contadorM50|Add0~25\)) # (!\Micro|i2|contadorM50|contador\(13) & ((\Micro|i2|contadorM50|Add0~25\) # (GND)))
-- \Micro|i2|contadorM50|Add0~27\ = CARRY((!\Micro|i2|contadorM50|Add0~25\) # (!\Micro|i2|contadorM50|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(13),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~25\,
	combout => \Micro|i2|contadorM50|Add0~26_combout\,
	cout => \Micro|i2|contadorM50|Add0~27\);

-- Location: LCCOMB_X47_Y4_N16
\Micro|i2|contadorM50|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~42_combout\ = (\Micro|i2|contadorM50|contador\(21) & (!\Micro|i2|contadorM50|Add0~41\)) # (!\Micro|i2|contadorM50|contador\(21) & ((\Micro|i2|contadorM50|Add0~41\) # (GND)))
-- \Micro|i2|contadorM50|Add0~43\ = CARRY((!\Micro|i2|contadorM50|Add0~41\) # (!\Micro|i2|contadorM50|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(21),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~41\,
	combout => \Micro|i2|contadorM50|Add0~42_combout\,
	cout => \Micro|i2|contadorM50|Add0~43\);

-- Location: LCCOMB_X47_Y4_N18
\Micro|i2|contadorM50|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~44_combout\ = (\Micro|i2|contadorM50|contador\(22) & (\Micro|i2|contadorM50|Add0~43\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(22) & (!\Micro|i2|contadorM50|Add0~43\ & VCC))
-- \Micro|i2|contadorM50|Add0~45\ = CARRY((\Micro|i2|contadorM50|contador\(22) & !\Micro|i2|contadorM50|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(22),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~43\,
	combout => \Micro|i2|contadorM50|Add0~44_combout\,
	cout => \Micro|i2|contadorM50|Add0~45\);

-- Location: LCCOMB_X47_Y4_N20
\Micro|i2|contadorM50|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~46_combout\ = (\Micro|i2|contadorM50|contador\(23) & (!\Micro|i2|contadorM50|Add0~45\)) # (!\Micro|i2|contadorM50|contador\(23) & ((\Micro|i2|contadorM50|Add0~45\) # (GND)))
-- \Micro|i2|contadorM50|Add0~47\ = CARRY((!\Micro|i2|contadorM50|Add0~45\) # (!\Micro|i2|contadorM50|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(23),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~45\,
	combout => \Micro|i2|contadorM50|Add0~46_combout\,
	cout => \Micro|i2|contadorM50|Add0~47\);

-- Location: LCCOMB_X47_Y4_N22
\Micro|i2|contadorM50|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~48_combout\ = (\Micro|i2|contadorM50|contador\(24) & (\Micro|i2|contadorM50|Add0~47\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(24) & (!\Micro|i2|contadorM50|Add0~47\ & VCC))
-- \Micro|i2|contadorM50|Add0~49\ = CARRY((\Micro|i2|contadorM50|contador\(24) & !\Micro|i2|contadorM50|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(24),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~47\,
	combout => \Micro|i2|contadorM50|Add0~48_combout\,
	cout => \Micro|i2|contadorM50|Add0~49\);

-- Location: LCCOMB_X47_Y4_N24
\Micro|i2|contadorM50|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~50_combout\ = \Micro|i2|contadorM50|Add0~49\ $ (\Micro|i2|contadorM50|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Micro|i2|contadorM50|contador\(25),
	cin => \Micro|i2|contadorM50|Add0~49\,
	combout => \Micro|i2|contadorM50|Add0~50_combout\);

-- Location: LCCOMB_X48_Y6_N16
\Micro|i2|contadorM10min|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|Equal0~0_combout\ = (\Micro|i2|contadorM10min|contador\(3) & (!\Micro|i2|contadorM10min|contador\(1) & (\Micro|i2|contadorM10min|contador\(0) & !\Micro|i2|contadorM10min|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(3),
	datab => \Micro|i2|contadorM10min|contador\(1),
	datac => \Micro|i2|contadorM10min|contador\(0),
	datad => \Micro|i2|contadorM10min|contador\(2),
	combout => \Micro|i2|contadorM10min|Equal0~0_combout\);

-- Location: LCFF_X48_Y5_N5
\Micro|i2|contadorM50|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~17_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(25));

-- Location: LCFF_X48_Y5_N3
\Micro|i2|contadorM50|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(23));

-- Location: LCFF_X48_Y5_N25
\Micro|i2|contadorM50|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~19_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(22));

-- Location: LCFF_X48_Y5_N7
\Micro|i2|contadorM50|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|Add0~48_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(24));

-- Location: LCCOMB_X48_Y5_N6
\Micro|i2|contadorM50|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~0_combout\ = (\Micro|i2|contadorM50|contador\(22) & (\Micro|i2|contadorM50|contador\(25) & (!\Micro|i2|contadorM50|contador\(24) & \Micro|i2|contadorM50|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(22),
	datab => \Micro|i2|contadorM50|contador\(25),
	datac => \Micro|i2|contadorM50|contador\(24),
	datad => \Micro|i2|contadorM50|contador\(23),
	combout => \Micro|i2|contadorM50|Equal0~0_combout\);

-- Location: LCFF_X47_Y5_N25
\Micro|i2|contadorM50|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(9));

-- Location: LCFF_X47_Y5_N11
\Micro|i2|contadorM50|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(2));

-- Location: LCFF_X47_Y5_N7
\Micro|i2|contadorM50|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(0));

-- Location: LCCOMB_X49_Y5_N16
\Micro|i1|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~6_combout\ = (\Detectorp2|est_act.E2~regout\ & (!\enc_temp~combout\ & \Micro|i1|estado_act.carga_segundos~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Detectorp2|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i1|Selector6~6_combout\);

-- Location: LCCOMB_X49_Y5_N12
\Micro|i1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector3~1_combout\ = (\Micro|i1|Selector6~8_combout\ & (\Micro|i1|Selector3~0_combout\ & ((\Micro|i1|Selector6~4_combout\) # (\Micro|i1|Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector6~4_combout\,
	datab => \Micro|i1|Selector6~8_combout\,
	datac => \Micro|i1|Selector6~3_combout\,
	datad => \Micro|i1|Selector3~0_combout\,
	combout => \Micro|i1|Selector3~1_combout\);

-- Location: LCCOMB_X47_Y6_N16
\Micro|i2|contadorM6seg|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador~5_combout\ = (\Micro|i2|contadorM6seg|contador\(0)) # ((\Micro|i2|contadorM6seg|contador\(1) & \Micro|i2|contadorM6seg|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Micro|i2|contadorM6seg|contador~5_combout\);

-- Location: LCCOMB_X48_Y5_N4
\Micro|i2|contadorM50|contador~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~17_combout\ = (\Micro|i2|contadorM50|Add0~50_combout\ & ((!\Micro|i2|contadorM50|Equal0~7_combout\) # (!\Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Add0~50_combout\,
	combout => \Micro|i2|contadorM50|contador~17_combout\);

-- Location: LCCOMB_X48_Y5_N2
\Micro|i2|contadorM50|contador~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~18_combout\ = (\Micro|i2|contadorM50|Add0~46_combout\ & ((!\Micro|i2|contadorM50|Equal0~7_combout\) # (!\Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Add0~46_combout\,
	combout => \Micro|i2|contadorM50|contador~18_combout\);

-- Location: LCCOMB_X48_Y5_N24
\Micro|i2|contadorM50|contador~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~19_combout\ = (\Micro|i2|contadorM50|Add0~44_combout\ & ((!\Micro|i2|contadorM50|Equal0~7_combout\) # (!\Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Add0~44_combout\,
	combout => \Micro|i2|contadorM50|contador~19_combout\);

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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y5_N8
\Micro|i1|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~5_combout\ = (\Micro|i1|estado_act.puerta_abierta~regout\ & (\enc_temp~combout\ & !\puerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|estado_act.puerta_abierta~regout\,
	datab => \enc_temp~combout\,
	datad => \puerta~combout\,
	combout => \Micro|i1|Selector6~5_combout\);

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y4_N22
\Detectorp2|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detectorp2|est_act.E1~feeder_combout\ = \p2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2~combout\,
	combout => \Detectorp2|est_act.E1~feeder_combout\);

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

-- Location: LCFF_X49_Y4_N23
\Detectorp2|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Detectorp2|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detectorp2|est_act.E1~regout\);

-- Location: LCCOMB_X49_Y4_N0
\Detectorp2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detectorp2|Selector2~0_combout\ = (\Detectorp2|est_act.E1~regout\ & !\p2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Detectorp2|est_act.E1~regout\,
	datad => \p2~combout\,
	combout => \Detectorp2|Selector2~0_combout\);

-- Location: LCFF_X49_Y4_N1
\Detectorp2|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Detectorp2|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detectorp2|est_act.E2~regout\);

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y4_N20
\Detectorp1|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detectorp1|est_act.E1~feeder_combout\ = \p1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\,
	combout => \Detectorp1|est_act.E1~feeder_combout\);

-- Location: LCFF_X49_Y4_N21
\Detectorp1|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Detectorp1|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detectorp1|est_act.E1~regout\);

-- Location: LCCOMB_X49_Y4_N26
\Detectorp1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detectorp1|Selector2~0_combout\ = (\Detectorp1|est_act.E1~regout\ & !\p1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Detectorp1|est_act.E1~regout\,
	datad => \p1~combout\,
	combout => \Detectorp1|Selector2~0_combout\);

-- Location: LCFF_X49_Y4_N27
\Detectorp1|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Detectorp1|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detectorp1|est_act.E2~regout\);

-- Location: LCCOMB_X49_Y5_N26
\Micro|i1|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~4_combout\ = (!\Micro|i1|estado_act.reposo~regout\ & (!\Detectorp2|est_act.E2~regout\ & (!\enc_temp~combout\ & \Detectorp1|est_act.E2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|estado_act.reposo~regout\,
	datab => \Detectorp2|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Detectorp1|est_act.E2~regout\,
	combout => \Micro|i1|Selector6~4_combout\);

-- Location: LCFF_X49_Y5_N27
\Micro|i1|estado_act.carga_segundos\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i1|Selector6~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.carga_segundos~regout\);

-- Location: LCCOMB_X49_Y5_N14
\Micro|i1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector2~0_combout\ = (!\Detectorp1|est_act.E2~regout\ & (\Detectorp2|est_act.E2~regout\ & (!\enc_temp~combout\ & \Micro|i1|estado_act.carga_segundos~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Detectorp1|est_act.E2~regout\,
	datab => \Detectorp2|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i1|Selector2~0_combout\);

-- Location: LCFF_X49_Y5_N15
\Micro|i1|estado_act.carga_minutos\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i1|Selector2~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.carga_minutos~regout\);

-- Location: LCCOMB_X49_Y4_N4
\Micro|i1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector0~0_combout\ = (((\enc_temp~combout\) # (!\Micro|i1|estado_act.carga_segundos~regout\)) # (!\Detectorp1|est_act.E2~regout\)) # (!\Detectorp2|est_act.E2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Detectorp2|est_act.E2~regout\,
	datab => \Detectorp1|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i1|Selector0~0_combout\);

-- Location: LCFF_X49_Y5_N9
\Micro|i1|estado_act.reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i1|Selector0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.reposo~regout\);

-- Location: LCCOMB_X49_Y5_N6
\Micro|i1|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~2_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\) # (!\Micro|i1|estado_act.reposo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Micro|i1|estado_act.carga_minutos~regout\,
	datad => \Micro|i1|estado_act.reposo~regout\,
	combout => \Micro|i1|Selector6~2_combout\);

-- Location: LCCOMB_X49_Y5_N20
\Micro|i1|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~3_combout\ = (!\Detectorp1|est_act.E2~regout\ & (!\Detectorp2|est_act.E2~regout\ & (\enc_temp~combout\ & \Micro|i1|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Detectorp1|est_act.E2~regout\,
	datab => \Detectorp2|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Micro|i1|Selector6~2_combout\,
	combout => \Micro|i1|Selector6~3_combout\);

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y6_N22
\Micro|i2|contadorM6min|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~7_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\ & (((!\ent_p~combout\(5))))) # (!\Micro|i1|estado_act.carga_minutos~regout\ & (\Micro|i2|contadorM6min|contador\(0) $ ((!\Micro|i2|contadorM6min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6min|contador\(0),
	datab => \Micro|i1|estado_act.carga_minutos~regout\,
	datac => \Micro|i2|contadorM6min|contador\(1),
	datad => \ent_p~combout\(5),
	combout => \Micro|i2|contadorM6min|contador~7_combout\);

-- Location: LCCOMB_X47_Y6_N14
\Micro|i2|contadorM6seg|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador~1_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\ & (((!\ent_p~combout\(5))))) # (!\Micro|i1|estado_act.carga_segundos~regout\ & (\Micro|i2|contadorM6seg|contador\(0) $ (((!\Micro|i2|contadorM6seg|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6seg|contador\(0),
	datab => \ent_p~combout\(5),
	datac => \Micro|i2|contadorM6seg|contador\(1),
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i2|contadorM6seg|contador~1_combout\);

-- Location: LCCOMB_X47_Y5_N8
\Micro|i2|contadorM50|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~2_combout\ = (\Micro|i2|contadorM50|contador\(1) & (!\Micro|i2|contadorM50|Add0~1\)) # (!\Micro|i2|contadorM50|contador\(1) & ((\Micro|i2|contadorM50|Add0~1\) # (GND)))
-- \Micro|i2|contadorM50|Add0~3\ = CARRY((!\Micro|i2|contadorM50|Add0~1\) # (!\Micro|i2|contadorM50|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(1),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~1\,
	combout => \Micro|i2|contadorM50|Add0~2_combout\,
	cout => \Micro|i2|contadorM50|Add0~3\);

-- Location: LCFF_X47_Y5_N9
\Micro|i2|contadorM50|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(1));

-- Location: LCCOMB_X47_Y5_N12
\Micro|i2|contadorM50|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~6_combout\ = (\Micro|i2|contadorM50|contador\(3) & (!\Micro|i2|contadorM50|Add0~5\)) # (!\Micro|i2|contadorM50|contador\(3) & ((\Micro|i2|contadorM50|Add0~5\) # (GND)))
-- \Micro|i2|contadorM50|Add0~7\ = CARRY((!\Micro|i2|contadorM50|Add0~5\) # (!\Micro|i2|contadorM50|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(3),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~5\,
	combout => \Micro|i2|contadorM50|Add0~6_combout\,
	cout => \Micro|i2|contadorM50|Add0~7\);

-- Location: LCCOMB_X47_Y5_N14
\Micro|i2|contadorM50|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~8_combout\ = (\Micro|i2|contadorM50|contador\(4) & (\Micro|i2|contadorM50|Add0~7\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(4) & (!\Micro|i2|contadorM50|Add0~7\ & VCC))
-- \Micro|i2|contadorM50|Add0~9\ = CARRY((\Micro|i2|contadorM50|contador\(4) & !\Micro|i2|contadorM50|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(4),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~7\,
	combout => \Micro|i2|contadorM50|Add0~8_combout\,
	cout => \Micro|i2|contadorM50|Add0~9\);

-- Location: LCFF_X47_Y5_N15
\Micro|i2|contadorM50|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(4));

-- Location: LCCOMB_X47_Y5_N16
\Micro|i2|contadorM50|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~10_combout\ = (\Micro|i2|contadorM50|contador\(5) & (!\Micro|i2|contadorM50|Add0~9\)) # (!\Micro|i2|contadorM50|contador\(5) & ((\Micro|i2|contadorM50|Add0~9\) # (GND)))
-- \Micro|i2|contadorM50|Add0~11\ = CARRY((!\Micro|i2|contadorM50|Add0~9\) # (!\Micro|i2|contadorM50|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(5),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~9\,
	combout => \Micro|i2|contadorM50|Add0~10_combout\,
	cout => \Micro|i2|contadorM50|Add0~11\);

-- Location: LCCOMB_X47_Y5_N18
\Micro|i2|contadorM50|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~12_combout\ = (\Micro|i2|contadorM50|contador\(6) & (\Micro|i2|contadorM50|Add0~11\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(6) & (!\Micro|i2|contadorM50|Add0~11\ & VCC))
-- \Micro|i2|contadorM50|Add0~13\ = CARRY((\Micro|i2|contadorM50|contador\(6) & !\Micro|i2|contadorM50|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(6),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~11\,
	combout => \Micro|i2|contadorM50|Add0~12_combout\,
	cout => \Micro|i2|contadorM50|Add0~13\);

-- Location: LCFF_X47_Y5_N19
\Micro|i2|contadorM50|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(6));

-- Location: LCCOMB_X48_Y5_N8
\Micro|i2|contadorM50|contador~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~16_combout\ = (\Micro|i2|contadorM50|Add0~14_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|Add0~14_combout\,
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~16_combout\);

-- Location: LCFF_X47_Y5_N1
\Micro|i2|contadorM50|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|contador~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(7));

-- Location: LCCOMB_X47_Y5_N22
\Micro|i2|contadorM50|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~16_combout\ = (\Micro|i2|contadorM50|contador\(8) & (\Micro|i2|contadorM50|Add0~15\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(8) & (!\Micro|i2|contadorM50|Add0~15\ & VCC))
-- \Micro|i2|contadorM50|Add0~17\ = CARRY((\Micro|i2|contadorM50|contador\(8) & !\Micro|i2|contadorM50|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(8),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~15\,
	combout => \Micro|i2|contadorM50|Add0~16_combout\,
	cout => \Micro|i2|contadorM50|Add0~17\);

-- Location: LCFF_X47_Y5_N23
\Micro|i2|contadorM50|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(8));

-- Location: LCCOMB_X47_Y5_N0
\Micro|i2|contadorM50|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~5_combout\ = (!\Micro|i2|contadorM50|contador\(9) & (\Micro|i2|contadorM50|contador\(6) & (!\Micro|i2|contadorM50|contador\(7) & !\Micro|i2|contadorM50|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(9),
	datab => \Micro|i2|contadorM50|contador\(6),
	datac => \Micro|i2|contadorM50|contador\(7),
	datad => \Micro|i2|contadorM50|contador\(8),
	combout => \Micro|i2|contadorM50|Equal0~5_combout\);

-- Location: LCFF_X47_Y5_N17
\Micro|i2|contadorM50|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(5));

-- Location: LCFF_X47_Y5_N13
\Micro|i2|contadorM50|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(3));

-- Location: LCCOMB_X47_Y5_N2
\Micro|i2|contadorM50|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~6_combout\ = (\Micro|i2|contadorM50|contador\(2) & (\Micro|i2|contadorM50|contador\(4) & (\Micro|i2|contadorM50|contador\(5) & \Micro|i2|contadorM50|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(2),
	datab => \Micro|i2|contadorM50|contador\(4),
	datac => \Micro|i2|contadorM50|contador\(5),
	datad => \Micro|i2|contadorM50|contador\(3),
	combout => \Micro|i2|contadorM50|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y5_N4
\Micro|i2|contadorM50|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~7_combout\ = (\Micro|i2|contadorM50|contador\(0) & (\Micro|i2|contadorM50|contador\(1) & (\Micro|i2|contadorM50|Equal0~5_combout\ & \Micro|i2|contadorM50|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(0),
	datab => \Micro|i2|contadorM50|contador\(1),
	datac => \Micro|i2|contadorM50|Equal0~5_combout\,
	datad => \Micro|i2|contadorM50|Equal0~6_combout\,
	combout => \Micro|i2|contadorM50|Equal0~7_combout\);

-- Location: LCCOMB_X48_Y5_N22
\Micro|i2|contadorM50|contador~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~14_combout\ = (\Micro|i2|contadorM50|Add0~26_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|Add0~26_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~14_combout\);

-- Location: LCFF_X48_Y5_N23
\Micro|i2|contadorM50|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(13));

-- Location: LCCOMB_X47_Y5_N26
\Micro|i2|contadorM50|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~20_combout\ = (\Micro|i2|contadorM50|contador\(10) & (\Micro|i2|contadorM50|Add0~19\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(10) & (!\Micro|i2|contadorM50|Add0~19\ & VCC))
-- \Micro|i2|contadorM50|Add0~21\ = CARRY((\Micro|i2|contadorM50|contador\(10) & !\Micro|i2|contadorM50|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(10),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~19\,
	combout => \Micro|i2|contadorM50|Add0~20_combout\,
	cout => \Micro|i2|contadorM50|Add0~21\);

-- Location: LCFF_X47_Y5_N27
\Micro|i2|contadorM50|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(10));

-- Location: LCCOMB_X47_Y5_N28
\Micro|i2|contadorM50|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~22_combout\ = (\Micro|i2|contadorM50|contador\(11) & (!\Micro|i2|contadorM50|Add0~21\)) # (!\Micro|i2|contadorM50|contador\(11) & ((\Micro|i2|contadorM50|Add0~21\) # (GND)))
-- \Micro|i2|contadorM50|Add0~23\ = CARRY((!\Micro|i2|contadorM50|Add0~21\) # (!\Micro|i2|contadorM50|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(11),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~21\,
	combout => \Micro|i2|contadorM50|Add0~22_combout\,
	cout => \Micro|i2|contadorM50|Add0~23\);

-- Location: LCFF_X47_Y5_N29
\Micro|i2|contadorM50|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|Add0~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(11));

-- Location: LCCOMB_X47_Y5_N30
\Micro|i2|contadorM50|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~24_combout\ = (\Micro|i2|contadorM50|contador\(12) & (\Micro|i2|contadorM50|Add0~23\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(12) & (!\Micro|i2|contadorM50|Add0~23\ & VCC))
-- \Micro|i2|contadorM50|Add0~25\ = CARRY((\Micro|i2|contadorM50|contador\(12) & !\Micro|i2|contadorM50|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(12),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~23\,
	combout => \Micro|i2|contadorM50|Add0~24_combout\,
	cout => \Micro|i2|contadorM50|Add0~25\);

-- Location: LCCOMB_X48_Y5_N12
\Micro|i2|contadorM50|contador~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~15_combout\ = (\Micro|i2|contadorM50|Add0~24_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datac => \Micro|i2|contadorM50|Add0~24_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~15_combout\);

-- Location: LCFF_X48_Y5_N13
\Micro|i2|contadorM50|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~15_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(12));

-- Location: LCCOMB_X47_Y4_N2
\Micro|i2|contadorM50|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~28_combout\ = (\Micro|i2|contadorM50|contador\(14) & (\Micro|i2|contadorM50|Add0~27\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(14) & (!\Micro|i2|contadorM50|Add0~27\ & VCC))
-- \Micro|i2|contadorM50|Add0~29\ = CARRY((\Micro|i2|contadorM50|contador\(14) & !\Micro|i2|contadorM50|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(14),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~27\,
	combout => \Micro|i2|contadorM50|Add0~28_combout\,
	cout => \Micro|i2|contadorM50|Add0~29\);

-- Location: LCCOMB_X47_Y4_N26
\Micro|i2|contadorM50|contador~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~13_combout\ = (\Micro|i2|contadorM50|Add0~28_combout\ & ((!\Micro|i2|contadorM50|Equal0~7_combout\) # (!\Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Add0~28_combout\,
	combout => \Micro|i2|contadorM50|contador~13_combout\);

-- Location: LCFF_X48_Y5_N27
\Micro|i2|contadorM50|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|contador~13_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(14));

-- Location: LCCOMB_X47_Y4_N4
\Micro|i2|contadorM50|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~30_combout\ = (\Micro|i2|contadorM50|contador\(15) & (!\Micro|i2|contadorM50|Add0~29\)) # (!\Micro|i2|contadorM50|contador\(15) & ((\Micro|i2|contadorM50|Add0~29\) # (GND)))
-- \Micro|i2|contadorM50|Add0~31\ = CARRY((!\Micro|i2|contadorM50|Add0~29\) # (!\Micro|i2|contadorM50|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(15),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~29\,
	combout => \Micro|i2|contadorM50|Add0~30_combout\,
	cout => \Micro|i2|contadorM50|Add0~31\);

-- Location: LCCOMB_X48_Y5_N20
\Micro|i2|contadorM50|contador~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~12_combout\ = (\Micro|i2|contadorM50|Add0~30_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Add0~30_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~12_combout\);

-- Location: LCFF_X48_Y5_N21
\Micro|i2|contadorM50|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(15));

-- Location: LCCOMB_X47_Y4_N6
\Micro|i2|contadorM50|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~32_combout\ = (\Micro|i2|contadorM50|contador\(16) & (\Micro|i2|contadorM50|Add0~31\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(16) & (!\Micro|i2|contadorM50|Add0~31\ & VCC))
-- \Micro|i2|contadorM50|Add0~33\ = CARRY((\Micro|i2|contadorM50|contador\(16) & !\Micro|i2|contadorM50|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(16),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~31\,
	combout => \Micro|i2|contadorM50|Add0~32_combout\,
	cout => \Micro|i2|contadorM50|Add0~33\);

-- Location: LCFF_X48_Y5_N9
\Micro|i2|contadorM50|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|Add0~32_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(16));

-- Location: LCCOMB_X48_Y5_N26
\Micro|i2|contadorM50|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~2_combout\ = (\Micro|i2|contadorM50|contador\(17) & (\Micro|i2|contadorM50|contador\(15) & (\Micro|i2|contadorM50|contador\(14) & !\Micro|i2|contadorM50|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(17),
	datab => \Micro|i2|contadorM50|contador\(15),
	datac => \Micro|i2|contadorM50|contador\(14),
	datad => \Micro|i2|contadorM50|contador\(16),
	combout => \Micro|i2|contadorM50|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y4_N8
\Micro|i2|contadorM50|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~34_combout\ = (\Micro|i2|contadorM50|contador\(17) & (!\Micro|i2|contadorM50|Add0~33\)) # (!\Micro|i2|contadorM50|contador\(17) & ((\Micro|i2|contadorM50|Add0~33\) # (GND)))
-- \Micro|i2|contadorM50|Add0~35\ = CARRY((!\Micro|i2|contadorM50|Add0~33\) # (!\Micro|i2|contadorM50|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(17),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~33\,
	combout => \Micro|i2|contadorM50|Add0~34_combout\,
	cout => \Micro|i2|contadorM50|Add0~35\);

-- Location: LCCOMB_X47_Y4_N28
\Micro|i2|contadorM50|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~11_combout\ = (\Micro|i2|contadorM50|Add0~34_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datac => \Micro|i2|contadorM50|Add0~34_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~11_combout\);

-- Location: LCFF_X48_Y5_N15
\Micro|i2|contadorM50|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|contador~11_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(17));

-- Location: LCCOMB_X47_Y4_N10
\Micro|i2|contadorM50|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~36_combout\ = (\Micro|i2|contadorM50|contador\(18) & (\Micro|i2|contadorM50|Add0~35\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(18) & (!\Micro|i2|contadorM50|Add0~35\ & VCC))
-- \Micro|i2|contadorM50|Add0~37\ = CARRY((\Micro|i2|contadorM50|contador\(18) & !\Micro|i2|contadorM50|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(18),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~35\,
	combout => \Micro|i2|contadorM50|Add0~36_combout\,
	cout => \Micro|i2|contadorM50|Add0~37\);

-- Location: LCFF_X48_Y5_N17
\Micro|i2|contadorM50|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Micro|i2|contadorM50|Add0~36_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(18));

-- Location: LCCOMB_X47_Y4_N12
\Micro|i2|contadorM50|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~38_combout\ = (\Micro|i2|contadorM50|contador\(19) & (!\Micro|i2|contadorM50|Add0~37\)) # (!\Micro|i2|contadorM50|contador\(19) & ((\Micro|i2|contadorM50|Add0~37\) # (GND)))
-- \Micro|i2|contadorM50|Add0~39\ = CARRY((!\Micro|i2|contadorM50|Add0~37\) # (!\Micro|i2|contadorM50|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(19),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~37\,
	combout => \Micro|i2|contadorM50|Add0~38_combout\,
	cout => \Micro|i2|contadorM50|Add0~39\);

-- Location: LCCOMB_X48_Y5_N10
\Micro|i2|contadorM50|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~10_combout\ = (\Micro|i2|contadorM50|Add0~38_combout\ & ((!\Micro|i2|contadorM50|Equal0~7_combout\) # (!\Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i2|contadorM50|Equal0~7_combout\,
	datad => \Micro|i2|contadorM50|Add0~38_combout\,
	combout => \Micro|i2|contadorM50|contador~10_combout\);

-- Location: LCFF_X48_Y5_N11
\Micro|i2|contadorM50|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(19));

-- Location: LCCOMB_X47_Y4_N14
\Micro|i2|contadorM50|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Add0~40_combout\ = (\Micro|i2|contadorM50|contador\(20) & (\Micro|i2|contadorM50|Add0~39\ $ (GND))) # (!\Micro|i2|contadorM50|contador\(20) & (!\Micro|i2|contadorM50|Add0~39\ & VCC))
-- \Micro|i2|contadorM50|Add0~41\ = CARRY((\Micro|i2|contadorM50|contador\(20) & !\Micro|i2|contadorM50|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|contador\(20),
	datad => VCC,
	cin => \Micro|i2|contadorM50|Add0~39\,
	combout => \Micro|i2|contadorM50|Add0~40_combout\,
	cout => \Micro|i2|contadorM50|Add0~41\);

-- Location: LCCOMB_X48_Y5_N28
\Micro|i2|contadorM50|contador~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~21_combout\ = (\Micro|i2|contadorM50|Add0~40_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datac => \Micro|i2|contadorM50|Add0~40_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~21_combout\);

-- Location: LCFF_X48_Y5_N29
\Micro|i2|contadorM50|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~21_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(20));

-- Location: LCCOMB_X47_Y4_N30
\Micro|i2|contadorM50|contador~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|contador~20_combout\ = (\Micro|i2|contadorM50|Add0~42_combout\ & ((!\Micro|i2|contadorM50|Equal0~4_combout\) # (!\Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datac => \Micro|i2|contadorM50|Add0~42_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM50|contador~20_combout\);

-- Location: LCFF_X47_Y4_N31
\Micro|i2|contadorM50|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM50|contador~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM50|contador\(21));

-- Location: LCCOMB_X48_Y5_N16
\Micro|i2|contadorM50|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~1_combout\ = (\Micro|i2|contadorM50|contador\(19) & (\Micro|i2|contadorM50|contador\(20) & (!\Micro|i2|contadorM50|contador\(18) & \Micro|i2|contadorM50|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(19),
	datab => \Micro|i2|contadorM50|contador\(20),
	datac => \Micro|i2|contadorM50|contador\(18),
	datad => \Micro|i2|contadorM50|contador\(21),
	combout => \Micro|i2|contadorM50|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y5_N30
\Micro|i2|contadorM50|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~3_combout\ = (\Micro|i2|contadorM50|contador\(12) & (\Micro|i2|contadorM50|contador\(13) & (!\Micro|i2|contadorM50|contador\(10) & !\Micro|i2|contadorM50|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|contador\(12),
	datab => \Micro|i2|contadorM50|contador\(13),
	datac => \Micro|i2|contadorM50|contador\(10),
	datad => \Micro|i2|contadorM50|contador\(11),
	combout => \Micro|i2|contadorM50|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y5_N0
\Micro|i2|contadorM50|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM50|Equal0~4_combout\ = (\Micro|i2|contadorM50|Equal0~0_combout\ & (\Micro|i2|contadorM50|Equal0~2_combout\ & (\Micro|i2|contadorM50|Equal0~1_combout\ & \Micro|i2|contadorM50|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|Equal0~0_combout\,
	datab => \Micro|i2|contadorM50|Equal0~2_combout\,
	datac => \Micro|i2|contadorM50|Equal0~1_combout\,
	datad => \Micro|i2|contadorM50|Equal0~3_combout\,
	combout => \Micro|i2|contadorM50|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y6_N12
\Micro|i2|contadorM10sec|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|co~0_combout\ = (\Micro|i2|contadorM10sec|Equal0~0_combout\ & (\Micro|i2|contadorM50|Equal0~4_combout\ & (\Micro|i1|estado_act.encendido~regout\ & \Micro|i2|contadorM50|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|Equal0~0_combout\,
	datab => \Micro|i2|contadorM50|Equal0~4_combout\,
	datac => \Micro|i1|estado_act.encendido~regout\,
	datad => \Micro|i2|contadorM50|Equal0~7_combout\,
	combout => \Micro|i2|contadorM10sec|co~0_combout\);

-- Location: LCCOMB_X48_Y6_N14
\Micro|i2|contadorM6seg|contador[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador[1]~2_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\) # (\Micro|i2|contadorM10sec|co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Micro|i1|estado_act.carga_segundos~regout\,
	datad => \Micro|i2|contadorM10sec|co~0_combout\,
	combout => \Micro|i2|contadorM6seg|contador[1]~2_combout\);

-- Location: LCFF_X47_Y6_N15
\Micro|i2|contadorM6seg|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6seg|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM6seg|contador[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6seg|contador\(1));

-- Location: LCCOMB_X47_Y6_N26
\Micro|i2|contadorM6seg|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador~3_combout\ = (!\Micro|i1|estado_act.carga_segundos~regout\ & (\Micro|i2|contadorM6seg|contador\(2) $ (((\Micro|i2|contadorM6seg|contador\(0)) # (!\Micro|i2|contadorM6seg|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6seg|contador\(0),
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i2|contadorM6seg|contador~3_combout\);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y6_N24
\Micro|i2|contadorM6seg|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador~4_combout\ = (!\Micro|i2|contadorM6seg|contador~3_combout\ & ((!\Micro|i1|estado_act.carga_segundos~regout\) # (!\ent_p~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador~3_combout\,
	datac => \ent_p~combout\(6),
	datad => \Micro|i1|estado_act.carga_segundos~regout\,
	combout => \Micro|i2|contadorM6seg|contador~4_combout\);

-- Location: LCFF_X47_Y6_N25
\Micro|i2|contadorM6seg|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6seg|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM6seg|contador[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6seg|contador\(2));

-- Location: LCCOMB_X47_Y6_N12
\Micro|i2|contadorM6seg|contador[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|contador[0]~0_combout\ = (\Micro|i2|contadorM10sec|co~0_combout\ & (!\Micro|i2|contadorM6seg|contador~5_combout\)) # (!\Micro|i2|contadorM10sec|co~0_combout\ & ((\Micro|i2|contadorM6seg|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6seg|contador~5_combout\,
	datab => \Micro|i2|contadorM10sec|co~0_combout\,
	datac => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Micro|i2|contadorM6seg|contador[0]~0_combout\);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X47_Y6_N13
\Micro|i2|contadorM6seg|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6seg|contador[0]~0_combout\,
	sdata => \ent_p~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \Micro|i1|estado_act.carga_segundos~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6seg|contador\(0));

-- Location: LCCOMB_X47_Y6_N4
\Micro|i2|contadorM6seg|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6seg|co~0_combout\ = (\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2) & !\Micro|i2|contadorM6seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Micro|i2|contadorM6seg|co~0_combout\);

-- Location: LCCOMB_X48_Y6_N10
\Micro|i2|contadorM6min|contador[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador[1]~6_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\) # ((\Micro|i2|contadorM10min|Equal0~0_combout\ & (\Micro|i2|contadorM6seg|co~0_combout\ & \Micro|i2|contadorM10sec|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|Equal0~0_combout\,
	datab => \Micro|i2|contadorM6seg|co~0_combout\,
	datac => \Micro|i1|estado_act.carga_minutos~regout\,
	datad => \Micro|i2|contadorM10sec|co~0_combout\,
	combout => \Micro|i2|contadorM6min|contador[1]~6_combout\);

-- Location: LCFF_X48_Y6_N23
\Micro|i2|contadorM6min|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6min|contador~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM6min|contador[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6min|contador\(1));

-- Location: LCCOMB_X49_Y6_N4
\Micro|i2|contadorM6min|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~8_combout\ = (\Micro|i2|contadorM6min|contador~3_combout\ & (!\Micro|i2|contadorM6min|contador\(0) & ((!\Micro|i2|contadorM6min|contador\(1)) # (!\Micro|i2|contadorM6min|contador\(2))))) # 
-- (!\Micro|i2|contadorM6min|contador~3_combout\ & (((\Micro|i2|contadorM6min|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6min|contador~3_combout\,
	datab => \Micro|i2|contadorM6min|contador\(2),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(1),
	combout => \Micro|i2|contadorM6min|contador~8_combout\);

-- Location: LCFF_X49_Y6_N5
\Micro|i2|contadorM6min|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6min|contador~8_combout\,
	sdata => \ent_p~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \Micro|i1|estado_act.carga_minutos~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6min|contador\(0));

-- Location: LCCOMB_X48_Y6_N28
\Micro|i2|contadorM6min|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~4_combout\ = (!\Micro|i1|estado_act.carga_minutos~regout\ & (\Micro|i2|contadorM6min|contador\(2) $ (((\Micro|i2|contadorM6min|contador\(0)) # (!\Micro|i2|contadorM6min|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM6min|contador\(2),
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i1|estado_act.carga_minutos~regout\,
	datad => \Micro|i2|contadorM6min|contador\(0),
	combout => \Micro|i2|contadorM6min|contador~4_combout\);

-- Location: LCCOMB_X48_Y6_N24
\Micro|i2|contadorM6min|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~5_combout\ = (!\Micro|i2|contadorM6min|contador~4_combout\ & ((!\ent_p~combout\(6)) # (!\Micro|i1|estado_act.carga_minutos~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i1|estado_act.carga_minutos~regout\,
	datac => \ent_p~combout\(6),
	datad => \Micro|i2|contadorM6min|contador~4_combout\,
	combout => \Micro|i2|contadorM6min|contador~5_combout\);

-- Location: LCFF_X48_Y6_N25
\Micro|i2|contadorM6min|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM6min|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM6min|contador[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM6min|contador\(2));

-- Location: LCCOMB_X48_Y6_N18
\Micro|i2|contadorM6min|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|Equal0~0_combout\ = (\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(2) & !\Micro|i2|contadorM6min|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(2),
	datad => \Micro|i2|contadorM6min|contador\(0),
	combout => \Micro|i2|contadorM6min|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y5_N28
\Micro|i1|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~1_combout\ = (\enc_temp~combout\ & (\Micro|i2|contadorM6min|Equal0~0_combout\ & \Micro|i1|estado_act.encendido~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enc_temp~combout\,
	datac => \Micro|i2|contadorM6min|Equal0~0_combout\,
	datad => \Micro|i1|estado_act.encendido~regout\,
	combout => \Micro|i1|Selector6~1_combout\);

-- Location: LCCOMB_X48_Y4_N0
\Micro|i2|contadorM10sec|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|contador~0_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\ & (!\ent_p~combout\(0))) # (!\Micro|i1|estado_act.carga_segundos~regout\ & ((!\Micro|i2|contadorM10sec|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_p~combout\(0),
	datab => \Micro|i1|estado_act.carga_segundos~regout\,
	datac => \Micro|i2|contadorM10sec|contador\(0),
	combout => \Micro|i2|contadorM10sec|contador~0_combout\);

-- Location: LCCOMB_X48_Y4_N8
\Micro|i2|contadorM10sec|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|contador[3]~1_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\) # ((\Micro|i2|contadorM50|Equal0~7_combout\ & (\Micro|i1|estado_act.encendido~regout\ & \Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM50|Equal0~7_combout\,
	datab => \Micro|i1|estado_act.encendido~regout\,
	datac => \Micro|i1|estado_act.carga_segundos~regout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM10sec|contador[3]~1_combout\);

-- Location: LCFF_X48_Y4_N1
\Micro|i2|contadorM10sec|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10sec|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10sec|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10sec|contador\(0));

-- Location: LCCOMB_X48_Y4_N14
\Micro|i2|contadorM10sec|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|Add0~0_combout\ = \Micro|i2|contadorM10sec|contador\(1) $ (!\Micro|i2|contadorM10sec|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(1),
	datad => \Micro|i2|contadorM10sec|contador\(0),
	combout => \Micro|i2|contadorM10sec|Add0~0_combout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y4_N10
\Micro|i2|contadorM10sec|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|contador~2_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\ & (((\ent_p~combout\(1))))) # (!\Micro|i1|estado_act.carga_segundos~regout\ & (!\Micro|i2|contadorM10sec|Equal0~0_combout\ & 
-- (!\Micro|i2|contadorM10sec|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|Equal0~0_combout\,
	datab => \Micro|i2|contadorM10sec|Add0~0_combout\,
	datac => \Micro|i1|estado_act.carga_segundos~regout\,
	datad => \ent_p~combout\(1),
	combout => \Micro|i2|contadorM10sec|contador~2_combout\);

-- Location: LCFF_X48_Y4_N11
\Micro|i2|contadorM10sec|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10sec|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10sec|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10sec|contador\(1));

-- Location: LCCOMB_X48_Y4_N4
\Micro|i2|contadorM10sec|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|Add0~1_combout\ = \Micro|i2|contadorM10sec|contador\(2) $ (((\Micro|i2|contadorM10sec|contador\(1)) # (!\Micro|i2|contadorM10sec|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datac => \Micro|i2|contadorM10sec|contador\(1),
	datad => \Micro|i2|contadorM10sec|contador\(0),
	combout => \Micro|i2|contadorM10sec|Add0~1_combout\);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y4_N16
\Micro|i2|contadorM10sec|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|contador~3_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\ & (((\ent_p~combout\(2))))) # (!\Micro|i1|estado_act.carga_segundos~regout\ & (!\Micro|i2|contadorM10sec|Equal0~0_combout\ & 
-- (!\Micro|i2|contadorM10sec|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|Equal0~0_combout\,
	datab => \Micro|i1|estado_act.carga_segundos~regout\,
	datac => \Micro|i2|contadorM10sec|Add0~1_combout\,
	datad => \ent_p~combout\(2),
	combout => \Micro|i2|contadorM10sec|contador~3_combout\);

-- Location: LCFF_X48_Y4_N17
\Micro|i2|contadorM10sec|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10sec|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10sec|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10sec|contador\(2));

-- Location: LCCOMB_X48_Y4_N26
\Micro|i2|contadorM10sec|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|Add0~2_combout\ = \Micro|i2|contadorM10sec|contador\(3) $ (((!\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(1) & \Micro|i2|contadorM10sec|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Micro|i2|contadorM10sec|Add0~2_combout\);

-- Location: LCCOMB_X48_Y4_N18
\Micro|i2|contadorM10sec|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|contador~4_combout\ = (\Micro|i1|estado_act.carga_segundos~regout\ & (!\ent_p~combout\(3))) # (!\Micro|i1|estado_act.carga_segundos~regout\ & ((\Micro|i2|contadorM10sec|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_p~combout\(3),
	datac => \Micro|i1|estado_act.carga_segundos~regout\,
	datad => \Micro|i2|contadorM10sec|Add0~2_combout\,
	combout => \Micro|i2|contadorM10sec|contador~4_combout\);

-- Location: LCFF_X48_Y4_N19
\Micro|i2|contadorM10sec|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10sec|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10sec|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10sec|contador\(3));

-- Location: LCCOMB_X48_Y4_N22
\Micro|i2|contadorM10sec|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10sec|Equal0~0_combout\ = (!\Micro|i2|contadorM10sec|contador\(1) & (\Micro|i2|contadorM10sec|contador\(0) & (!\Micro|i2|contadorM10sec|contador\(2) & \Micro|i2|contadorM10sec|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(1),
	datab => \Micro|i2|contadorM10sec|contador\(0),
	datac => \Micro|i2|contadorM10sec|contador\(2),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Micro|i2|contadorM10sec|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y5_N14
\Micro|i2|contadorM6min|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~2_combout\ = (\Micro|i1|estado_act.encendido~regout\ & (\Micro|i2|contadorM10sec|Equal0~0_combout\ & \Micro|i2|contadorM6seg|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|estado_act.encendido~regout\,
	datab => \Micro|i2|contadorM10sec|Equal0~0_combout\,
	datad => \Micro|i2|contadorM6seg|co~0_combout\,
	combout => \Micro|i2|contadorM6min|contador~2_combout\);

-- Location: LCCOMB_X48_Y5_N18
\Micro|i2|contadorM6min|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM6min|contador~3_combout\ = (\Micro|i2|contadorM10min|Equal0~0_combout\ & (\Micro|i2|contadorM50|Equal0~7_combout\ & (\Micro|i2|contadorM6min|contador~2_combout\ & \Micro|i2|contadorM50|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|Equal0~0_combout\,
	datab => \Micro|i2|contadorM50|Equal0~7_combout\,
	datac => \Micro|i2|contadorM6min|contador~2_combout\,
	datad => \Micro|i2|contadorM50|Equal0~4_combout\,
	combout => \Micro|i2|contadorM6min|contador~3_combout\);

-- Location: LCCOMB_X49_Y5_N2
\Micro|i1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector3~0_combout\ = (!\Micro|i1|Selector6~6_combout\ & (!\Micro|i1|Selector6~0_combout\ & ((!\Micro|i2|contadorM6min|contador~3_combout\) # (!\Micro|i1|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector6~6_combout\,
	datab => \Micro|i1|Selector6~0_combout\,
	datac => \Micro|i1|Selector6~1_combout\,
	datad => \Micro|i2|contadorM6min|contador~3_combout\,
	combout => \Micro|i1|Selector3~0_combout\);

-- Location: LCCOMB_X49_Y5_N0
\Micro|i1|Selector6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~7_combout\ = (\Micro|i1|Selector6~4_combout\) # ((\Micro|i1|Selector6~5_combout\) # ((\Micro|i1|Selector6~3_combout\) # (!\Micro|i1|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector6~4_combout\,
	datab => \Micro|i1|Selector6~5_combout\,
	datac => \Micro|i1|Selector6~3_combout\,
	datad => \Micro|i1|Selector3~0_combout\,
	combout => \Micro|i1|Selector6~7_combout\);

-- Location: LCCOMB_X49_Y5_N30
\Micro|i1|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector3~2_combout\ = (\Micro|i1|Selector3~1_combout\) # ((\Micro|i1|Selector6~5_combout\) # ((\Micro|i1|estado_act.encendido~regout\ & !\Micro|i1|Selector6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector3~1_combout\,
	datab => \Micro|i1|Selector6~5_combout\,
	datac => \Micro|i1|estado_act.encendido~regout\,
	datad => \Micro|i1|Selector6~7_combout\,
	combout => \Micro|i1|Selector3~2_combout\);

-- Location: LCFF_X49_Y5_N31
\Micro|i1|estado_act.encendido\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i1|Selector3~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.encendido~regout\);

-- Location: LCCOMB_X49_Y5_N22
\Micro|i1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~0_combout\ = (\puerta~combout\ & (\enc_temp~combout\ & \Micro|i1|estado_act.encendido~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datac => \enc_temp~combout\,
	datad => \Micro|i1|estado_act.encendido~regout\,
	combout => \Micro|i1|Selector6~0_combout\);

-- Location: LCCOMB_X49_Y5_N4
\Micro|i1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector5~0_combout\ = (!\puerta~combout\ & ((\Micro|i1|Selector6~0_combout\) # ((\Micro|i2|contadorM6min|contador~3_combout\ & \Micro|i1|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \Micro|i1|Selector6~0_combout\,
	datac => \Micro|i2|contadorM6min|contador~3_combout\,
	datad => \Micro|i1|Selector6~1_combout\,
	combout => \Micro|i1|Selector5~0_combout\);

-- Location: LCFF_X49_Y5_N5
\Micro|i1|estado_act.findecuenta\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i1|Selector5~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i1|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.findecuenta~regout\);

-- Location: LCCOMB_X49_Y5_N10
\Micro|i1|Selector6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector6~8_combout\ = (!\puerta~combout\ & (!\Detectorp2|est_act.E2~regout\ & (\enc_temp~combout\ & !\Detectorp1|est_act.E2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \Detectorp2|est_act.E2~regout\,
	datac => \enc_temp~combout\,
	datad => \Detectorp1|est_act.E2~regout\,
	combout => \Micro|i1|Selector6~8_combout\);

-- Location: LCCOMB_X49_Y5_N18
\Micro|i1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector4~0_combout\ = (\Micro|i1|Selector6~0_combout\) # ((!\Micro|i1|Selector6~4_combout\ & (!\Micro|i1|Selector6~8_combout\ & \Micro|i1|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector6~4_combout\,
	datab => \Micro|i1|Selector6~0_combout\,
	datac => \Micro|i1|Selector6~8_combout\,
	datad => \Micro|i1|Selector3~0_combout\,
	combout => \Micro|i1|Selector4~0_combout\);

-- Location: LCCOMB_X49_Y5_N24
\Micro|i1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i1|Selector4~1_combout\ = (\Micro|i1|Selector6~7_combout\ & (!\Micro|i1|Selector6~5_combout\ & ((\Micro|i1|Selector4~0_combout\)))) # (!\Micro|i1|Selector6~7_combout\ & (((\Micro|i1|estado_act.puerta_abierta~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i1|Selector6~5_combout\,
	datab => \Micro|i1|Selector6~7_combout\,
	datac => \Micro|i1|estado_act.puerta_abierta~regout\,
	datad => \Micro|i1|Selector4~0_combout\,
	combout => \Micro|i1|Selector4~1_combout\);

-- Location: LCFF_X49_Y5_N25
\Micro|i1|estado_act.puerta_abierta\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i1|Selector4~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i1|estado_act.puerta_abierta~regout\);

-- Location: LCCOMB_X48_Y4_N24
\Display1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux6~0_combout\ = (\Micro|i2|contadorM10sec|contador\(0) & ((\Micro|i2|contadorM10sec|contador\(1)) # (\Micro|i2|contadorM10sec|contador\(2) $ (!\Micro|i2|contadorM10sec|contador\(3))))) # (!\Micro|i2|contadorM10sec|contador\(0) & 
-- ((\Micro|i2|contadorM10sec|contador\(2) $ (\Micro|i2|contadorM10sec|contador\(1))) # (!\Micro|i2|contadorM10sec|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y4_N6
\Display1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux5~0_combout\ = (\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(0) & (\Micro|i2|contadorM10sec|contador\(1) $ (!\Micro|i2|contadorM10sec|contador\(3))))) # (!\Micro|i2|contadorM10sec|contador\(2) & 
-- (\Micro|i2|contadorM10sec|contador\(3) & ((\Micro|i2|contadorM10sec|contador\(1)) # (!\Micro|i2|contadorM10sec|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y4_N12
\Display1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux4~0_combout\ = (\Micro|i2|contadorM10sec|contador\(1) & (((!\Micro|i2|contadorM10sec|contador\(0) & \Micro|i2|contadorM10sec|contador\(3))))) # (!\Micro|i2|contadorM10sec|contador\(1) & ((\Micro|i2|contadorM10sec|contador\(2) & 
-- ((\Micro|i2|contadorM10sec|contador\(3)))) # (!\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y4_N2
\Display1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux3~0_combout\ = (\Micro|i2|contadorM10sec|contador\(0) & ((\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(1) & \Micro|i2|contadorM10sec|contador\(3))) # (!\Micro|i2|contadorM10sec|contador\(2) & 
-- (\Micro|i2|contadorM10sec|contador\(1) & !\Micro|i2|contadorM10sec|contador\(3))))) # (!\Micro|i2|contadorM10sec|contador\(0) & (\Micro|i2|contadorM10sec|contador\(2) $ ((!\Micro|i2|contadorM10sec|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y4_N28
\Display1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux2~0_combout\ = (\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(3) & ((\Micro|i2|contadorM10sec|contador\(1)) # (\Micro|i2|contadorM10sec|contador\(0))))) # (!\Micro|i2|contadorM10sec|contador\(2) & 
-- (\Micro|i2|contadorM10sec|contador\(1) & (\Micro|i2|contadorM10sec|contador\(0) & \Micro|i2|contadorM10sec|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y4_N30
\Display1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux1~0_combout\ = (\Micro|i2|contadorM10sec|contador\(1) & ((\Micro|i2|contadorM10sec|contador\(0) & (\Micro|i2|contadorM10sec|contador\(2))) # (!\Micro|i2|contadorM10sec|contador\(0) & ((!\Micro|i2|contadorM10sec|contador\(3)))))) # 
-- (!\Micro|i2|contadorM10sec|contador\(1) & (\Micro|i2|contadorM10sec|contador\(2) & (\Micro|i2|contadorM10sec|contador\(0) $ (\Micro|i2|contadorM10sec|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y4_N20
\Display1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux0~0_combout\ = (\Micro|i2|contadorM10sec|contador\(2) & (!\Micro|i2|contadorM10sec|contador\(1) & (\Micro|i2|contadorM10sec|contador\(0) $ (!\Micro|i2|contadorM10sec|contador\(3))))) # (!\Micro|i2|contadorM10sec|contador\(2) & 
-- (!\Micro|i2|contadorM10sec|contador\(0) & (\Micro|i2|contadorM10sec|contador\(1) $ (\Micro|i2|contadorM10sec|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10sec|contador\(2),
	datab => \Micro|i2|contadorM10sec|contador\(1),
	datac => \Micro|i2|contadorM10sec|contador\(0),
	datad => \Micro|i2|contadorM10sec|contador\(3),
	combout => \Display1|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y6_N18
\Display2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux6~0_combout\ = (\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2))) # (!\Micro|i2|contadorM6seg|contador\(1) & (!\Micro|i2|contadorM6seg|contador\(2) & \Micro|i2|contadorM6seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y6_N28
\Display2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux5~0_combout\ = (\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2) & \Micro|i2|contadorM6seg|contador\(0))) # (!\Micro|i2|contadorM6seg|contador\(1) & ((\Micro|i2|contadorM6seg|contador\(2)) # 
-- (\Micro|i2|contadorM6seg|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y6_N22
\Display2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux4~0_combout\ = (\Micro|i2|contadorM6seg|contador\(0)) # ((\Micro|i2|contadorM6seg|contador\(1) & !\Micro|i2|contadorM6seg|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y6_N8
\Display2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux3~0_combout\ = (\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2) $ (!\Micro|i2|contadorM6seg|contador\(0)))) # (!\Micro|i2|contadorM6seg|contador\(1) & (!\Micro|i2|contadorM6seg|contador\(2) & 
-- \Micro|i2|contadorM6seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y6_N10
\Display2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux2~0_combout\ = (!\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2) & !\Micro|i2|contadorM6seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y6_N20
\Display2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux1~0_combout\ = (\Micro|i2|contadorM6seg|contador\(2)) # (\Micro|i2|contadorM6seg|contador\(1) $ (\Micro|i2|contadorM6seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y6_N6
\Display2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux0~0_combout\ = (\Micro|i2|contadorM6seg|contador\(1) & (\Micro|i2|contadorM6seg|contador\(2) $ (!\Micro|i2|contadorM6seg|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|contador\(1),
	datac => \Micro|i2|contadorM6seg|contador\(2),
	datad => \Micro|i2|contadorM6seg|contador\(0),
	combout => \Display2|Mux0~0_combout\);

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y6_N8
\Micro|i2|contadorM10min|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|contador~0_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\ & ((!\ent_p~combout\(0)))) # (!\Micro|i1|estado_act.carga_minutos~regout\ & (!\Micro|i2|contadorM10min|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i1|estado_act.carga_minutos~regout\,
	datac => \Micro|i2|contadorM10min|contador\(0),
	datad => \ent_p~combout\(0),
	combout => \Micro|i2|contadorM10min|contador~0_combout\);

-- Location: LCCOMB_X48_Y6_N20
\Micro|i2|contadorM10min|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|contador[0]~1_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\) # ((\Micro|i2|contadorM6seg|co~0_combout\ & \Micro|i2|contadorM10sec|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6seg|co~0_combout\,
	datac => \Micro|i1|estado_act.carga_minutos~regout\,
	datad => \Micro|i2|contadorM10sec|co~0_combout\,
	combout => \Micro|i2|contadorM10min|contador[0]~1_combout\);

-- Location: LCFF_X48_Y6_N9
\Micro|i2|contadorM10min|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10min|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10min|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10min|contador\(0));

-- Location: LCCOMB_X48_Y6_N0
\Micro|i2|contadorM10min|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|contador~2_combout\ = (\Micro|i2|contadorM10min|contador\(0) & (!\Micro|i2|contadorM10min|contador\(1) & ((\Micro|i2|contadorM10min|contador\(2)) # (!\Micro|i2|contadorM10min|contador\(3))))) # 
-- (!\Micro|i2|contadorM10min|contador\(0) & (((\Micro|i2|contadorM10min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(3),
	datab => \Micro|i2|contadorM10min|contador\(0),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(2),
	combout => \Micro|i2|contadorM10min|contador~2_combout\);

-- Location: LCFF_X48_Y6_N1
\Micro|i2|contadorM10min|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10min|contador~2_combout\,
	sdata => \ent_p~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \Micro|i1|estado_act.carga_minutos~regout\,
	ena => \Micro|i2|contadorM10min|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10min|contador\(1));

-- Location: LCCOMB_X48_Y6_N30
\Micro|i2|contadorM10min|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|contador~3_combout\ = (\Micro|i2|contadorM10min|contador\(0) & ((\Micro|i2|contadorM10min|contador\(2) & ((\Micro|i2|contadorM10min|contador\(1)))) # (!\Micro|i2|contadorM10min|contador\(2) & 
-- (!\Micro|i2|contadorM10min|contador\(3) & !\Micro|i2|contadorM10min|contador\(1))))) # (!\Micro|i2|contadorM10min|contador\(0) & (((\Micro|i2|contadorM10min|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(3),
	datab => \Micro|i2|contadorM10min|contador\(0),
	datac => \Micro|i2|contadorM10min|contador\(2),
	datad => \Micro|i2|contadorM10min|contador\(1),
	combout => \Micro|i2|contadorM10min|contador~3_combout\);

-- Location: LCFF_X48_Y6_N31
\Micro|i2|contadorM10min|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10min|contador~3_combout\,
	sdata => \ent_p~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \Micro|i1|estado_act.carga_minutos~regout\,
	ena => \Micro|i2|contadorM10min|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10min|contador\(2));

-- Location: LCCOMB_X48_Y6_N2
\Micro|i2|contadorM10min|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|Add0~0_combout\ = \Micro|i2|contadorM10min|contador\(3) $ (((!\Micro|i2|contadorM10min|contador\(1) & (\Micro|i2|contadorM10min|contador\(0) & !\Micro|i2|contadorM10min|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(3),
	datab => \Micro|i2|contadorM10min|contador\(1),
	datac => \Micro|i2|contadorM10min|contador\(0),
	datad => \Micro|i2|contadorM10min|contador\(2),
	combout => \Micro|i2|contadorM10min|Add0~0_combout\);

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y6_N6
\Micro|i2|contadorM10min|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Micro|i2|contadorM10min|contador~4_combout\ = (\Micro|i1|estado_act.carga_minutos~regout\ & ((!\ent_p~combout\(3)))) # (!\Micro|i1|estado_act.carga_minutos~regout\ & (\Micro|i2|contadorM10min|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM10min|Add0~0_combout\,
	datac => \Micro|i1|estado_act.carga_minutos~regout\,
	datad => \ent_p~combout\(3),
	combout => \Micro|i2|contadorM10min|contador~4_combout\);

-- Location: LCFF_X48_Y6_N7
\Micro|i2|contadorM10min|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Micro|i2|contadorM10min|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Micro|i2|contadorM10min|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Micro|i2|contadorM10min|contador\(3));

-- Location: LCCOMB_X49_Y6_N22
\Display3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux6~0_combout\ = (\Micro|i2|contadorM10min|contador\(0) & ((\Micro|i2|contadorM10min|contador\(1)) # (\Micro|i2|contadorM10min|contador\(2) $ (!\Micro|i2|contadorM10min|contador\(3))))) # (!\Micro|i2|contadorM10min|contador\(0) & 
-- ((\Micro|i2|contadorM10min|contador\(2) $ (\Micro|i2|contadorM10min|contador\(1))) # (!\Micro|i2|contadorM10min|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y6_N8
\Display3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux5~0_combout\ = (\Micro|i2|contadorM10min|contador\(2) & (!\Micro|i2|contadorM10min|contador\(0) & (\Micro|i2|contadorM10min|contador\(3) $ (!\Micro|i2|contadorM10min|contador\(1))))) # (!\Micro|i2|contadorM10min|contador\(2) & 
-- (\Micro|i2|contadorM10min|contador\(3) & ((\Micro|i2|contadorM10min|contador\(1)) # (!\Micro|i2|contadorM10min|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y6_N6
\Display3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux4~0_combout\ = (\Micro|i2|contadorM10min|contador\(1) & (((\Micro|i2|contadorM10min|contador\(3) & !\Micro|i2|contadorM10min|contador\(0))))) # (!\Micro|i2|contadorM10min|contador\(1) & ((\Micro|i2|contadorM10min|contador\(2) & 
-- (\Micro|i2|contadorM10min|contador\(3))) # (!\Micro|i2|contadorM10min|contador\(2) & ((!\Micro|i2|contadorM10min|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y6_N16
\Display3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux3~0_combout\ = (\Micro|i2|contadorM10min|contador\(0) & ((\Micro|i2|contadorM10min|contador\(2) & (\Micro|i2|contadorM10min|contador\(3) & !\Micro|i2|contadorM10min|contador\(1))) # (!\Micro|i2|contadorM10min|contador\(2) & 
-- (!\Micro|i2|contadorM10min|contador\(3) & \Micro|i2|contadorM10min|contador\(1))))) # (!\Micro|i2|contadorM10min|contador\(0) & (\Micro|i2|contadorM10min|contador\(2) $ (((!\Micro|i2|contadorM10min|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y6_N26
\Display3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux2~0_combout\ = (\Micro|i2|contadorM10min|contador\(2) & (!\Micro|i2|contadorM10min|contador\(3) & ((\Micro|i2|contadorM10min|contador\(1)) # (\Micro|i2|contadorM10min|contador\(0))))) # (!\Micro|i2|contadorM10min|contador\(2) & 
-- (\Micro|i2|contadorM10min|contador\(3) & (\Micro|i2|contadorM10min|contador\(1) & \Micro|i2|contadorM10min|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y6_N24
\Display3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux1~0_combout\ = (\Micro|i2|contadorM10min|contador\(3) & (\Micro|i2|contadorM10min|contador\(2) & (\Micro|i2|contadorM10min|contador\(1) $ (!\Micro|i2|contadorM10min|contador\(0))))) # (!\Micro|i2|contadorM10min|contador\(3) & 
-- ((\Micro|i2|contadorM10min|contador\(0) & (\Micro|i2|contadorM10min|contador\(2))) # (!\Micro|i2|contadorM10min|contador\(0) & ((\Micro|i2|contadorM10min|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y6_N10
\Display3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux0~0_combout\ = (\Micro|i2|contadorM10min|contador\(2) & (!\Micro|i2|contadorM10min|contador\(1) & (\Micro|i2|contadorM10min|contador\(3) $ (!\Micro|i2|contadorM10min|contador\(0))))) # (!\Micro|i2|contadorM10min|contador\(2) & 
-- (!\Micro|i2|contadorM10min|contador\(0) & (\Micro|i2|contadorM10min|contador\(3) $ (\Micro|i2|contadorM10min|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Micro|i2|contadorM10min|contador\(2),
	datab => \Micro|i2|contadorM10min|contador\(3),
	datac => \Micro|i2|contadorM10min|contador\(1),
	datad => \Micro|i2|contadorM10min|contador\(0),
	combout => \Display3|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y6_N0
\Display4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux6~0_combout\ = (\Micro|i2|contadorM6min|contador\(1) & ((\Micro|i2|contadorM6min|contador\(2)))) # (!\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(0) & !\Micro|i2|contadorM6min|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y6_N30
\Display4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux5~0_combout\ = (\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(0) & \Micro|i2|contadorM6min|contador\(2))) # (!\Micro|i2|contadorM6min|contador\(1) & ((\Micro|i2|contadorM6min|contador\(0)) # 
-- (\Micro|i2|contadorM6min|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y6_N12
\Display4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux4~0_combout\ = (\Micro|i2|contadorM6min|contador\(0)) # ((\Micro|i2|contadorM6min|contador\(1) & !\Micro|i2|contadorM6min|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y6_N2
\Display4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux3~0_combout\ = (\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(0) $ (!\Micro|i2|contadorM6min|contador\(2)))) # (!\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(0) & 
-- !\Micro|i2|contadorM6min|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y6_N20
\Display4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux2~0_combout\ = (!\Micro|i2|contadorM6min|contador\(1) & (!\Micro|i2|contadorM6min|contador\(0) & \Micro|i2|contadorM6min|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y6_N14
\Display4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux1~0_combout\ = (\Micro|i2|contadorM6min|contador\(2)) # (\Micro|i2|contadorM6min|contador\(1) $ (\Micro|i2|contadorM6min|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y6_N28
\Display4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux0~0_combout\ = (\Micro|i2|contadorM6min|contador\(1) & (\Micro|i2|contadorM6min|contador\(0) $ (!\Micro|i2|contadorM6min|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Micro|i2|contadorM6min|contador\(1),
	datac => \Micro|i2|contadorM6min|contador\(0),
	datad => \Micro|i2|contadorM6min|contador\(2),
	combout => \Display4|Mux0~0_combout\);

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Micro|i1|estado_act.findecuenta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fin);

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Micro|i1|estado_act.encendido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_horno_on);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Micro|i1|estado_act.puerta_abierta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_abierta);

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[0]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[1]~I\ : cycloneii_io
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
	datain => \Display1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[2]~I\ : cycloneii_io
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
	datain => \Display1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[3]~I\ : cycloneii_io
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
	datain => \Display1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[4]~I\ : cycloneii_io
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
	datain => \Display1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[5]~I\ : cycloneii_io
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
	datain => \Display1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[6]~I\ : cycloneii_io
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
	datain => \Display1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[0]~I\ : cycloneii_io
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
	datain => \Display2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[1]~I\ : cycloneii_io
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
	datain => \Display2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[2]~I\ : cycloneii_io
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
	datain => \Display2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[3]~I\ : cycloneii_io
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
	datain => \Display2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[4]~I\ : cycloneii_io
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
	datain => \Display2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[5]~I\ : cycloneii_io
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
	datain => \Display2|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[6]~I\ : cycloneii_io
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
	datain => \Display2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[0]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(0));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[1]~I\ : cycloneii_io
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
	datain => \Display3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(1));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[2]~I\ : cycloneii_io
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
	datain => \Display3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(2));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[3]~I\ : cycloneii_io
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
	datain => \Display3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(3));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[4]~I\ : cycloneii_io
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
	datain => \Display3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(4));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[5]~I\ : cycloneii_io
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
	datain => \Display3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(5));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[6]~I\ : cycloneii_io
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
	datain => \Display3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(6));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[0]~I\ : cycloneii_io
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
	datain => \Display4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[1]~I\ : cycloneii_io
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
	datain => \Display4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(1));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[2]~I\ : cycloneii_io
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
	datain => \Display4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(2));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[3]~I\ : cycloneii_io
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
	datain => \Display4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(3));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[4]~I\ : cycloneii_io
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
	datain => \Display4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(4));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[5]~I\ : cycloneii_io
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
	datain => \Display4|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(5));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[6]~I\ : cycloneii_io
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
	datain => \Display4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(6));
END structure;


