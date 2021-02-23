library ieee;
use ieee.std_logic_1164.all;             -- for type conversions

entity CarryLookAhead is
	port(
		g, p 	: in std_logic_vector(4 downto 0);
		c_0 	: in std_logic;
		c 		: out std_logic_vector(5 downto 1));
end CarryLookAhead;

architecture CarryLookAhead_arc of CarryLookAhead is

begin

	c(1) <= g(0) or (p(0) and c_0);
	c(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and c_0);
	c(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) 
			or (p(2) and p(1) and p(0) and c_0);
	c(4) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
			or (p(3) and p(2) and p(1) and g(0))
			or (p(3) and p(2) and p(1) and p(0) and c_0)
	c(5) <= g(4) or (p(4) and g(3)) or (p(4) and p(3) and g(2))
			or (p(4) and p(3) and p(2) and g(1))
			or (p(4) and p(3) and p(2) and p(1) and g(0))
			or (p(4) and p(3) and p(2) and p(1) and p(0) and c_0);

end  CarryLookAhead_arc;