library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TICK_subbpm_TB is
--  Port ( );
end TICK_subbpm_TB;

architecture Behavioral of TICK_subbpm_TB is
    component TICK_subbpm
    Port (clk : in STD_LOGIC;
	subbpm : in STD_LOGIC_VECTOR (23 downto 0);
	Tick : out STD_LOGIC);
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, Tick : STD_LOGIC;
	signal subbpm :  STD_LOGIC_VECTOR (23 downto 0):="000000000000000000001000";
begin
    UPP : TICK_subbpm port map (clk=>clk,subbpm=>subbpm, Tick=>Tick) ;
    -- Clock process definitions
    clk_process :process
    begin
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;
     end process; 
    
end Behavioral;