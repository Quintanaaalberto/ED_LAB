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

type matriz_productos is array (4 downto 0) of unsigned(19 downto 0);
signal prod : matriz_productos;
signal a,b : std_logic_vector(9 downto 0);
signal s : std_logic_vector(19 downto 0);
begin
a<=A(4)&A(4)&A(4)&A(4)&A(4)&A(4 downto 0);
b<=B(4)&B(4)&B(4)&B(4)&B(4)&B(4 downto 0);


Parciales : for i in 0 to 4 generate

	p1 : for j in 0 to i-1 generate
		prod(i)(j)<='0';
	end generate p1;

	p2 : for j in i to i+9 generate
		prod(i)(j)<=A(j-i) and B(i);
	end generate p2;

	p3 : for j in i+10 to 19 generate
		prod(i)(j)<='0';
	end generate p3;

	
	
end generate Parciales;

s<=std_logic_vector(prod(0)+prod(1)+prod(2)+prod(3)+prod(4));
S<=s(4 downto 0);
ov<='0' when (s(5)=s(4) and s(6)=s(4) and s(7)=s(4) and s(8)=s(4) and s(9)=s(4))
else '1';


end  Behavioural;