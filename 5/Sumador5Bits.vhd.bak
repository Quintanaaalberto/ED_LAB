library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- for addition & counting
use ieee.numeric_std.all;        -- for type conversions

entity Sumador5Bits is
	port (
		a, b 	: in std_logic_vector(4 downto 0);
		s 		: out std_logic_vector(4 downto 0);
		c_out 	: out std_logic
	) ;
end Sumador5Bits;

architecture Sumador5Bits_arc of Sumador5Bits is
-- intermidiate carries are stored on this vector
	signal c 	: std_logic_vector (5 downto 0);
-- generation and spread, g and p
	signal g, p : std_logic_vector (4 downto 0);

-- now we reference the other blocks used on the hierarchy
	component Sumador1Bit
	port (
		a_i,b_i 	: std_logic;
		c_i 		: in std_logic;
		s_i 		: out std_logic;
		p_i, g_i 	: out std_logic);
	end component;

	component CarryLookAhead
	port(
		g, p 		: in std_logic_vector(4 downto 0);
		c_0 		: in std_logic;
		c 			: out std_logic_vector(5 downto 1));
	end component;

begin

	c(0) <= '0'; -- set initial carry to 0
	c_out <= c(5);

	GenSum : for i in 0 to 4 generate

		i_Sumador1Bit : Sumador1Bit
		port map (
			a_i => a(i);
			b_i => b(i);
			c_i => c(i);
			s_i => s(i);
			p_i => p(i);
			g_i => g(i));
	end generate GenSum;
-- instanciamos con los vectores de g y p una 
-- ejecución de la operación Carry Look Ahead
	i_CarryLookAhead : CarryLookAhead
	port map (
		g => g;
		p => p;
		c_0 => c(0);
		c => c(4 downto 1));


end  Sumador5Bits_arc;