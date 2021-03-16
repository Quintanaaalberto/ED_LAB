library ieee;
use ieee.std_logic_1164.all;               -- for type conversions

entity Sumador1Bit is
	port (
		a_i,b_i 	: in std_logic;
		c_i 		: in std_logic;
		s_i 		: out std_logic;
		p_i, g_i 	: out std_logic);
end Sumador1Bit;

architecture Sumador1Bit_arc of Sumador1Bit is

begin
	s_i <= c_i xor (a_i xor b_i);
	p_i <= a_i xor b_i;
	g_i <= a_i and b_i;

end  Sumador1Bit_arc;