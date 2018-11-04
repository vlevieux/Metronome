library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity selecteurBPM is
	Port (clk : in STD_LOGIC;
		moreone : in STD_LOGIC;
		lessone : in STD_LOGIC;
		tapbpm : in STD_LOGIC_VECTOR(8 downto 0);
		bpm : out STD_LOGIC_VECTOR(8 downto 0):="001111000");
end selecteurBPM;

architecture Behavioral of selecteurBPM is
	signal bpmtemp: STD_LOGIC_VECTOR(8 downto 0):="001111000";
	signal tick_100ms : STD_LOGIC;
		

	begin
	tick_module : entity work.tick_100ms port map (clk=>clk, tick=>tick_100ms) ;

	process(CLK)begin
		if clk'event and clk='1' then
			if(moreone='1' and tick_100ms='1')then
				bpmtemp<=bpmtemp+1;
			elsif(lessone='1' and tick_100ms='1')then
				bpmtemp<=bpmtemp-1; 
			elsif(tapbpm /= "000000000") then
				bpmtemp<=tapbpm;
			end if;
		end if;
	end process;
	bpm<= bpmtemp;
end Behavioral; 
