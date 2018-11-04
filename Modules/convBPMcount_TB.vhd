library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity convBPMcount_TB is
--  Port ( );
end convBPMcount_TB;

architecture Behavioral of convBPMcount_TB is
    component convBPMcount
    Port ( bpm : in std_logic_vector(8 downto 0):="001111000";
	bpmCount : out std_logic_vector(26 downto 0));
    end component;
 
	signal bpm : std_logic_vector(8 downto 0);
	signal bpmCount : std_logic_vector (26 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP :  convBPMcount port map(bpm=>bpm, bpmCount=>bpmCount);

    process
    begin
	bpm<= "001111000";
        wait for 10 ns;
	wait for 10 ns;

     end process; 
    
end Behavioral;