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
-- Generated on "03/16/2021 19:33:51"
                                                            
-- Vhdl Test Bench template for design  :  alu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
                                

ENTITY alu_vhd_tst IS
END alu_vhd_tst;
ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL OV_out : STD_LOGIC;
SIGNAL S_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sel_in : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT alu
	PORT (
	A_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	OV_out : OUT STD_LOGIC;
	S_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	A_in => A_in,
	B_in => B_in,
	OV_out => OV_out,
	S_out => S_out,
	sel_in => sel_in
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
		  for k in 0 to 7 loop
 sel_in <= std_logic_vector(to_unsigned(k, 3));
 for i in -16 to 15 loop
 a_in <= std_logic_vector(to_signed(i, 5));
 for j in -16 to 15 loop
 b_in <= std_logic_vector(to_signed(j, 5));
 wait for 100 ns;
 if sel_in = "000" then
 assert s_out = (a_in and b_in)
 report "Error en el AND" severity failure;
 end if;
 if sel_in = "001" then
 assert s_out = (a_in or b_in)
 report "Error en la OR" severity failure;
 end if;
 if sel_in = "010" then
 assert s_out = (a_in xor b_in)
 report "Error en la XOR" severity failure;
 end if;
 if sel_in = "011" then
 assert s_out = not(a_in)
 report "Error en la NOT" severity failure;
 end if;
 if sel_in = "100" then
 if (i+j > 15) or (i+j < -16) then
 assert ov_out = '1'
 report "Error en el overflow de la suma"
severity failure;
 else
 assert signed(s_out) = i+j 
 report "Error en la suma"
severity failure;
 end if;
 end if;
 if sel_in = "101" then
 if (i-j > 15) or (i-j < -16) then
 assert ov_out = '1'
 report "Error en el overflow de la resta"
severity failure;
 else
 assert signed(s_out) = i-j 
 report "Error en la resta"
severity failure;
 end if;
 end if;
 if sel_in = "110" then
 if (i+1 > 15) or (i+1 < -16) then
 assert ov_out = '1'
 report "Error en el overflow del incremento"
severity failure;
 else
 assert signed(s_out) = i+1 report "Error en el incremento"
 severity failure;
 end if;
 end if;
 if sel_in = "111" then
 if (i*j > 15) or (i*j < -16) then
 assert ov_out = '1'
 report "Error en el overflow de la multiplicación"
 severity failure;
 else
 assert signed(s_out) = i*j 
 report "Error en la multiplicación"
 severity failure;
 end if;
 end if;
 end loop;
 end loop;
end loop;
WAIT;                                                        
END PROCESS always;                                          
END alu_arch;
