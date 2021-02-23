library ieee;
use ieee.std_logic_1164.all;

entity Pr5 is
	port (
		An, Bn 	: in std_logic_vector (4 downto 0);
		disp1, disp2 : out std_logic_vector (6 downto 0)

	) ;
end Pr5;

architecture Pr5_arc of Pr5 is

	signal solution : std_logic_vector (4 downto 0);
	signal carry 	: std_logic;
	-- now we reference the other blocks used on the hierarchy
	component Sumador5Bit
	port (
		a, b 	: in std_logic_vector(4 downto 0);
		s 		: out std_logic_vector(4 downto 0);
		c_out 	: out std_logic);
	end component;
	
	component BinA7Seg
	port(
		N 		: in std_logic_vector (3 downto 0);
		Display : out std_logic_vector (6 downto 0));
	end component;

begin

	i_Sumador5Bits : Sumador5Bit
	port map(
			a => An;
			b => Bn;
			c_out => carry;
			s => solution
			);

-- transformar el vector solution en un vector para cada display.
-- hexadecimal y binario. Se puede pasar de bianriio a hexadecimal agrupando de 4 en 4.

	i_disp1: BinA7Seg
		port map (
			N => solution(3) & solution(2) & solution(1) & solution(0) , Display => disp1);
	i_disp2: BinA7Seg
		port map(
			N => "00" & carry & solution(4)  , Display => disp2);


end  Pr5_arc;