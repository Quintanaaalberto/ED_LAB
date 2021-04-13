library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity Password is
	port (
		clk				: in std_logic;
		-- entrada de reloj
		p0, p1 			: in std_logic;
		-- entradas de los pulsadores
		-- que van al análisis de flanco
		reset_n			: in std_logic;
		-- reset asincrono
		led_R, led_G 	: out std_logic
		-- salidas de los LED de feedback
	) ;
end Password;

architecture Password_arc of Password is


	signal p0_flanco, p1_flanco : std_logic;

	type stateType is 
		(standby, correct1, correct2, correct3, success);
	signal currentState, nextState : stateType;


COMPONENT DetectoFlanco
			PORT(
				-- reloj del sistema
				clk 	: in std_logic;
				-- entrada
				e 		: in std_logic;
				-- reset asincrono
				reset_n	: in std_logic;
				-- salida
				s 		: out std_logic
		);
		END COMPONENT;

begin

	FlancoP0 : DetectorFlanco
	PORT MAP(
			clk => clk, e => p0, reset_n => reset, s => p0_flanco
		);
	FlancoP1 : DetectorFlanco
	PORT MAP(
			clk => clk, e => p1, reset_n => reset, s => p1_flanco
		);

-- correponde a la funcion de memoria en la coordinamos 
-- la trnasición d eestaos con el clk y comparamos con 
-- estados previos
	varState : process(clk, reset_n)
	begin
		if reset = '0' then
			currentState <= standby;

		elsif clk'event and clk = '1' then
			currentState <= nextState;
		end if;
	end process varState;


-- correpsonde a la transicion de estados. Asincrona.
-- en funcionl del caso actual cargamso en el casos iguiente 
--el caso correspondiente a la evolucion del State
	transState : process(currentState, p0_flanco, p1_flanco)
	begin
		nextState <= currentState;
		case currentState is 

			when standby =>
				if p0_flanco = '1' and p1_flanco = '0' then
				nextState <= correct1;
				end if;

			when correct1 =>
				if p0_flanco = '0' and p1_flanco = '1' then
				nextState <= correct2; 
				elsif p0_flanco = '1' and p1_flanco = '1' then
				nextState <= standby;
				end if;

			when correct2 =>
				if p0_flanco = '0' and p1_flanco = '1' then
				nextState <= correct3; 
				elsif p0_flanco = '1' and p1_flanco = '0' then
				nextState <= correct1;
				elsif p0_flanco = '1' and p1_flanco = '1' then
				nextState <= standby;
				end if;

			when correct3 =>
				if p0_flanco = '1' and p1_flanco = '0' then
				nextState <= success; 
				elsif p0_flanco = '0' and p1_flanco = '1' then
				nextState <= standby;
				elsif p0_flanco = '1' and p1_flanco = '1' then
				nextState <= standby;
				end if;
			when success =>
				if p0_flanco  = p1_flanco then
				nextState <= standby; 
				elsif p0_flanco = '0' and p1_flanco = '1' then
				nextState <= correct2;
				elsif p0_flanco = '0' and p1_flanco = '1' then
				nextState <= correct1;
				end if;

		end case;
	end process transState

--funcion de salida; según el caso en el que me halle 
-- mando una señal desalida determinada

	outputs : process(currentState)
	begin
		led_R <= '1';
		led_G <= '0';

		case currentState is
			when success =>
				led_R <= '0', led_G <= '1';
		end case;
	end process outputs;


end  Password_arc;