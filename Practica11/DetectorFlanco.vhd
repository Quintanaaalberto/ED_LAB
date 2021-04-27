LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY DetectorFlanco IS 
	PORT(
		e : in std_logic;
		reset_n : in std_logic;
		clk : in std_logic;
		s : out std_logic
		);
END DetectorFlanco;

ARCHITECTURE behavioural OF DetectorFlanco IS 

	TYPE t_est IS ( E0 , E1 , E2);

	SIGNAL est_act , est_sig : t_est;

	BEGIN
	
	VarEstado : PROCESS (clk , reset_n)
		BEGIN
			IF reset_n = '0' THEN
				est_act <= E0;
			ELSIF clk' event and clk = '1' THEN
				est_act <= est_sig;
			END IF;
	END PROCESS VarEstado;
	
	TransicionEstados : PROCESS( est_act, e)
	
	BEGIN
		est_sig <= est_act;
		CASE est_act IS 
			WHEN E0 =>
				IF e = '1' THEN 
					est_sig <= E1;
				END IF;
			WHEN E1 =>
				IF e = '0' THEN 
					est_sig <= E2;
				END IF;
			WHEN E2 =>
				IF e = '1' THEN 
					est_sig <= E1;
				ELSE 
					est_sig <= E0;
				END IF;
			WHEN others => 
					est_sig <= E0;
		END CASE;
	END PROCESS TransicionEstados;
	
	Salidas : PROCESS(est_act)
	
	BEGIN
	
		s <= '0';
		CASE est_act IS 
			WHEN E0 => null;
			WHEN E1 => null;
			WHEN E2 => s <= '1';
			WHEN others => null;
		END CASE;
	END PROCESS Salidas;
	END behavioural;
				
				
				