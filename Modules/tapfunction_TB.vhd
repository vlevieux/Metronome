
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tapfunction_TB is
--  Port ( );
end tapfunction_TB;

architecture Behavioral of tapfunction_TB is
    component tapfunction
    Port (clk : in STD_LOGIC;
		tap : in STD_LOGIC;
		count : out STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0'));
    end component; 
    constant clk_period : time := 10 ns; 
    
	signal clk, tap : STD_LOGIC;
	signal count : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0');
begin
    UPP : tapfunction port map (clk=>clk,tap=>tap, count=>count) ;
    -- Clock process definitions
    clk_process :process
    begin
	tap<='1';
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;

	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;

	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;

	tap<='0';
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;

	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;

     end process; 
    
end Behavioral;