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
-- Generated on "02/18/2021 17:48:09"
                                                            
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
SIGNAL Abigger : STD_LOGIC;
SIGNAL Aequal : STD_LOGIC;
SIGNAL Asmaller : STD_LOGIC;
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d_a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_b : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT pr4
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Abigger : OUT STD_LOGIC;
	Aequal : OUT STD_LOGIC;
	Asmaller : OUT STD_LOGIC;
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d_a : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_b : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pr4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	Abigger => Abigger,
	Aequal => Aequal,
	Asmaller => Asmaller,
	b => b,
	d_a => d_a,
	d_b => d_b
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
		  for i in 0 to 15 loop
				a <= std_logic_vector(to_unsigned(i, 4));
				for j in 0 to 15 loop
					b <= std_logic_vector(to_unsigned(j, 4));
					wait for 100 ns;
					if a = b then
						assert Aequal = '1' and Asmaller = '0' and Abigger = '0'
							report "fallo en la comparacion a=b"
							severity failure;
					end if;
					if a < b then
						assert Aequal = '0' and Asmaller = '1' and Abigger = '0'
							report "fallo en la comparacion a<b"
							severity failure;
					end if;
					if a > b then
						assert Aequal = '0' and Asmaller = '0' and Abigger = '1'
							report "fallo en la comparacion a>b"
							severity failure;
					end if;
				end loop;
			end loop;
		  
WAIT;                                                        
END PROCESS always;                                          
END pr4_arch;
