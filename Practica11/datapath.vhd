library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is 
	port (
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
	end datapath;
	
	architecture behavioural of datapath is
		
		signal co10seg : std_logic;
		signal co10min : std_logic;
		signal co6seg  : std_logic;
		signal co6min  : std_logic;
		signal coM50   : std_logic;
		
		
		component ContadorDescM6 
			port(
				clk     : in std_logic;
				reset_n : in std_logic;
				en      : in std_logic;
				carga   : in std_logic;
				e_p     : in std_logic_vector(2 downto 0);
				co      : out std_logic;
				s       : out std_logic_vector(2 downto 0)
				);
		end component;
		
		component ContadorDescM10 
			port(
				clk     : in std_logic;
				reset_n : in std_logic;
				en      : in std_logic;
				carga   : in std_logic;
				e_p     : in std_logic_vector(3 downto 0);
				co      : out std_logic;
				s       : out std_logic_vector(3 downto 0)
				);
		end component;

		component ContAscM50 
			port(
				clk     : in std_logic;
				reset_n : in std_logic;
				en      : in std_logic;
				co      : out std_logic
				);
		end component;
		
		
		begin
		
		contadorM50 : ContAscM50
			port map(
				clk => clk, 
				reset_n => reset_n, 
				en => en_cnt, 
				co => coM50
				);
				
		contadorM10sec : ContadorDescM10
			port map(
				clk => clk,
				reset_n => reset_n,
				en => coM50,
				carga => carga_seg,
				e_p => ent_p(3 downto 0),
				co => co10seg,
				s => cnt_seg(3 downto 0)
				);
				
		contadorM6seg : ContadorDescM6
			port map(
				clk => clk,
				reset_n => reset_n,
				en => co10seg,
				carga => carga_seg,
				e_p => ent_p(6 downto 4),
				co => co6seg,
				s => cnt_seg(6 downto 4)
				);
				
		contadorM10min : ContadorDescM10
			port map(
				clk => clk,
				reset_n => reset_n,
				en => co6seg,
				carga => carga_min,
				e_p => ent_p(3 downto 0),
				co => co10min,
				s => cnt_min(3 downto 0)
				);
		
		contadorM6min : ContadorDescM6
			port map(
				clk => clk,
				reset_n => reset_n,
				en => co10min,
				carga => carga_min,
				e_p => ent_p(6 downto 4),
				co => co6min,
				s => cnt_min(6 downto 4)
				);
		
			process(co10min, co10seg, co6min, co6seg)
			begin
				
				if co10min = '1' and co6min = '1' and co10seg = '1' and co6seg = '1' then
					fin_cuenta <= '1';
				else
					fin_cuenta <= '0';
				end if;
			end process;
		end behavioural;
			