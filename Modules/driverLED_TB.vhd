
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity driverLED_TB is
--  Port ( );
end driverLED_TB;

architecture Behavioral of driverLED_TB is
    component driverLED
    Port (N : in STD_LOGIC_VECTOR (2 downto 0);
	S_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal N : STD_LOGIC_VECTOR (2 downto 0);
	signal S_out : STD_LOGIC_VECTOR (7 downto 0);
begin
    UPP : driverLED port map (N=>N,S_out=>S_out) ;
    -- Clock process definitions
    clk_process :process
    begin
        N <= "001";
        wait for 10 ns;
        N <= "010";
        wait for 10 ns;
	N <= "011";
        wait for 10 ns;
	N <= "100";
        wait for 10 ns;
	N <= "101";
        wait for 10 ns;
	N <= "110";
        wait for 10 ns;
	N <= "111";
        wait for 10 ns;
	N <= "110";
        wait for 10 ns;
     end process; 
    
end Behavioral;
