library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ContAscM50 is

	port(
		clk : in std_logic;
		reset_n : in std_logic;
		en : in std_logic;
		co : out std_logic
		);
	end ContAscM50;
	
	architecture behavioural of ContAscM50 is
	
	signal contador : unsigned(25 downto 0);
	
	begin
	
		process(clk , reset_n)
		begin
			if reset_n = '0' then 
				contador <=(others => '0');
			elsif clk' event and clk = '1' then 
				if en = '1' then
					if contador = "10111110101111000001111111" then
						contador <= (others => '0');
					else 
						contador <= contador + 1;
					end if;
				end if;
			end if;
		end process;
		
		co <= '1' when contador = "10111110101111000001111111" and en = '1'
				else '0';
				
	end behavioural;
						
	
	
	