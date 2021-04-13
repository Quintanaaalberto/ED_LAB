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

-- DATE "04/13/2021 18:34:47"

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

ENTITY 	Password IS
    PORT (
	clk : IN std_logic;
	p0 : IN std_logic;
	p1 : IN std_logic;
	reset : IN std_logic;
	led_R : OUT std_logic;
	led_G : OUT std_logic
	);
END Password;

-- Design Ports Information
-- led_R	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_G	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p0	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Password IS
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
SIGNAL ww_p0 : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led_R : std_logic;
SIGNAL ww_led_G : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \currentState.standby~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \FlancoP1|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \FlancoP1|est_act.E1~regout\ : std_logic;
SIGNAL \FlancoP1|Selector2~0_combout\ : std_logic;
SIGNAL \FlancoP1|est_act.E2~regout\ : std_logic;
SIGNAL \p0~combout\ : std_logic;
SIGNAL \FlancoP0|est_act.E1~feeder_combout\ : std_logic;
SIGNAL \FlancoP0|est_act.E1~regout\ : std_logic;
SIGNAL \FlancoP0|Selector2~0_combout\ : std_logic;
SIGNAL \FlancoP0|est_act.E2~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \currentState.correct1~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \currentState.correct2~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \currentState.correct3~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \currentState.success~regout\ : std_logic;
SIGNAL \ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_currentState.success~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_p0 <= p0;
ww_p1 <= p1;
ww_reset <= reset;
led_R <= ww_led_R;
led_G <= ww_led_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~clkctrl_outclk\ <= NOT \reset~clkctrl_outclk\;
\ALT_INV_currentState.success~regout\ <= NOT \currentState.success~regout\;

-- Location: LCFF_X1_Y22_N7
\currentState.standby\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~2_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.standby~regout\);

-- Location: LCCOMB_X1_Y22_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\currentState.correct3~regout\) # ((\currentState.success~regout\ & \FlancoP0|est_act.E2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currentState.success~regout\,
	datac => \FlancoP0|est_act.E2~regout\,
	datad => \currentState.correct3~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y22_N30
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\FlancoP0|est_act.E2~regout\ & ((\currentState.correct1~regout\ & ((\FlancoP1|est_act.E2~regout\))) # (!\currentState.correct1~regout\ & ((\currentState.correct2~regout\) # (!\FlancoP1|est_act.E2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \currentState.correct2~regout\,
	datac => \currentState.correct1~regout\,
	datad => \FlancoP1|est_act.E2~regout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X1_Y22_N6
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\ & (((!\FlancoP1|est_act.E2~regout\)))) # (!\Selector0~1_combout\ & (\currentState.standby~regout\ & ((!\FlancoP1|est_act.E2~regout\) # (!\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \FlancoP1|est_act.E2~regout\,
	datac => \currentState.standby~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y22_N0
\FlancoP1|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FlancoP1|est_act.E1~feeder_combout\ = \p1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\,
	combout => \FlancoP1|est_act.E1~feeder_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X1_Y22_N1
\FlancoP1|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FlancoP1|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FlancoP1|est_act.E1~regout\);

-- Location: LCCOMB_X1_Y22_N18
\FlancoP1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FlancoP1|Selector2~0_combout\ = (!\p1~combout\ & \FlancoP1|est_act.E1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~combout\,
	datac => \FlancoP1|est_act.E1~regout\,
	combout => \FlancoP1|Selector2~0_combout\);

-- Location: LCFF_X1_Y22_N19
\FlancoP1|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FlancoP1|Selector2~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FlancoP1|est_act.E2~regout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p0~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p0,
	combout => \p0~combout\);

-- Location: LCCOMB_X1_Y22_N26
\FlancoP0|est_act.E1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FlancoP0|est_act.E1~feeder_combout\ = \p0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p0~combout\,
	combout => \FlancoP0|est_act.E1~feeder_combout\);

-- Location: LCFF_X1_Y22_N27
\FlancoP0|est_act.E1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FlancoP0|est_act.E1~feeder_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FlancoP0|est_act.E1~regout\);

-- Location: LCCOMB_X1_Y22_N20
\FlancoP0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FlancoP0|Selector2~0_combout\ = (!\p0~combout\ & \FlancoP0|est_act.E1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~combout\,
	datad => \FlancoP0|est_act.E1~regout\,
	combout => \FlancoP0|Selector2~0_combout\);

-- Location: LCFF_X1_Y22_N21
\FlancoP0|est_act.E2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FlancoP0|Selector2~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FlancoP0|est_act.E2~regout\);

-- Location: LCCOMB_X1_Y22_N4
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\currentState.standby~regout\ & (!\currentState.success~regout\ & ((\FlancoP0|est_act.E2~regout\) # (!\currentState.correct2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.standby~regout\,
	datab => \currentState.success~regout\,
	datac => \FlancoP0|est_act.E2~regout\,
	datad => \currentState.correct2~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y22_N22
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\currentState.success~regout\) # ((!\currentState.correct3~regout\ & ((\currentState.correct2~regout\) # (!\currentState.standby~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.standby~regout\,
	datab => \currentState.success~regout\,
	datac => \currentState.correct2~regout\,
	datad => \currentState.correct3~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X1_Y22_N28
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\FlancoP0|est_act.E2~regout\ & ((\Selector1~1_combout\) # ((\currentState.correct1~regout\ & !\currentState.correct3~regout\)))) # (!\FlancoP0|est_act.E2~regout\ & (\currentState.correct1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \currentState.correct1~regout\,
	datac => \currentState.correct3~regout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X1_Y22_N14
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\FlancoP1|est_act.E2~regout\ & (\Selector1~0_combout\ & (\currentState.correct1~regout\))) # (!\FlancoP1|est_act.E2~regout\ & (((\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP1|est_act.E2~regout\,
	datab => \Selector1~0_combout\,
	datac => \currentState.correct1~regout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCFF_X1_Y22_N15
\currentState.correct1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~3_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.correct1~regout\);

-- Location: LCCOMB_X1_Y22_N12
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\FlancoP0|est_act.E2~regout\ & (\FlancoP1|est_act.E2~regout\ & ((\currentState.correct1~regout\) # (\currentState.success~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \currentState.correct1~regout\,
	datac => \currentState.success~regout\,
	datad => \FlancoP1|est_act.E2~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y22_N16
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((!\FlancoP0|est_act.E2~regout\ & (!\FlancoP1|est_act.E2~regout\ & \currentState.correct2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \FlancoP1|est_act.E2~regout\,
	datac => \currentState.correct2~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X1_Y22_N17
\currentState.correct2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.correct2~regout\);

-- Location: LCCOMB_X1_Y22_N10
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\FlancoP0|est_act.E2~regout\ & ((\FlancoP1|est_act.E2~regout\ & (\currentState.correct2~regout\)) # (!\FlancoP1|est_act.E2~regout\ & ((\currentState.correct3~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \currentState.correct2~regout\,
	datac => \currentState.correct3~regout\,
	datad => \FlancoP1|est_act.E2~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X1_Y22_N11
\currentState.correct3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.correct3~regout\);

-- Location: LCCOMB_X1_Y22_N8
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\FlancoP1|est_act.E2~regout\ & ((\FlancoP0|est_act.E2~regout\ & (\currentState.correct3~regout\)) # (!\FlancoP0|est_act.E2~regout\ & ((\currentState.success~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FlancoP0|est_act.E2~regout\,
	datab => \currentState.correct3~regout\,
	datac => \currentState.success~regout\,
	datad => \FlancoP1|est_act.E2~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X1_Y22_N9
\currentState.success\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.success~regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_R~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALT_INV_currentState.success~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_R);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_G~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \currentState.success~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_G);
END structure;


