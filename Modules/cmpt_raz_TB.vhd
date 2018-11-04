

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity cmpt_raz_TB is
--  Port ( );
end cmpt_raz_TB;

architecture Behavioral of cmpt_raz_TB is
    component Compteur
    Port (clk,raz, En :IN std_logic;
  qs : OUT std_logic_vector(1 downto 0));
    end component; 
    
	signal clk, raz, En : STD_LOGIC;
	signal qs : STD_LOGIC_VECTOR (1 downto 0);
	constant CLK_period : time := 10 ns; 
begin
    UPP : Compteur port map (clk=>clk,raz=>raz,En=>En,qs=>qs) ;
    -- Clock process definitions
	CLK_process :process
 	begin
 	CLK <= '0';
 	wait for CLK_period/2;
 	CLK <= '1';
 	wait for CLK_period/2;
 	end process;

    process
    begin
        raz <= '1';
        wait for 10 ns;
        raz <= '0';
	wait for 10 ns;
	En <= '1';
	wait for 20 ns;
	En <= '0';
	wait for 20 ns;
	En <= '1';
	wait for 20 ns;
	En <= '0';
	wait for 20 ns;
	raz <= '1';
        wait for 10 ns;
        raz <= '0';
	wait for 10 ns;
	En <= '1';
	wait for 20 ns;
	En <= '0';
	wait for 20 ns;
     end process; 
    
end Behavioral;