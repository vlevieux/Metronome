
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity metronome_TB is
--  Port ( );
end metronome_TB;

architecture Behavioral of metronome_TB is
    component metronome
    Port (clk : in STD_LOGIC;
	moreone : in STD_LOGIC;
	lessone : in STD_LOGIC;
	tap : in STD_LOGIC;
	led : out STD_LOGIC_VECTOR(7 downto 0);
	ENAN : out STD_LOGIC_VECTOR(3 downto 0);
	S : out STD_LOGIC_VECTOR(6 downto 0);
	Son : out STD_LOGIC);
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk : STD_LOGIC;
	signal moreone : STD_LOGIC;
	signal lessone : STD_LOGIC;
	signal tap : STD_LOGIC;
	signal led : STD_LOGIC_VECTOR(7 downto 0);
	signal ENAN : STD_LOGIC_VECTOR(3 downto 0);
	signal S : STD_LOGIC_VECTOR(6 downto 0);
	signal Son : STD_LOGIC;
begin
    UPP : metronome port map (clk=>clk,moreone=>moreone, lessone=>lessone, tap=>tap, led=>led, ENAN=>ENAN, S=>S, Son=>Son) ;
    -- Clock process definitions
    clk_process :process
    begin
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;
     end process; 
    
end Behavioral;