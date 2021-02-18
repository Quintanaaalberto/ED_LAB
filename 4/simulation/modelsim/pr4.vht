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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/16/2021 19:42:59"
                                                            
-- Vhdl Test Bench template for design  :  pr4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY pr4_vhd_tst IS
END pr4_vhd_tst;
ARCHITECTURE pr4_arch OF pr4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL a_igual_b : STD_LOGIC;
SIGNAL a_mayor_b : STD_LOGIC;
SIGNAL a_menor_b : STD_LOGIC;
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d_a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_b : STD_LOGIC_VECTOR(6 DOWNTO 0);

COMPONENT pr4
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	A3 : IN STD_LOGIC;
	aa : OUT STD_LOGIC;
	ab : OUT STD_LOGIC;
	Abigger : OUT STD_LOGIC;
	ac : OUT STD_LOGIC;
	ad : OUT STD_LOGIC;
	ae : OUT STD_LOGIC;
	Aequal : OUT STD_LOGIC;
	af : OUT STD_LOGIC;
	ag : OUT STD_LOGIC;
	Asmaller : OUT STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	B3 : IN STD_LOGIC;
	ba : OUT STD_LOGIC;
	bb : OUT STD_LOGIC;
	bc : OUT STD_LOGIC;
	bd : OUT STD_LOGIC;
	be : OUT STD_LOGIC;
	bf : OUT STD_LOGIC;
	bg : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pr4
	PORT MAP (
-- list connections between master ports and signals
	A0 => a(0),
	A1 => a(1),
	A2 => a(2),
	A3 => a(3),
	aa => d_a(6),
	ab => d_a(5),
	Abigger => a_mayor_b,
	ac => d_a(4),
	ad => d_a(3),
	ae => d_a(2),
	Aequal => a_igual_b,
	af => d_a(1),
	ag => d_a(0),
	Asmaller => a_menor_b,
	B0 => b(0),
	B1 => b(1),
	B2 => b(2),
	B3 => b(3),
	ba => d_b(6),
	bb => d_b(5),
	bc => d_b(4),
	bd => d_b(3),
	be => d_b(2),
	bf => d_b(1),
	bg => d_b(0)
	);
init : PROCESS
-- variable declarations
BEGIN
 -- code that executes only once
WAIT;
END PROCESS init;

always : PROCESS
-- optional sensitivity list
-- ( )
-- variable declarations
BEGIN
 -- code executes for every event on sensitivity list
 for i in 0 to 15 loop
		a <= std_logic_vector(to_unsigned(i, 4));
 for j in 0 to 15 loop
		b <= std_logic_vector(to_unsigned(j, 4));
 wait for 100 ns;
	if a = b then
		assert a_igual_b = '1' and a_menor_b = '0' and a_mayor_b = '0'
		report "fallo en la comparacion a=b"
		severity failure;
	end if;
	if a < b then
		assert a_igual_b = '0' and a_menor_b = '1' and a_mayor_b = '0'
		report "fallo en la comparacion a<b"
		severity failure;
	end if;
	if a > b then
		assert a_igual_b = '0' and a_menor_b = '0' and a_mayor_b = '1'
		report "fallo en la comparacion a>b"
		severity failure;
	end if;
	end loop;
	end loop;
 WAIT;
END PROCESS always;                                        
END pr4_arch;
