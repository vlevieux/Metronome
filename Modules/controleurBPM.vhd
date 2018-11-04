library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity controleurBPM is
    Port ( clk : in STD_LOGIC;
	moreone : in STD_LOGIC;
	lessone : in STD_LOGIC;
	tap : in STD_LOGIC;
	bpmCount : out STD_LOGIC_VECTOR(26 downto 0);
	bpm : out STD_LOGIC_VECTOR(8 downto 0));
	
end controleurBPM;

architecture Behavioral of controleurBPM is
	signal bpmNorm : std_logic_vector(8 downto 0):="001111000";
	signal tapbpm : std_logic_vector(8 downto 0):="001111000";
	signal tapCount : STD_LOGIC_VECTOR(26 downto 0);
begin
    u1 : entity work.selecteurBPM port map (clk=>clk, moreone=>moreone, lessone=>lessone, tapbpm=>tapbpm, bpm=>bpmNorm) ;
    u2 : entity work.convBPMcount port map (bpm=>bpmNorm, bpmCount=>bpmCount);
    u3 : entity work.convCountBPM port map (count=>tapCount, bpm=>tapbpm);
    u4 : entity work.tapfunction port map (clk=>clk, tap=>tap, tapCount=>tapCount);
    bpm<=bpmNorm;
end Behavioral; 