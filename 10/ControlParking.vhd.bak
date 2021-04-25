library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity ControlParking is
	port (
		clk : in std_logic;
		reset_n : in std_logic;
		c_in, c_out : in std_logic;
		max_c : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(7 downto 0);
		libre, ocupado : std_logic

	) ;
end ControlParking;

architecture ControlParking_arc of ControlParking is

	component DetectorFlanco
	port(
				clk : in std_logic;
				-- entrada
				e : in std_logic;
				-- reset asincrono
				reset_n	: in std_logic;
				-- salida
				s : out std_logic
		);
	end component;

	signal contador : unsigned(7 downto 0);
	signal in_f, out_f : std_logic;

begin

	i1 : DetectorFlanco
	port map(
		clk=>clk,
		e=>c_in,
		reset_n=>reset_n,
		s=>in_f
		);

	i2 : DetectorFlanco
	port map(
		clk=>clk,
		e=>c_out,
		reset_n=>reset_n,
		s=>out_f
		);


	contador : process(clk, reset_n)
	begin

		if reset_n='0' then contador<=(others =>'0'); --reseteo contador

		elsif clk' event and clk='1' then --flanco reloj
			if in_f = '1' and contador < max_c then contador <= contador + 1; --flanco in y no hemos superado el máximo de coches (por si detectamos una persona o algo)

			elsif out_f = '1' and contador>'0' then contador <= contador - 1; --flanco out y no tenemos 0 coches (por si detectamos una persona o algo)

			end if;
		end if;




	end process contador;

	s<=contador;

	process salida(s) -- solo cambia a ocupado cuando el contador llega al máximo
	libre<='1';
	ocupado<='0';
	if s=max_c then 
		libre<='0';
		ocupado<='1';
	end if;
end process salida;


end  ControlParking_arc;