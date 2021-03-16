LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY U_Func_Log IS
	PORT(
		a , b : 	in std_logic_vector(4 downto 0);
		sel_log : in std_logic_vector(1 downto 0);
		S : out std_logic_vector(4 downto 0)
		);
END U_Func_Log;

	ARCHITECTURE behavioural OF U_func_Log IS
		SIGNAL e0 : std_logic_vector(4 downto 0); -- funcion and
		SIGNAL e1 : std_logic_vector(4 downto 0); -- funcion or
		SIGNAL e2 : std_logic_vector(4 downto 0); -- funcion xor
		SIGNAL e3 : std_logic_vector(4 downto 0); -- funcion not
		
	BEGIN
	
		e0 <= a and b;
		e1 <= a or b;
		e2 <= a xor b;
		e3 <= not a;
		
		
		with sel_log select
			S <= e0 when "00",
				  e1 when "01",
				  e2 when "10",
				  e3 when "11",
				  "0" when others;
		
	END behavioural;		  
			
		
		
