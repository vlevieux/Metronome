
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity selecteurBPM_TB is
--  Port ( );
end selecteurBPM_TB;

architecture Behavioral of selecteurBPM_TB is
    component selecteurBPM
    Port (clk : in STD_LOGIC;
		moreone : in STD_LOGIC;
		lessone : in STD_LOGIC;
		tapbpm : in STD_LOGIC_VECTOR(8 downto 0);
		bpm : out STD_LOGIC_VECTOR(8 downto 0):="001111000");
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, moreone, lessone : STD_LOGIC;
	signal tapbpm : STD_LOGIC_VECTOR (8 downto 0);
	signal bpm : STD_LOGIC_VECTOR(8 downto 0):="001111000";
begin
    UPP : selecteurBPM port map (clk=>clk,moreone=>moreone, lessone=>lessone, tapbpm=>tapbpm, bpm=>bpm) ;
    -- Clock process definitions
    clk_process :process
    begin
	moreone<='1';
	tapbpm<="000000000";
	lessone<='0';
	clk<='1';
	wait for clk_period/2;
	clk<='0';
	wait for clk_period/2;
	moreone<='0';
	tapbpm<="000000000";
	lessone<='0';
	clk<='1';
	wait for clk_period/2;
	clk<='0';
	wait for clk_period/2;
	moreone<='0';
	tapbpm<="001111000";
	lessone<='0';
	clk<='1';
	wait for clk_period/2;
	clk<='0';
	wait for clk_period/2;
     end process; 
    
end Behavioral;