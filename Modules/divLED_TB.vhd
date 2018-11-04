library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity divLED_TB is
--  Port ( );
end divLED_TB;

architecture Behavioral of divLED_TB is
    component divLED
    Port ( clk : in STD_LOGIC;
	signalEntree : out STD_LOGIC;
	EN : in STD_LOGIC;
	N : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
 
	signal clk : STD_LOGIC;
	signal signalEntree : STD_LOGIC;
	signal EN : STD_LOGIC;
	signal N : STD_LOGIC_VECTOR (2 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP : divLED port map (clk=>clk, signalEntree=>signalEntree, EN=>EN, N=>N);

    div :process
    begin
	clk<='1';
	signalEntree<='1';
	wait for 10 ns;
	clk<='0';
	signalENtree<='0';
 	wait for 10 ns;
	clk<='1';
	EN<='1';
	wait for 10 ns;
	clk<='0';
	EN<='0';
	wait for 10 ns;
     end process; 
    
end Behavioral;