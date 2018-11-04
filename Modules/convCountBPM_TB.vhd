
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity convCountBPM_TB is
--  Port ( );
end convCountBPM_TB;

architecture Behavioral of convCountBPM_TB is
    component convCountBPM
    Port ( count : in std_logic_vector(26 downto 0);
	bpm : out std_logic_vector(8 downto 0):="001111000");
    end component;
 
	signal count : std_logic_vector(26 downto 0);
	signal bpm : std_logic_vector (8 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP :  convCountBPM port map(count=>count, bpm=>bpm);

    process
    begin
	count<= "010111110101111000010000000";
        wait for 10 ns;
	count<= "010100011011111001010110110";
	wait for 10 ns;

     end process; 
    
end Behavioral;