
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all;
ENTITY Compteur IS
PORT (
  clk,raz, En :IN std_logic;
  qs : OUT std_logic_vector(1 downto 0)); -- sortie véritable
END Compteur;
ARCHITECTURE aCmpt OF Compteur IS
SIGNAL q : std_logic_vector(1 downto 0):="00"; -- signal intermédiaire
BEGIN
-- RAZ synchrone
  PROCESS(clk) BEGIN
    IF clk'event and clk='1' THEN
      IF raz='1' THEN
        q<=(OTHERS=>'0');
      ELSIF EN='1' THEN
        q <= q + 1;
      END IF;
    END IF;
  
  END PROCESS;
  qs <= q;

END aCmpt;
