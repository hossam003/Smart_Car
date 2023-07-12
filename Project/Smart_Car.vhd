LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY Smart_Car IS
	PORT(infra : IN  STD_LOGIC;
		  lane  : IN  STD_LOGIC;
		  motor : OUT STD_LOGIC;
		  A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  L : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  E : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  R : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  T : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Smart_car;

ARCHITECTURE arch OF Smart_Car IS
	BEGIN
		PROCESS(lane, infra)
		BEGIN
			IF lane = '1' THEN
				A <= "10001000";
				L <= "11000111";
				E <= "10000110";
				R <= "11001110";
				T <= "10000111";
			ELSE
				A <= "11111111";
				L <= "11111111";
				E <= "11111111";
				R <= "11111111";
				T <= "11111111";
			END IF;
			IF infra = '0' THEN
				motor <= '0';
			ELSE
				motor <= '1';
			END IF;
		END PROCESS;
	END arch;