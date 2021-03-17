library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity Control is
	port (
		sel : in std_logic_vector (2 downto 0);
		sel_ov, sel_r, sel_b : out std_logic;
		sel_s, sel_log : out std_logic_vector (1 downto 0)
	) ;
end Control;
--sel_s aritmetica 00, multiplicador 01 sumador 10 bien
--sel_log and 00 or 01 xor 10 not 11 bien
--ov 1 multiplicador 0 sumador bien
--sumar r=0 restar r=1 bien
--+1 sel_b=0 b sel_b=1 bien

architecture Control_arc of Control is

begin
	process (sel)

	begin
		if sel="000" then
			sel_ov<='0';
			sel_r<='0';
			sel_b<='-';
			sel_s<="00";
			sel_log<="00";


		elsif sel="001" then
			sel_ov<='0';
			sel_r<='0';
			sel_b<='-';
			sel_s<="00";
			sel_log<="01";

		elsif sel="010" then
			sel_ov<='0';
			sel_r<='0';
			sel_b<='-';
			sel_s<="00";
			sel_log<="10";

		elsif sel="011" then
			sel_ov<='0';
			sel_r<='0';
			sel_b<='-';
			sel_s<="00";
			sel_log<="11";

		elsif sel="100" then
			sel_ov<='1';
			sel_r<='0';
			sel_b<='1';
			sel_s<="10";
			sel_log<="--";

		elsif sel="101" then
			sel_ov<='1';
			sel_r<='1';
			sel_b<='1';
			sel_s<="10";
			sel_log<="--";

		elsif sel="110" then
			sel_ov<='1';
			sel_r<='0';
			sel_b<='0';
			sel_s<="10";
			sel_log<="--";

		elsif sel="111" then
			sel_ov<='0';
			sel_r<='-';
			sel_b<='-';
			sel_s<="01";
			sel_log<="--";
		end if;

    end process;

end  Control_arc;