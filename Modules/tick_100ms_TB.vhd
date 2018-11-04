
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TICK_100ms_TB is
--  Port ( );
end TICK_100ms_TB;

architecture Behavioral of TICK_100ms_TB is
    component TICK_100ms
    Port (clk : in STD_LOGIC;
	Tick : out STD_LOGIC);
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, Tick : STD_LOGIC;
begin
    UPP : TICK_100ms port map (clk=>clk,Tick=>Tick) ;
    -- Clock process definitions
    clk_process :process
    begin
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;
     end process; 
    
end Behavioral;