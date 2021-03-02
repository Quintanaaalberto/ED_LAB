LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Multiplicador5Bits IS
	PORT(
		a , b : in std_logic_vector(4 downto 0);
		s : out std_logic_vector(9 downto 0)
		);
	END Multiplicador5Bits;
	
	ARCHITECTURE behavioural OF Multiplicador5Bits IS 
	
		TYPE t_vec_uns IS ARRAY (0 to 4) of unsigned(9 downto 0);
		SIGNAL pp : t_vec_uns;
		
	BEGIN 
	
		ppgen : for i in 0 to 4	generate
						l1 : for j in 0 to (i-1) generate
									pp(i)(j) <= '0';
						end generate l1;
						l2 : for j in i to (i+4) generate
									pp(i)(j) <= a(j-i) and b(i);
						end generate l2;
						l3 : for j in (i+5) to 9 generate
									pp(i)(j) <= '0';
						end generate l3;
		end generate ppgen;
		
		s <= std_logic_vector((pp(0)+pp(1))+(pp(2)+pp(3))+pp(4));
		
		END behavioural;
		
								
								
						
		
		
		
	