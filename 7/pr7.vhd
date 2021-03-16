library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity pr7 is
	port (
		a, b 	: in std_logic_vector(4 downto 0);
		sel 	: in std_logic_vector(2 downto 0);
		ov, sign 		: out std_logic;
		disp1, disp2 :out std_logic_vector (6 downto 0)
		
	) ;
end ;

architecture pr7_arc of  pr7 is
signal S: std_logic_vector(4 downto 0);

	COMPONENT alu
			PORT(
				A_in, B_in 		:in std_logic_vector(4 downto 0);
				sel_in			:in std_logic_vector(2 downto 0);
				S_out			:out std_logic_vector(4 downto 0);
				OV_out			:out std_logic
				
				);
		END COMPONENT;
	COMPONENT BinA7Seg_Dec
			PORT(
				num 			: in std_logic_vector (5 downto 0);
				Display1 	: out std_logic_vector (6 downto 0);
				Display2 	: out std_logic_vector (6 downto 0);
				signo : out std_logic
				);
		END COMPONENT;
begin

	ialu : alu
			PORT MAP(
				A_in => a, B_in => b, sel_in => sel,
				S_out => S, OV_out => ov
				);
	idisplay : BinA7Seg_Dec
			PORT MAP(
				num =>  S(4)&S, Display1 => disp1, Display2 => disp2, signo=> sign
				);

end  pr7_arc;