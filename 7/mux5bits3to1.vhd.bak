library ieee;
use ieee.std_logic_1164.all;              -- for type conversions

entity  is
	port (
		e0, e1, e2 	: in std_logic_vector(4 downto 0);
		sel		: in std_logic;
		s 		: out std_logic_vector(4 downto 0)
	) ;
end ;

architecture mux5bits3to1_arc of  mux5bits3to1 is

begin
	with sel select
		s <=	e0 when "00",
				e1 when "01",
				e3 when "10"
				"00000" when others;

end  mux5bits3to1_arc;