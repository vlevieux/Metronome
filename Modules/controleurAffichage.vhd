
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity controleurAffichage is
    Port ( bpm : in STD_LOGIC_VECTOR(8 downto 0);
           clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end controleurAffichage;


architecture Behavioral of controleurAffichage is
	signal A : STD_LOGIC_VECTOR (3 downto 0);
	signal B : STD_LOGIC_VECTOR (3 downto 0);
	signal C : STD_LOGIC_VECTOR (3 downto 0);
	signal D : STD_LOGIC_VECTOR (3 downto 0);
begin
    u1 : entity work.driverDISP port map (A=> A, B=> B, C=>C, D=>D, clk=>clk, S=>S, ENAN=>ENAN) ;
    u2 : entity work.afficheur port map (bpmNorm=>bpm, A=> A, B=> B, C=>C, D=>D);
end Behavioral;