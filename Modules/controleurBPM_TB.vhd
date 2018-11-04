library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity controleurBPM_TB is
--  Port ( );
end controleurBPM_TB;

architecture Behavioral of controleurBPM_TB is
    component controleurBPM
    Port ( clk : in STD_LOGIC;
	moreone : in STD_LOGIC;
	lessone : in STD_LOGIC;
	tap : in STD_LOGIC;
	bpmCount : out STD_LOGIC_VECTOR(26 downto 0);
	bpm : out STD_LOGIC_VECTOR(8 downto 0));
    end component;
 
	signal clk : STD_LOGIC;
	signal moreone : STD_LOGIC;
	signal lessone : STD_LOGIC;
	signal tap : STD_LOGIC;
	signal bpmCount : STD_LOGIC_VECTOR(26 downto 0);
	signal bpm : STD_LOGIC_VECTOR(8 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP :  controleurBPM port map(clk=>clk, moreone=>moreone, lessone=>lessone, tap=>tap, bpm=>bpm, bpmCount=>bpmCount) ;

    process
    begin
	moreone<= '0';
	lessone<='0';
	tap<='1';
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
	tap<='0';
	clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	moreone<='0';
	lessone<='0';
	wait for 10 ns;
	clk <= '1';
        wait for 10 ns;
      	clk <= '0';
	wait for 10 ns;
     end process; 
    
end Behavioral;