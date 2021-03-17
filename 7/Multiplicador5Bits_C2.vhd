library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;               -- for type conversions

entity  Multiplicador5Bits_C2 is
	port (
		A,B : in std_logic_vector (4 downto 0);
		S : out std_logic_vector (4 downto 0);
		ov : out std_logic

	) ;
end ;

architecture Behavioural of Multiplicador5Bits_C2 is

type matriz_productos is array (9 downto 0) of unsigned(19 downto 0);
signal prod : matriz_productos;
signal a1,b1 : std_logic_vector(9 downto 0);
signal s1 : std_logic_vector(19 downto 0);
begin
a1<=A(4)&A(4)&A(4)&A(4)&A(4)&A(4 downto 0);
b1<=B(4)&B(4)&B(4)&B(4)&B(4)&B(4 downto 0);


Parciales : for i in 0 to 9 generate

	p1 : for j in 0 to i-1 generate
		prod(i)(j)<='0';
	end generate p1;

	p2 : for j in i to i+9 generate
		prod(i)(j)<=a1(j-i) and b1(i);
	end generate p2;

	p3 : for j in i+10 to 19 generate
		prod(i)(j)<='0';
	end generate p3;

	
	
end generate Parciales;

s1<=std_logic_vector(prod(0)+prod(1)+prod(2)+prod(3)+prod(4)+prod(5)+prod(6)+prod(7)+prod(8)+prod(9));
S<=s1(4 downto 0);
ov<='0' when (s1(5)=s1(4) and s1(6)=s1(4) and s1(7)=s1(4) and s1(8)=s1(4) and s1(9)=s1(4))
else '1';


end  Behavioural;