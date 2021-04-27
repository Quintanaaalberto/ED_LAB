library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity p11 is
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
		d_a        : out std_logic_vector(6 downto 0); -- unidades de segundo 
		d_b        : out std_logic_vector(6 downto 0); -- decenas de segundo
		d_c        : out std_logic_vector(6 downto 0); -- unidades de minuto 
		d_d        : out std_logic_vector(6 downto 0)  -- decenas de minuto
		);
	end p11;
	
	architecture behavioural of p11 is 
		
		signal p_1      : std_logic;
		signal p_2      : std_logic;
		signal cnt_mins : std_logic_vector(6 downto 0);
		signal cnt_secs : std_logic_vector(6 downto 0);

		
		component DetectorFlanco
			port(
				e       : in std_logic;
				reset_n : in std_logic;
				clk     : in std_logic;
				s       : out std_logic
			);
		end component;
	
		component Microondas
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
		end component;
		
		component BinA7Seg
			port(
				num : in std_logic_vector(3 downto 0);
				s : out std_logic_vector(6 downto 0)
				);
		end component;
		begin 
		
			Detectorp1 : DetectorFlanco
				port map(
					e => p1,
					reset_n => reset_n,
					clk => clk,
					s => p_1
					);
			
			Detectorp2 : DetectorFlanco
				port map(
					e => p2,
					reset_n => reset_n,
					clk => clk,
					s => p_2
					);
			
			
			Micro : Microondas
				port map(
					clk => clk,
					reset_n => reset_n,
					p1 => p_1,
					p2 => p_2,
					puerta => puerta,
					enc_temp => enc_temp,
					fin => fin,
					horno_on => horno_on,
					abierta => abierta,
					ent_p => ent_p,
					cnt_min => cnt_mins,
					cnt_seg => cnt_secs
					);
			
			
			Display1 : BinA7Seg -- primer display empezando por la derecha
				port map(
					num => cnt_secs(3 downto 0),
					s => d_a
					);
			Display2 : BinA7Seg -- segundo display empezando por la derecha
				port map(
					num => '0' & cnt_secs(6 downto 4),
					s => d_b
					);
			Display3 : BinA7Seg -- tercer display empezando por la derecha
				port map(
					num => cnt_mins(3 downto 0),
					s => d_c
					);
			Display4 : BinA7Seg -- cuarto display empezando por la derecha
				port map(
					num => '0' & cnt_mins(6 downto 4),
					s => d_d
					);
					
			end behavioural;
			
	