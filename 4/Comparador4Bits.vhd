library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity Comparador4Bits is
	port(
				A, B : in std_logic_vector (3 downto 0);
				abigger, asmaller, aequal : out std_logic);
end Comparador4Bits;

architecture Comparador4Bits_arc of Comparador4Bits is

	signal aa : std_logic_vector (3 downto 0);
	signal bb : std_logic_vector (3 downto 0);

begin
	
	aa <= A;
	bb <= B;

	abigger <= '1' when  a > b else '0';
	asmaller <= '1' when a < b else '0';
	aequal <= '1' when a = b else '0';

end  Comparador4Bits_arc;