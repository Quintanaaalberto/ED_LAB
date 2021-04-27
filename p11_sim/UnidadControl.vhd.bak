library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadControl is 
	port(
		clk        : in std_logic;
		reset_n    : in std_logic;
		fin_cuenta : in std_logic;
		p1         : in std_logic;
		p2         : in std_logic;
		puerta     : in std_logic;
		enc_temp   : in std_logic;
		fin        : out std_logic;
		horno_on   : out std_logic;
		abierta    : out std_logic;
		en_cnt     : out std_logic;
		carga_min  : out std_logic;
		carga_seg  : out std_logic
		);
	end UnidadControl;

		architecture behavioural of UnidadControl is
			
		type t_estados is (reposo , carga_segundos , carga_minutos , encendido , puerta_abierta , findecuenta , final);
		signal estado_act , estado_sig : t_estados;
		
		begin
		
			VarEstado : process(clk , reset_n)
				begin
					
					if reset_n = '0' then
						estado_act <= reposo;
					elsif clk' event and clk = '1' then
						estado_act <= estado_sig;
					end if;
			end process VarEstado;
			
			TransicionEstados : process(estado_act, p1 , p2 ,enc_temp , puerta , fin_cuenta)
				begin
					
					estado_sig <= estado_act;
					case estado_act is 
						when reposo =>
							if p1 = '1' and p2 ='0' and enc_temp = '0' then
								estado_sig <= carga_segundos;
							elsif enc_temp = '1' and p1 = '0' and p2 = '0'and puerta = '0' then 
								estado_sig <= encendido;
							elsif puerta = '1' and enc_temp = '1' and p1 = '0' and p2 = '0' then
								estado_sig <= puerta_abierta;
								end if;
						when carga_segundos =>
							if p1 ='0' and p2 = '1' and enc_temp = '0' then 
								estado_sig <= carga_minutos;
							elsif p1 = '1' and p2 = '1' and enc_temp = '0' then
								estado_sig <= reposo;
								end if;
						when carga_minutos =>
							if p1 = '0' and p2 = '0' and puerta = '0' and enc_temp = '1' and fin_cuenta = '0' then
								estado_sig <= encendido;
							elsif p1 = '0' and p2 = '0' and puerta = '1' and enc_temp = '1' and fin_cuenta = '0' then
								estado_sig <= puerta_abierta;
								end if;
						when encendido => 
							if puerta = '1' and enc_temp = '1' then 
								estado_sig <= puerta_abierta;
							elsif puerta =  '0' and enc_temp = '1' and fin_cuenta = '1' then
								estado_sig <= findecuenta;
							end if;
						when puerta_abierta => 
							if puerta = '0' and enc_temp = '1' then
								estado_sig <= encendido;
							end if;
						when findecuenta => 
							if puerta = '1' and fin_cuenta = '1' then 
								estado_sig <= final;
							end if;
						when others => 
							estado_sig <= reposo;
					end case;
			end process TransicionEstados;
			
			Salidas : process(estado_act)
			begin
				
				fin <= '0';
				horno_on <= '0';
				abierta <= '0';
				en_cnt <= '0';
				carga_min <= '0';
				carga_seg <= '0';
				
				case estado_act is 
					when reposo =>
						fin <= '0';
						horno_on <= '0';
						abierta <= '0';
						en_cnt <= '0';
						carga_min <= '0';
						carga_seg <= '0';
					when carga_segundos =>
						fin <= '0';
						horno_on <= '0';
						abierta <= '0';
						en_cnt <= '0';
						carga_min <= '0';
						carga_seg <= '1';	
					when carga_minutos =>
						fin <= '0';
						horno_on <= '0';
						abierta <= '0';
						en_cnt <= '0';
						carga_min <= '1';
						carga_seg <= '0';
					when encendido => 
						fin <= '0';
						horno_on <= '1';
						abierta <= '0';
						en_cnt <= '1';
						carga_min <= '0';
						carga_seg <= '0';	
					when puerta_abierta =>
						fin <= '0';
						horno_on <= '0';
						abierta <= '1';
						en_cnt <= '0';
						carga_min <= '0';
						carga_seg <= '0';	
					when findecuenta =>
						fin <= '1';
						horno_on <= '0';
						abierta <= '0';
						en_cnt <= '0';
						carga_min <= '0';
						carga_seg <= '0';
					when final =>
						fin <= '0';
						horno_on <= '0';
						abierta <= '1';
						en_cnt <= '0';
						carga_min <= '0';
						carga_seg <= '0';					
				end case;
			end process Salidas;
	end behavioural;
							
							
							
							
							
							
		