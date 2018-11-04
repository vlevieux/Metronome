
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity convCountBPM is
	Port (	count : in std_logic_vector(26 downto 0);
	bpm : out std_logic_vector(8 downto 0):="001111000");
end convCountBPM;

architecture Behavioral of convCountBPM is
constant second : UNSIGNED (5 downto 0):="111100";
constant echant : UNSIGNED (26 downto 0):="101111101011110000100000000";
	begin
	bpm<= "000000000" when (count="000000000000000000000000000") else std_logic_vector(RESIZE((second*echant)/UNSIGNED(count), 9));

end Behavioral; 