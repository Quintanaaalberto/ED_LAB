LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Practica6 IS 
	PORT(
		a , b : in std_logic_vector(4 downto 0);
		-- s : out std_logic_vector(9 downto 0);
		disp1 , disp2 , disp3 : out std_logic_vector(6 downto 0)
		);
END Practica6;

	ARCHITECTURE structural OF Practica6 IS
	
	SIGNAL producto : std_logic_vector(9 downto 0);
	
		COMPONENT BinA7Seg
			PORT(
				N : in std_logic_vector(3 downto 0);
				Display : out std_logic_vector(6 downto 0)
				);
		END COMPONENT;
		
		COMPONENT Multiplicador5Bits 
			PORT(
				a , b : in std_logic_vector(4 downto 0);
				s : out std_logic_vector(9 downto 0)
				);
		END COMPONENT;
		
	BEGIN
	
		iMultiplicador5Bits : Multiplicador5Bits 
			PORT MAP(
				a => a , b => b , s => producto
				);
				
		iDisp1 : BinA7Seg
			PORT MAP(
				N => producto(3 downto 0) , Display => disp1
				);
				
		iDisp2 : BinA7Seg
			PORT MAP(
				N => producto(7 downto 4) , Display => disp2
				);
				
		iDisp3 : BinA7Seg
			PORT MAP(
				N => "00" & producto(9 downto 8) , Display => disp3
				);
		--s <= producto;
	END structural;
	