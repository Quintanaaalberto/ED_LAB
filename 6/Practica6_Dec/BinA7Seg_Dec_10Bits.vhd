library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BinA7Seg_Dec_10Bits is
	port(
			N : in std_logic_vector (9 downto 0);
			Display1 : out std_logic_vector (6 downto 0);
			Display2 : out std_logic_vector (6 downto 0);
			Display3 : out std_logic_vector (6 downto 0)
			);
end BinA7Seg_Dec_10Bits;

architecture BinA7Seg_Dec_10Bits_arc of BinA7Seg_Dec_10Bits is
	signal d1 : std_logic_vector(3 downto 0); --display de la izquierda
	signal d2 : std_logic_vector(3 downto 0); --display del centro
	signal d3 : std_logic_vector(6 downto 0); --display de la derecha
	
	signal restador1 : std_logic_vector(9 downto 0);
	signal restador2 : std_logic_vector(6 downto 0);
	signal resta : std_logic_vector(9 downto 0);
	
	signal N2 : std_logic_vector(6 downto 0);

	begin
	
	process(N , N2)
	
		begin
	
		if N > "1110000011" then 		 -- > 899
			restador1 <= "1110000100";
			d1 <= "1001";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "1100011111" then	 -- > 799
			restador1 <= "1100100000";
			d1 <= "1000";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "1010111011" then	 -- > 699
			restador1 <= "1010111100";
			d1 <= "0111";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "1001010111" then	 -- > 599
			restador1 <= "1001011000";
			d1 <= "0110";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0111110011" then	 -- > 499
			restador1 <= "0111110100";
			d1 <= "0101";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0110001111" then	 -- > 399
			restador1 <= "0110010000";
			d1 <= "0100";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0100101011" then	 -- > 299
			restador1 <= "0100101100";
			d1 <= "0011";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0011000111" then	 -- > 199
			restador1 <= "0011001000";
			d1 <= "0010";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0001100011" then	 -- > 099
			restador1 <= "0001100100";
			d1 <= "0001";
			resta <= std_logic_vector(unsigned(N)-unsigned(restador1));
		elsif N > "0000000000" then	 -- > 000
			d1 <= "0000";
			resta <= N;
		elsif N = "0000000000" then 
			d1 <= "0000";
			resta <= "0000000000";
		end if;
		
		N2 <= resta(6 downto 0);
		
		if N2 > "1011001" then     -- > 89
			restador2 <= "1011010";
			d2 <= "1001";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "1001111" then  -- > 79
			restador2 <= "1010000";
			d2 <= "1000";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "1000101" then  -- > 69
			restador2 <= "1000110";
			d2 <= "0111";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0111011" then  -- > 59
			restador2 <= "0111100";
			d2 <= "0110";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0110001" then  -- > 49
			restador2 <= "0110010";
			d2 <= "0101";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0100111" then  -- > 39
			restador2 <= "0101000";
			d2 <= "0100";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0011101" then  -- > 29
			restador2 <= "0011110";
			d2 <= "0011";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0010011" then  -- > 19
			restador2 <= "0010100";
			d2 <= "0010";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0001001" then  -- > 09
			restador2 <= "0001010";
			d2 <= "0001";
			d3 <= std_logic_vector(unsigned(N2)-unsigned(restador2));
		elsif N2 > "0000000" then
			d2 <= "0000";
			d3 <= N2;
		elsif N2 = "0000000" then 
			d2 <= "0000";
			d3 <= "0000000";
		end if;
		
		
			
		
		
	end process;

		with d1 select

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
			
		with d3(3 downto 0) select

			Display3 <=
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

	end BinA7Seg_Dec_10Bits_arc;