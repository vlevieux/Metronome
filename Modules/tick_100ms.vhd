library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity TICK_100ms is
	Port (clk : in STD_LOGIC;
		Tick : out STD_LOGIC);
end TICK_100ms;

architecture Behavioral of TICK_100ms is
	signal Q: STD_LOGIC_VECTOR(23 downto 0):=(OTHERS => '0');


	begin
	process(CLK)begin
		if clk'event and clk='1' then
			if(Q<"100110001001011010000000")then --10011000100101101000000
				Q<=Q+1;
			else
				Q<=(OTHERS =>'0'); 
			end if;
		end if;
	end process;
	Tick<= '0'  when Q<"100110001001011010000000"  else '1';
end Behavioral; 