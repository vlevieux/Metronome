
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity convBPMcount is
	Port (	bpm : in std_logic_vector(8 downto 0):="001111000";
	bpmCount : out std_logic_vector(26 downto 0));
end convBPMcount;

architecture Behavioral of convBPMcount is
constant second : UNSIGNED (5 downto 0):="111100";
constant echant : UNSIGNED (26 downto 0):="101111101011110000100000000";
	begin
	bpmCount<= "000000000000000000000000000" when bpm="000000000" else std_logic_vector(RESIZE((second*echant)/UNSIGNED(bpm), 27));
end Behavioral; 