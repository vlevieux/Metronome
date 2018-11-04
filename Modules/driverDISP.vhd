
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity driverDISP is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end driverDISP;


architecture Behavioral of driverDISP is
	signal raz, En : STD_LOGIC;
	signal N : STD_LOGIC_VECTOR (1 downto 0);
begin
    u1 : entity work.Disp1of4Digits port map (A=> A, B=> B, C=>C, D=>D, N=>N, S=>S, ENAN=>ENAN) ;
    u2 : entity work.Compteur port map (qs=>N, clk=>clk, raz=>raz, En=>En);
    u3 : entity work.tick_1ms port map (clk=>clk, Tick=>En);
    raz<= '1' when N="11" and En='1' else '0';
end Behavioral;