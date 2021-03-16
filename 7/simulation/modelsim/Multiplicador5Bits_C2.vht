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
-- Generated on "03/16/2021 18:35:05"
                                                            
-- Vhdl Test Bench template for design  :  Multiplicador5Bits_C2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Multiplicador5Bits_C2_vhd_tst IS
END Multiplicador5Bits_C2_vhd_tst;
ARCHITECTURE Multiplicador5Bits_C2_arch OF Multiplicador5Bits_C2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ov : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT Multiplicador5Bits_C2
	PORT (
	A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	ov : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Multiplicador5Bits_C2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	ov => ov,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Multiplicador5Bits_C2_arch;
