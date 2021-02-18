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

-- DATE "02/18/2021 17:26:15"

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

ENTITY 	pr4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	Abigger : OUT std_logic;
	Asmaller : OUT std_logic;
	Aequal : OUT std_logic;
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0)
	);
END pr4;

-- Design Ports Information
-- Abigger	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Asmaller	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Aequal	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[0]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pr4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Abigger : std_logic;
SIGNAL ww_Asmaller : std_logic;
SIGNAL ww_Aequal : std_logic;
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL \i1|LessThan0~0_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|LessThan0~1_combout\ : std_logic;
SIGNAL \i1|LessThan0~2_combout\ : std_logic;
SIGNAL \i1|LessThan1~0_combout\ : std_logic;
SIGNAL \i1|LessThan1~1_combout\ : std_logic;
SIGNAL \i1|LessThan1~2_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
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
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
Abigger <= ww_Abigger;
Asmaller <= ww_Asmaller;
Aequal <= ww_Aequal;
d_a <= ww_d_a;
d_b <= ww_d_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i3|ALT_INV_Mux6~0_combout\ <= NOT \i3|Mux6~0_combout\;
\i2|ALT_INV_Mux6~0_combout\ <= NOT \i2|Mux6~0_combout\;

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y12_N0
\i1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~0_combout\ = (\a~combout\(3) & (((!\b~combout\(2) & \a~combout\(2))) # (!\b~combout\(3)))) # (!\a~combout\(3) & (!\b~combout\(2) & (!\b~combout\(3) & \a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	combout => \i1|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y12_N4
\i1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (\b~combout\(2) & (\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3))))) # (!\b~combout\(2) & (!\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	combout => \i1|Equal0~0_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y12_N2
\i1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~1_combout\ = (\b~combout\(1) & (\a~combout\(0) & (!\b~combout\(0) & \a~combout\(1)))) # (!\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & !\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \i1|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y12_N22
\i1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan0~2_combout\ = (\i1|LessThan0~0_combout\) # ((\i1|Equal0~0_combout\ & \i1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|LessThan0~0_combout\,
	datac => \i1|Equal0~0_combout\,
	datad => \i1|LessThan0~1_combout\,
	combout => \i1|LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y12_N24
\i1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~0_combout\ = (\a~combout\(3) & (\b~combout\(2) & (\b~combout\(3) & !\a~combout\(2)))) # (!\a~combout\(3) & ((\b~combout\(3)) # ((\b~combout\(2) & !\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \a~combout\(2),
	combout => \i1|LessThan1~0_combout\);

-- Location: LCCOMB_X7_Y12_N10
\i1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~1_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(0) & (\b~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \i1|LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y12_N12
\i1|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|LessThan1~2_combout\ = (\i1|LessThan1~0_combout\) # ((\i1|Equal0~0_combout\ & \i1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~0_combout\,
	datac => \i1|LessThan1~0_combout\,
	datad => \i1|LessThan1~1_combout\,
	combout => \i1|LessThan1~2_combout\);

-- Location: LCCOMB_X7_Y12_N30
\i1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (\a~combout\(0) & (\b~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1))))) # (!\a~combout\(0) & (!\b~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \i1|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y12_N16
\i1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = (\i1|Equal0~1_combout\ & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~1_combout\,
	datac => \i1|Equal0~0_combout\,
	combout => \i1|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y12_N18
\i2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\a~combout\(1)) # (\a~combout\(3) $ (\a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \a~combout\(3),
	datad => \a~combout\(2),
	combout => \i2|Mux6~0_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y12_N20
\i2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\a~combout\(3) & (\a~combout\(2) & (\a~combout\(1) $ (\a~combout\(0))))) # (!\a~combout\(3) & (!\a~combout\(2) & ((\a~combout\(1)) # (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y12_N14
\i2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\a~combout\(3) & (!\a~combout\(1) & (\a~combout\(0)))) # (!\a~combout\(3) & ((\a~combout\(2) & (!\a~combout\(1))) # (!\a~combout\(2) & ((\a~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y12_N8
\i2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\a~combout\(3) & ((\a~combout\(0) & ((\a~combout\(2)))) # (!\a~combout\(0) & (\a~combout\(1) & !\a~combout\(2))))) # (!\a~combout\(3) & (!\a~combout\(1) & (\a~combout\(0) $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y12_N26
\i2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\a~combout\(1) & ((\a~combout\(0) & ((\a~combout\(2)))) # (!\a~combout\(0) & (!\a~combout\(3) & !\a~combout\(2))))) # (!\a~combout\(1) & (\a~combout\(3) & ((\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y12_N28
\i2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\a~combout\(1) & ((\a~combout\(3) & (\a~combout\(0))) # (!\a~combout\(3) & ((\a~combout\(2)))))) # (!\a~combout\(1) & (\a~combout\(2) & ((\a~combout\(3)) # (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y12_N6
\i2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\a~combout\(0) & (\a~combout\(1) $ (\a~combout\(3) $ (!\a~combout\(2))))) # (!\a~combout\(0) & (\a~combout\(2) & (\a~combout\(1) $ (!\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(3),
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \i2|Mux0~0_combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y23_N16
\i3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux6~0_combout\ = (\b~combout\(1)) # (\b~combout\(3) $ (\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y23_N2
\i3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux5~0_combout\ = (\b~combout\(3) & (\b~combout\(2) & (\b~combout\(1) $ (\b~combout\(0))))) # (!\b~combout\(3) & (!\b~combout\(2) & ((\b~combout\(1)) # (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y23_N4
\i3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux4~0_combout\ = (\b~combout\(3) & (!\b~combout\(1) & (\b~combout\(0)))) # (!\b~combout\(3) & ((\b~combout\(2) & (!\b~combout\(1))) # (!\b~combout\(2) & ((\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y23_N22
\i3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux3~0_combout\ = (\b~combout\(3) & ((\b~combout\(0) & ((\b~combout\(2)))) # (!\b~combout\(0) & (\b~combout\(1) & !\b~combout\(2))))) # (!\b~combout\(3) & (!\b~combout\(1) & (\b~combout\(0) $ (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y23_N24
\i3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux2~0_combout\ = (\b~combout\(1) & ((\b~combout\(0) & ((\b~combout\(2)))) # (!\b~combout\(0) & (!\b~combout\(3) & !\b~combout\(2))))) # (!\b~combout\(1) & (((\b~combout\(3) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y23_N10
\i3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux1~0_combout\ = (\b~combout\(1) & ((\b~combout\(3) & (\b~combout\(0))) # (!\b~combout\(3) & ((\b~combout\(2)))))) # (!\b~combout\(1) & (\b~combout\(2) & ((\b~combout\(0)) # (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y23_N20
\i3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\b~combout\(0) & (\b~combout\(1) $ (\b~combout\(3) $ (!\b~combout\(2))))) # (!\b~combout\(0) & (\b~combout\(2) & (\b~combout\(1) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \i3|Mux0~0_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Abigger~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \i1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Abigger);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Asmaller~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \i1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Asmaller);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Aequal~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \i1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Aequal);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));
END structure;


