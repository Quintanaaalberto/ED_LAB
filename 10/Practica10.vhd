library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions


entity Practica10 is
	port (
		clk : in std_logic;
		reset_n : in std_logic;
		c_in, c_out : in std_logic;
		max_c : in std_logic_vector(7 downto 0);
		d0,d1 : out std_logic_vector(6 downto 0);
		libre, ocupado : out std_logic

	) ;
end Practica10;


architecture Practica10_arc of Practica10 is

signal s : std_logic_vector(7 downto 0);

component ControlParking
port(

		clk : in std_logic;
		reset_n : in std_logic;
		c_in, c_out : in std_logic;
		max_c : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(7 downto 0);
		libre, ocupado : out std_logic

);
end component;


component BinA7Seg
port(
		N : in std_logic_vector (3 downto 0);
		Display : out std_logic_vector (6 downto 0)



);
end component;

begin
	i1 : ControlParking
	port map(
	
		clk=>clk,
		reset_n=>reset_n,
		c_in=>c_in,
		c_out=>c_out,
		max_c=>max_c,
		s=>s,
		libre=>libre,
		ocupado=>ocupado

	);
	
	i2 : BinA7Seg 
	port map(
		N=>s(3 downto 0),
		Display=>d0

	);
	
	
	i3 : BinA7Seg 
	port map(
		N=>s(7 downto 4),
		Display=>d1
	
	
	);



end Practica10_arc;