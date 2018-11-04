library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity SignalGenerator is
	Port (clk : in STD_LOGIC;
		bpm : in STD_LOGIC_VECTOR(26 downto 0);
		O : out STD_LOGIC);
end SignalGenerator;

architecture Behavioral of SignalGenerator is
	signal cursor: STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	--300:100101100

	begin
	process(CLK)begin
		if clk'event and clk='1' then
			if(cursor<bpm)then
				cursor<=cursor+1;
			else
				cursor<=(OTHERS =>'0'); 
			end if;
		end if;
	end process;
	O<= '0'  when cursor<bpm  else '1';
end Behavioral; 