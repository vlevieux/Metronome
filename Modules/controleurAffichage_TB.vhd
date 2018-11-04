
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity controleurAffichage_TB is
--  Port ( );
end controleurAffichage_TB;

architecture Behavioral of controleurAffichage_TB is
    component controleurAffichage
    Port ( bpm : in STD_LOGIC_VECTOR(8 downto 0);
           clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
 
	signal bpm : STD_LOGIC_VECTOR(8 downto 0);
           signal clk : STD_LOGIC;
           signal S : STD_LOGIC_VECTOR (6 downto 0);
           signal ENAN : STD_LOGIC_VECTOR (3 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP : controleurAffichage port map(clk=>clk, bpm=>bpm, S=>S, ENAN=>ENAN) ;

    process
    begin
	bpm<= "001111000";
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
	clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
	clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
     end process; 
    
end Behavioral;