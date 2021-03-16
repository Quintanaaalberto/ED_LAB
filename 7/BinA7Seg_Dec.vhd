library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BinA7Seg_Dec is
	port(
			num : in std_logic_vector (5 downto 0);
			Display1 : out std_logic_vector (6 downto 0);
			Display2 : out std_logic_vector (6 downto 0);
			signo : out std_logic
	
			);
end BinA7Seg_Dec;

architecture BinA7Seg_Dec_arc of BinA7Seg_Dec is

signal d1 : std_logic_vector(5 downto 0);
signal d2 : std_logic_vector(3 downto 0);
signal restador : std_logic_vector(5 downto 0);
signal N : std_logic_vector (5 downto 0);
signal uno : unsigned (4 downto 0); 

	begin
	uno<="00001";
	N<=std_logic_vector((unsigned(not(num))+uno)) when num(4)='1' else num;
	
	signo<='0' when num(4)='1' else '1';
	
		process(N)
		
		begin

	 
		if (N > "111011") then 
			restador <= "111100";
			d2 <= "0110";
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "110001") then  -- N > 49
			restador <= "110010";
			d2 <= "0101";
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "100111") then  -- N > 39
			restador <= "101000";
			d2 <= "0100";  
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "011101") then  -- N > 29
			restador <= "011111";
			d2 <= "0011"; 
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "010011") then  -- N > 19
			restador <= "010100";
			d2 <= "0010";
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "001001") then  -- N > 09
			restador <= "001010";
			d2 <= "0001"; 
			d1 <= std_logic_vector(unsigned(N)-unsigned(restador));
			elsif (N > "000000") then  -- N > 00
			d2 <= "0000"; 
			d1 <= N;
			else 							   -- N == 00
			d2 <= "0000"; 
			d1 <= "000000";
		end if;
		
	end process;
		
	
		
		

		with (d1(3 downto 0)) select

			Display1 <=
			"0000001" when "0000",
			"1001111" when "0001",
			"0010010" when "0010",
			"0000110" when "0011",
			"1001100" when "0100",
			"0100100" when "0101",
			"0100000" when "0110",
			"0001111" when "0111",
			"0000000" when "1000",
			"0000100" when "1001",
			"1111111" when others;
		
		
		with d2 select

			Display2 <=
			"0000001" when "0000",
			"1001111" when "0001",
			"0010010" when "0010",
			"0000110" when "0011",
			"1001100" when "0100",
			"0100100" when "0101",
			"0100000" when "0110",
			"0001111" when "0111",
			"0000000" when "1000",
			"0000100" when "1001",
			"1111111" when others;
		

	end BinA7Seg_Dec_arc;