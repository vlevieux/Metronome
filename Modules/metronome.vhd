
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity metronome is
    Port (  clk : in STD_LOGIC;
	moreone : in STD_LOGIC;
	lessone : in STD_LOGIC;
	tap : in STD_LOGIC;
	led : out STD_LOGIC_VECTOR(7 downto 0);
	ENAN : out STD_LOGIC_VECTOR(3 downto 0);
	S : out STD_LOGIC_VECTOR(6 downto 0);
	Son : out STD_LOGIC);
end metronome;
architecture Behavioral of metronome is
	signal count : STD_LOGIC_VECTOR(26 downto 0);
	signal bpm : STD_LOGIC_VECTOR(8 downto 0);
	signal SignalEntree : STD_LOGIC:='0';
begin
    u1 : entity work.controleurBPM port map (clk=>clk, moreone=>moreone, lessone=>lessone, tap=>tap, bpm=>bpm, bpmCount=>count);
    u2 : entity work.controleurLED port map(clk=>clk,bpm=>count, S_out=>led, signalentree=>signalentree);
    u3 : entity work.controleurAffichage port map (bpm=>bpm, clk=>clk,S=>S,ENAN=>ENAN);
    u4 : entity work.controleurSon port map(clk=>clk, SignalEntree=>SignalEntree, Son=>Son);
end Behavioral; 