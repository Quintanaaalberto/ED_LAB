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
-- Generated on "04/27/2021 19:00:19"
                                                            
-- Vhdl Test Bench template for design  :  Microondas
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                 
USE ieee.numeric_std.all;               

ENTITY Microondas_vhd_tst IS
END Microondas_vhd_tst;
ARCHITECTURE Microondas_arch OF Microondas_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abierta : STD_LOGIC;
SIGNAL clk : STD_LOGIC:= '0';
SIGNAL cnt_min : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL cnt_seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL enc_temp : STD_LOGIC;
SIGNAL ent_p : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL horno_on : STD_LOGIC;
SIGNAL p1 : STD_LOGIC;
SIGNAL p2 : STD_LOGIC;
SIGNAL puerta : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT Microondas
	PORT (
	abierta : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	cnt_min : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	cnt_seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	enc_temp : IN STD_LOGIC;
	ent_p : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	fin : OUT STD_LOGIC;
	horno_on : OUT STD_LOGIC;
	p1 : IN STD_LOGIC;
	p2 : IN STD_LOGIC;
	puerta : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Microondas
	PORT MAP (
-- list connections between master ports and signals
	abierta => abierta,
	clk => clk,
	cnt_min => cnt_min,
	cnt_seg => cnt_seg,
	enc_temp => enc_temp,
	ent_p => ent_p,
	fin => fin,
	horno_on => horno_on,
	p1 => p1,
	p2 => p2,
	puerta => puerta,
	reset_n => reset_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;  

clk <= not clk after 50 ns;  
                                       
always : PROCESS                                              
-- optional sensitivity list                                  




                                                
-- variable declarations                                      
BEGIN                                                         
reset_n <= '0';
enc_temp <= '0';
ent_p <= "0000000";
p1 <= '0';
p2 <= '0';
puerta <= '0';

wait for 120ns;
ent_p <= "0000001";
wait for 120ns;
p2 <= '1';
wait for 120ns;
ent_p <= "0010001";
wait for 120ns;
p1 <= '1';
wait for 120ns;
enc_temp <= '1';
wait for 25000ns;
puerta <= '1';
assert horno_on = '0' 
	report "Aviso, el horno no se apaga al abrir la puerta"
	severity warning;
wait for 1000ns;
puerta <= '0';

assert fin = '0' 
	report "fin de la simulacion"
	severity failure;
	
WAIT;                                                        
END PROCESS always;                                          
END Microondas_arch;
