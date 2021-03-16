library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity  is
	port (
		A_in, B_in 		:in std_logic_vector(4 downto 0);
		sel_in			:in std_logic_vector(2 downto 0);
		S_out			:out std_logic_vector(4 downto 0);
		OV_out			:out std_logic
	) ;
end ;

architecture alu_arc of  alu is

	SIGNAL Bmux : std_logic_vector(4 downto 0);

	SIGNAL prod : std_logic_vector(4 downto 0);
	SIGNAL sum 	: std_logic_vector(4 downto 0);
	SIGNAL slog : std_logic_vector(4 downto 0);

	SIGNAL ovsum, ovprod :std_logic;

	SIGNAL sel_ov, sel_r, sel_b :std_logic;
	Signal sel_s, sel_log		:std_logic_vector(1 downto 0);

	COMPONENT Control
			PORT(
				sel 					: in std_logic_vector (2 downto 0);
				sel_ov, sel_r, sel_b 	: out std_logic;
				sel_s, sel_log 			: out std_logic_vector (1 downto 0)
				);
		END COMPONENT;

	COMPONENT Multiplicador5Bits_C2
			PORT(
				A,B 	: in std_logic_vector (4 downto 0);
				S 		: out std_logic_vector (4 downto 0);
				ov 		: out std_logic
				);
		END COMPONENT;

	COMPONENT mux
			PORT(
				e0, e1 	: in std_logic;
				sel		: in std_logic;
				s 		: out std_logic
				);
		END COMPONENT;

	COMPONENT mux5bits
			PORT(
				e0, e1 	: in std_logic_vector(4 downto 0);
				sel		: in std_logic;
				s 		: out std_logic_vector(4 downto 0)
				);
		END COMPONENT;

	COMPONENT mux5bits3to1
			PORT(
				e0, e1, e2 	: in std_logic_vector(4 downto 0);
				sel			: in std_logic;
				s 			: out std_logic_vector(4 downto 0)
				);
		END COMPONENT;

	COMPONENT Sumador_Restador5bits
			PORT(
				a, b 	: in std_logic_vector(4 downto 0);
				s 		: out std_logic_vector(4 downto 0);
				c_out 	: out std_logic;
				s_r 	: in std_logic
				);
		END COMPONENT;

	COMPONENT U_Func_Log
			PORT(
				a , b 	: in std_logic_vector(4 downto 0);
				sel_log : in std_logic_vector(1 downto 0);
				S 		: out std_logic_vector(4 downto 0)
				);
		END COMPONENT;

begin
	
	icontrol : Control
			PORT MAP(
				sel => sel_in, sel_ov => sel _ov, sel_r => sel_r, sel_b => sel_b,
				sel_s => sel_s, sel_log => sel _log
				);
	imux5bits : mux5bits
			PORT MAP(
				sel => sel_b, e0 => "00001", e1 => B_in, S => Bmux
				);
	isumador : Sumador_Restador5bits
			PORT MAP(
				A => A_in, B => Bmux, S => sum, c_out=> ovsum, s_r => sel_r
				);
	imultiplicador : Multiplicador5Bits_C2
			PORT MAP(
				A => A_in, B => B_in, S => prod, ov => ovprod
				);
	iunidadlog : U_Func_Log
			PORT MAP(
				A => A_in, B => B_in, sel_log => sel_log, S => slog 
				);
	imux5bits3to1 : mux5bits3to1
			PORT MAP(
				e0 => slog, e1 => prod, e2 => sum, sel => sel_s, S => S_out
				);
	imux : mux
			PORT MAP(
				sel => sel_ov, e0 => ovprod, e1 => ovsum, S => OV_out
				);
end  alu_arc;