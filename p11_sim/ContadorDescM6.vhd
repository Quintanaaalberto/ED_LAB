LIBRARY ieee;
USE ieee.numeric_std.all;
USE ieee.std_logic_1164.all;

entity ContadorDescM6 is 
	port(
		clk : in std_logic;
		reset_n : in std_logic;
		en : in std_logic;
		carga : in std_logic;
		e_p : in std_logic_vector(2 downto 0);
		co : out std_logic;
		s : out std_logic_vector(2 downto 0)
		);
	end ContadorDescM6;
	
	architecture behavioural of ContadorDescM6 is 
	
	SIGNAL contador : unsigned(2 downto 0);
	
	begin
	
		process(clk, reset_n)
		
			begin
			
				if reset_n = '0' then
					contador <= "110";
				elsif clk' event and clk = '1' then
					if carga = '1' then
						contador <= unsigned(e_p);
					elsif en = '1' then
						if contador = "000" then 
							contador <= "110";
						else 
							contador <= contador - 1;
						end if;
					end if;
				end if;
		end process;
	
		s <= std_logic_vector(contador);
		co <= '1' when contador = "000" and en ='1' 
				else '0';
				
	end behavioural;
						
					
			