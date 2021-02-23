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

-- DATE "02/23/2021 19:24:31"

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

ENTITY 	Pr5 IS
    PORT (
	An : IN std_logic_vector(4 DOWNTO 0);
	Bn : IN std_logic_vector(4 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	carry : OUT std_logic
	);
END Pr5;

-- Design Ports Information
-- disp1[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- carry	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- An[0]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bn[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- An[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bn[1]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- An[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bn[2]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- An[3]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bn[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- An[4]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bn[4]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Pr5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_An : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Bn : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carry : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~7_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_disp1|Mux6~0_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \i_disp1|Mux5~0_combout\ : std_logic;
SIGNAL \i_disp1|Mux4~0_combout\ : std_logic;
SIGNAL \i_disp1|Mux3~0_combout\ : std_logic;
SIGNAL \i_disp1|Mux2~0_combout\ : std_logic;
SIGNAL \i_disp1|Mux1~0_combout\ : std_logic;
SIGNAL \i_disp1|Mux0~0_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~5_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~6_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\ : std_logic;
SIGNAL \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_disp2|Mux5~0_combout\ : std_logic;
SIGNAL \i_disp2|Mux2~0_combout\ : std_logic;
SIGNAL \i_disp2|Mux2~1_combout\ : std_logic;
SIGNAL \Bn~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \An~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Sumador5Bits|i_CarryLookAhead|ALT_INV_c~6_combout\ : std_logic;
SIGNAL \i_disp1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_An <= An;
ww_Bn <= Bn;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
carry <= ww_carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i_Sumador5Bits|i_CarryLookAhead|ALT_INV_c~6_combout\ <= NOT \i_Sumador5Bits|i_CarryLookAhead|c~6_combout\;
\i_disp1|ALT_INV_Mux6~0_combout\ <= NOT \i_disp1|Mux6~0_combout\;

-- Location: LCCOMB_X48_Y20_N6
\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ = (\An~combout\(1) & ((\Bn~combout\(1)) # ((\Bn~combout\(0) & \An~combout\(0))))) # (!\An~combout\(1) & (\Bn~combout\(0) & (\Bn~combout\(1) & \An~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(1),
	datab => \Bn~combout\(0),
	datac => \Bn~combout\(1),
	datad => \An~combout\(0),
	combout => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X49_Y22_N12
\i_Sumador5Bits|i_CarryLookAhead|c~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~7_combout\ = (\An~combout\(3) & ((\Bn~combout\(3)) # ((\An~combout\(2) & \Bn~combout\(2))))) # (!\An~combout\(3) & (\An~combout\(2) & (\Bn~combout\(2) & \Bn~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(2),
	datab => \An~combout\(3),
	datac => \Bn~combout\(2),
	datad => \Bn~combout\(3),
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~7_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\An[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_An(1),
	combout => \An~combout\(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\An[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_An(3),
	combout => \An~combout\(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bn[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Bn(3),
	combout => \Bn~combout\(3));

-- Location: LCCOMB_X49_Y22_N0
\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\ = \An~combout\(3) $ (\Bn~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \An~combout\(3),
	datad => \Bn~combout\(3),
	combout => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\An[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_An(2),
	combout => \An~combout\(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bn[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Bn(2),
	combout => \Bn~combout\(2));

-- Location: LCCOMB_X48_Y20_N8
\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ = \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\ $ (((\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ & ((\An~combout\(2)) # (\Bn~combout\(2)))) # 
-- (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ & (\An~combout\(2) & \Bn~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	datab => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\,
	datac => \An~combout\(2),
	datad => \Bn~combout\(2),
	combout => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bn[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Bn(0),
	combout => \Bn~combout\(0));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bn[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Bn(1),
	combout => \Bn~combout\(1));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\An[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_An(0),
	combout => \An~combout\(0));

-- Location: LCCOMB_X48_Y20_N24
\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ = \An~combout\(1) $ (\Bn~combout\(1) $ (((\Bn~combout\(0) & \An~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(1),
	datab => \Bn~combout\(0),
	datac => \Bn~combout\(1),
	datad => \An~combout\(0),
	combout => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X48_Y20_N26
\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0_combout\ = (\An~combout\(1) & ((\Bn~combout\(1)) # ((\Bn~combout\(0) & \An~combout\(0))))) # (!\An~combout\(1) & (\Bn~combout\(0) & (\Bn~combout\(1) & \An~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(1),
	datab => \Bn~combout\(0),
	datac => \Bn~combout\(1),
	datad => \An~combout\(0),
	combout => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X48_Y20_N12
\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ = \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0_combout\ $ (\An~combout\(2) $ (\Bn~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datac => \An~combout\(2),
	datad => \Bn~combout\(2),
	combout => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X48_Y20_N2
\i_disp1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux6~0_combout\ = (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\) # (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ $ (\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datac => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y20_N28
\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ = \Bn~combout\(0) $ (\An~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bn~combout\(0),
	datad => \An~combout\(0),
	combout => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X48_Y20_N22
\i_disp1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux5~0_combout\ = (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & (\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ $ (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\)))) # 
-- (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & (!\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\) # (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y20_N16
\i_disp1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux4~0_combout\ = (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & (!\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\))) # (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & 
-- ((\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & (!\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\)) # (!\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y20_N18
\i_disp1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux3~0_combout\ = (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & ((\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & ((\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))) # (!\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & 
-- (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & !\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\)))) # (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & (!\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & 
-- (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ $ (\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y20_N20
\i_disp1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux2~0_combout\ = (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & ((\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))) # (!\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & 
-- (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & !\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\)))) # (!\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & (((\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & 
-- \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y20_N14
\i_disp1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux1~0_combout\ = (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\)) # (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ & 
-- ((\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\))))) # (!\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ & (\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\) # 
-- (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y20_N0
\i_disp1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp1|Mux0~0_combout\ = (\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ $ (\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\ $ (!\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\)))) # 
-- (!\i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\ & (\i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & (\i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ $ (!\i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datab => \i_Sumador5Bits|GenSum:0:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	datad => \i_Sumador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp1|Mux0~0_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bn[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Bn(4),
	combout => \Bn~combout\(4));

-- Location: LCCOMB_X49_Y22_N24
\i_Sumador5Bits|i_CarryLookAhead|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~5_combout\ = (\An~combout\(2) & (!\Bn~combout\(2) & (\An~combout\(3) $ (\Bn~combout\(3))))) # (!\An~combout\(2) & (\Bn~combout\(2) & (\An~combout\(3) $ (\Bn~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(2),
	datab => \An~combout\(3),
	datac => \Bn~combout\(2),
	datad => \Bn~combout\(3),
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~5_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\An[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_An(4),
	combout => \An~combout\(4));

-- Location: LCCOMB_X49_Y22_N6
\i_Sumador5Bits|i_CarryLookAhead|c~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\ = (\i_Sumador5Bits|i_CarryLookAhead|c~4_combout\ & (\i_Sumador5Bits|i_CarryLookAhead|c~5_combout\ & (\Bn~combout\(4) $ (\An~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\,
	datab => \Bn~combout\(4),
	datac => \i_Sumador5Bits|i_CarryLookAhead|c~5_combout\,
	datad => \An~combout\(4),
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\);

-- Location: LCCOMB_X49_Y22_N26
\i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\ = \An~combout\(4) $ (\Bn~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(4),
	datac => \Bn~combout\(4),
	combout => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\);

-- Location: LCCOMB_X49_Y22_N28
\i_Sumador5Bits|i_CarryLookAhead|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\ = (\An~combout\(2) & (\i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\ & (\Bn~combout\(2) & \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(2),
	datab => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\,
	datac => \Bn~combout\(2),
	datad => \i_Sumador5Bits|GenSum:3:i_Sumador1Bit|p_i~combout\,
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\);

-- Location: LCCOMB_X49_Y22_N30
\i_Sumador5Bits|i_CarryLookAhead|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\ = (\An~combout\(4) & ((\Bn~combout\(4)) # ((\An~combout\(3) & \Bn~combout\(3))))) # (!\An~combout\(4) & (\Bn~combout\(4) & (\An~combout\(3) & \Bn~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(4),
	datab => \Bn~combout\(4),
	datac => \An~combout\(3),
	datad => \Bn~combout\(3),
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\);

-- Location: LCCOMB_X49_Y22_N2
\i_Sumador5Bits|i_CarryLookAhead|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~6_combout\ = (\i_Sumador5Bits|i_CarryLookAhead|c~8_combout\) # ((\i_Sumador5Bits|i_CarryLookAhead|c~2_combout\) # (\i_Sumador5Bits|i_CarryLookAhead|c~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\,
	datab => \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\,
	datad => \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\,
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~6_combout\);

-- Location: LCCOMB_X48_Y20_N10
\i_Sumador5Bits|i_CarryLookAhead|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\ = (\An~combout\(1) & ((\Bn~combout\(1)) # ((\Bn~combout\(0) & \An~combout\(0))))) # (!\An~combout\(1) & (\Bn~combout\(0) & (\Bn~combout\(1) & \An~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An~combout\(1),
	datab => \Bn~combout\(0),
	datac => \Bn~combout\(1),
	datad => \An~combout\(0),
	combout => \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\);

-- Location: LCCOMB_X49_Y22_N22
\i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ = \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\ $ (((\i_Sumador5Bits|i_CarryLookAhead|c~7_combout\) # ((\i_Sumador5Bits|i_CarryLookAhead|c~5_combout\ & 
-- \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~7_combout\,
	datab => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|p_i~combout\,
	datac => \i_Sumador5Bits|i_CarryLookAhead|c~5_combout\,
	datad => \i_Sumador5Bits|i_CarryLookAhead|c~4_combout\,
	combout => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X49_Y22_N16
\i_disp2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp2|Mux5~0_combout\ = (\i_Sumador5Bits|i_CarryLookAhead|c~8_combout\) # ((\i_Sumador5Bits|i_CarryLookAhead|c~3_combout\) # ((\i_Sumador5Bits|i_CarryLookAhead|c~2_combout\) # (\i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\,
	datab => \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\,
	datac => \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\,
	datad => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp2|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y22_N18
\i_disp2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp2|Mux2~0_combout\ = (!\i_Sumador5Bits|i_CarryLookAhead|c~8_combout\ & (!\i_Sumador5Bits|i_CarryLookAhead|c~3_combout\ & (!\i_Sumador5Bits|i_CarryLookAhead|c~2_combout\ & \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\,
	datab => \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\,
	datac => \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\,
	datad => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp2|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y22_N20
\i_disp2|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_disp2|Mux2~1_combout\ = (!\i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ & ((\i_Sumador5Bits|i_CarryLookAhead|c~8_combout\) # ((\i_Sumador5Bits|i_CarryLookAhead|c~3_combout\) # (\i_Sumador5Bits|i_CarryLookAhead|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Sumador5Bits|i_CarryLookAhead|c~8_combout\,
	datab => \i_Sumador5Bits|i_CarryLookAhead|c~3_combout\,
	datac => \i_Sumador5Bits|i_CarryLookAhead|c~2_combout\,
	datad => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\,
	combout => \i_disp2|Mux2~1_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_Sumador5Bits|i_CarryLookAhead|ALT_INV_c~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_Sumador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp2|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_disp2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carry~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \i_Sumador5Bits|i_CarryLookAhead|c~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carry);
END structure;


