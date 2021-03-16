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
-- Generated on "02/25/2021 20:43:55"
                                                            
-- Vhdl Test Bench template for design  :  Multiplicador5Bits
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Multiplicador5Bits_vhd_tst IS
END Multiplicador5Bits_vhd_tst;
ARCHITECTURE Multiplicador5Bits_arch OF Multiplicador5Bits_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT Multiplicador5Bits
	PORT (
	a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Multiplicador5Bits
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	s => s
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
     for i in 0 to 31 loop 
			a <= std_logic_vector(to_unsigned(i,5));
			for j in 0 to 31 loop
				b <= std_logic_vector(to_unsigned(j,5));
				wait for 100ns;
			end loop;
		end loop;
WAIT;                -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Multiplicador5Bits_arch;
