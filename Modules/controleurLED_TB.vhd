library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity controleurLED_TB is
--  Port ( );
end controleurLED_TB;

architecture Behavioral of controleurLED_TB is
    component controleurLED
    Port ( clk : in STD_LOGIC;
	bpm : in STD_LOGIC_VECTOR(26 downto 0);
	signalEntree : out STD_LOGIC;
	S_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
 
	signal clk : STD_LOGIC;
	signal bpm : STD_LOGIC_VECTOR(26 downto 0);
	signal signalEntree : STD_LOGIC;
	signal S_out : STD_LOGIC_VECTOR (7 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP :  controleurLED port map(clk=>clk, bpm=>bpm, signalEntree=>signalEntree, S_out=>S_out) ;

    process
    begin
	bpm<= "000000000000000000001000000";
        clk <= '1';
        wait for CLK_PERIOD/2;
      	clk <= '0';
	wait for CLK_PERIOD/2;

     end process; 
    
end Behavioral;