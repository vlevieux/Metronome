library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity TICK_subbpm is
	Port (clk : in STD_LOGIC;
		subbpm : in STD_LOGIC_VECTOR (23 downto 0):= (others => '0');
		Tick : out STD_LOGIC);
end TICK_subbpm;

architecture Behavioral of TICK_subbpm is
	signal Q: STD_LOGIC_VECTOR(23 downto 0):=(OTHERS => '0');


	begin
	process(CLK)begin
		if clk'event and clk='1' then
			if(Q<subbpm)then
				Q<=Q+1;
			else
				Q<=(OTHERS =>'0'); 
			end if;
		end if;
	end process;
	Tick<= '0'  when Q<subbpm else '1';
end Behavioral; 