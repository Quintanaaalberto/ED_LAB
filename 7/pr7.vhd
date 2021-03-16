library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity  is
	port (
		a, b 	: in std_logic_vector(4 downto 0);
		sel 	: in std_logic_vector(2 downto 0);
		ov 		: out std_logic;
		S 		: out std_logic_vector(4 downto 0)
	) ;
end ;

architecture _arc of  is

begin

end  _arc;