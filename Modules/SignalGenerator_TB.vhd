library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SignalGenerator_TB is
--  Port ( );
end SignalGenerator_TB;

architecture Behavioral of SignalGenerator_TB is
    component SignalGenerator
    Port (clk : in STD_LOGIC;
	bpm : in STD_LOGIC_VECTOR(26 downto 0);
	O : out STD_LOGIC);
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, O : STD_LOGIC;
	signal bpm : STD_LOGIC_VECTOR(26 downto 0):="111001001110000111000000000";
begin
    UPP : SignalGenerator port map (clk=>clk,bpm=>bpm, O=>O);
    -- Clock process definitions
    clk_process :process
    begin
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;
     end process; 
    
end Behavioral;