
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity controleurSon_TB is
--  Port ( );
end controleurSon_TB;

architecture Behavioral of controleurSon_TB is
    component controleurSon
    Port (clk : in STD_LOGIC;
	signalEntree : in STD_LOGIC;
	Son : out STD_LOGIC);
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, signalEntree, Son : STD_LOGIC;
begin
    UPP : controleurSon port map (clk=>clk,signalEntree=>signalEntree,Son=>Son) ;
    -- Clock process definitions
    clk_process :process
    begin
	signalEntree<='1';
	clk<='1';
	wait for clk_period/2;
	clk<='0';
	wait for clk_period/2;
     end process; 
    
end Behavioral;
