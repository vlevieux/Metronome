
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity afficheur_TB is
--  Port ( );
end afficheur_TB;

architecture Behavioral of afficheur_TB is
    component afficheur
    Port ( bpmNorm : in std_logic_vector(8 downto 0);
	A : out STD_LOGIC_VECTOR (3 downto 0);
	B : out STD_LOGIC_VECTOR (3 downto 0);
	C : out STD_LOGIC_VECTOR (3 downto 0);
	D : out STD_LOGIC_VECTOR (3 downto 0));
    end component; 
    
	signal A : STD_LOGIC_VECTOR (3 downto 0);
	signal B : STD_LOGIC_VECTOR (3 downto 0);
	signal C : STD_LOGIC_VECTOR (3 downto 0);
	signal D : STD_LOGIC_VECTOR (3 downto 0);
	signal bpmNorm : std_logic_vector(8 downto 0);
	constant CLK_period : time := 10 ns; 
begin
    UPP : afficheur port map (bpmNorm=>bpmNorm,A=>A,B=>B,C=>C,D=>D) ;
    
    process
    begin
	bpmNorm<="001111111";
        wait for 10 ns;
	wait for 10 ns;

     end process; 
    
end Behavioral;