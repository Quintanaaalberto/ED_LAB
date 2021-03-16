library ieee;
use ieee.std_logic_1164.all;              -- for type conversions

entity  is
	port (
		e0, e1 	: in std_logic_vector(4 downto 0);
		sel		: in std_logic;
		s 		: out std_logic_vector(4 downto 0)
	) ;
end ;

architecture mux5bits_arc of  mux5bits is

begin
	with sel select
		s <=	e0 when '0',
				e1 when '1',
				"00000" when others;

end  mux5bits_arc;