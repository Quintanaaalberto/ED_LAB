LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Practica6_Dec IS 
	PORT(
		a , b : in std_logic_vector(4 downto 0);
		s : out std_logic_vector(9 downto 0);
		disp1 , disp2 , disp3 : out std_logic_vector(6 downto 0)
		);
END Practica6_Dec;

	ARCHITECTURE structural OF Practica6_Dec IS
	
	SIGNAL producto : std_logic_vector(9 downto 0);
	
		COMPONENT BinA7Seg_Dec_10Bits
			PORT(
				N : in std_logic_vector(3 downto 0);
				Display1 : out std_logic_vector(6 downto 0);
				Display2 : out std_logic_vector(6 downto 0);
				Display3 : out std_logic_vector(6 downto 0)
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
				
		iDisplays : BinA7Seg_Dec_10Bits
			PORT MAP(
				N => producto(9 downto 0) , Display1 => disp1 , Display2 => disp2 , Display3 => disp3
				);
				
		--s <= producto;
	END structural;
	