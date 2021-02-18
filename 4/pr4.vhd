library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions
use ieee.math_real.all;                 -- for the ceiling and log constant calculation functions

entity pr4 is
	port (
		a , b : in std_logic_vector(3 downto 0);
		Abigger, Asmaller, Aequal : out std_logic;
		d_a, d_b : out std_logic_vector(6 downto 0)
	);
end ;

architecture pr4_arc of pr4 is


	component Comparador4Bits
		port(
				An, Bn : in std_logic_vector (3 downto 0);
				abigger, asmaller, aequal : out std_logic);

	end component;
	component BinA7Seg
		port(
			N : in std_logic_vector (3 downto 0);
			Display : out std_logic_vector (6 downto 0)
			);
	end component;
	
	
	
begin



	i1: Comparador4Bits
		port map (
			An => a, Bn => b, abigger => Abigger, asmaller => Asmaller, aequal => Aequal );
	i2: BinA7Seg
		port map (
			N => a, Display => d_a);
	i3: BinA7Seg
		port map (
			N => b, Display => d_b);


end pr4_arc;