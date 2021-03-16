library ieee;
use ieee.std_logic_1164.all;              -- for type conversions

entity  is
	port (
		e0, e1 	: in std_logic;
		sel		: in std_logic;
		s 		: out std_logic
	) ;
end ;

architecture mux_arc of  mux is

begin
	with sel select
		s <=	e0 when '0',
				e1 when '1',
				'0' when others;

end  mux_arc;