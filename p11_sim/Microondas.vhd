library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Microondas is 
	port(
		clk        : in std_logic;
		reset_n    : in std_logic;
		p1         : in std_logic;
		p2         : in std_logic;
		puerta     : in std_logic;
		enc_temp   : in std_logic;
		fin        : out std_logic;
		horno_on   : out std_logic;
		abierta    : out std_logic;
		ent_p      : in std_logic_vector(6 downto 0); -- entrada paralelo
		cnt_min    : out std_logic_vector(6 downto 0);
		cnt_seg    : out std_logic_vector(6 downto 0)
		);
	end Microondas;
	
	architecture behavioural of Microondas is 
	
		signal carga_mins : std_logic;
		signal carga_secs : std_logic;
		signal enable_cnt : std_logic;
		signal fincuenta  : std_logic;

		
	
		component UnidadControl
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
		end component;
				
		component datapath 
			port(
				en_cnt    : in std_logic; -- interruptor que hace que empiece el contador de los segundos
				clk       : in std_logic;
				reset_n   : in std_logic;
				carga_min : in std_logic;
				carga_seg : in std_logic;
				ent_p     : in std_logic_vector(6 downto 0); -- entrada paralelo
				cnt_seg   : out std_logic_vector(6 downto 0); -- contador de segundos 
				cnt_min   : out std_logic_vector(6 downto 0); -- contador de minutos
				fin_cuenta: out std_logic
				);
		end component;
			
		begin
		 
					
			i1 : UnidadControl
				port map(
					clk => clk,
					reset_n  => reset_n,
					fin_cuenta => fincuenta,
					p1 => p1, 
					p2 => p2,
					puerta => puerta,
					enc_temp => enc_temp, 
					fin => fin,
					horno_on => horno_on,
					abierta => abierta, 
					en_cnt => enable_cnt,
					carga_min => carga_mins,
					carga_seg => carga_secs
					);
			
			i2 : datapath
				port map(
					en_cnt => enable_cnt,
					clk => clk,
					reset_n => reset_n,
					carga_min => carga_mins,
					carga_seg => carga_secs,
					ent_p => ent_p,
					cnt_seg => cnt_seg,
					cnt_min => cnt_min,
					fin_cuenta => fincuenta
					);
					
			
		end behavioural;