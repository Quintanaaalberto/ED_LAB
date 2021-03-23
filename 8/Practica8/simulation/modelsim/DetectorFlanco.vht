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
-- Generated on "03/23/2021 19:15:27"
                                                            
-- Vhdl Test Bench template for design  :  DetectorFlanco
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DetectorFlanco_vhd_tst IS
END DetectorFlanco_vhd_tst;
ARCHITECTURE DetectorFlanco_arch OF DetectorFlanco_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL e : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT DetectorFlanco
	PORT (
	clk : IN STD_LOGIC;
	e : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	s : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DetectorFlanco
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	e => e,
	reset_n => reset_n,
	s => s
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init; 
                                       
always : PROCESS    
   clk <= not clk after 50 ns;                                    
-- optional sensitivity list                                  
-- (  )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	 reset_n <= '0';
	 e <= '0';
	 wait for 100 ns;
	 reset_n <= '1';
	 wait for 510 ns;
	 e <= '1';
	 wait for 500 ns;
	 e <= '0';
	 wait for 500 ns;
	 e <= '1';
	 wait for 100 ns;
	 e <= '0';
	 wait for 500 ns;
	 assert false
		report "Fin de la simulacion" severity failure;

WAIT;                                                        
END PROCESS always;                                          
END DetectorFlanco_arch;
