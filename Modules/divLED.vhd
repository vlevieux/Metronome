library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity divLED is
    Port ( clk : in STD_LOGIC;
	signalEntree : out STD_LOGIC;
	EN : in STD_LOGIC;
	N : out STD_LOGIC_VECTOR (2 downto 0));
end divLED;

architecture Behavioral of divLED is

signal Ntemp : STD_LOGIC_VECTOR (2 downto 0):= (others => '0');
signal retour : STD_LOGIC:='0';

begin

	process(CLK)begin
		if clk'event and clk='1' then
			if (Ntemp="000" or Ntemp="111") then
				signalEntree<='1';
			else
				signalEntree<='0';
			end if;
			if(Ntemp="000")then
				retour<='0';
			end if;
			if (Ntemp="111") then
				retour<='1';
			end if;
			if (retour='0' and EN='1') then
				Ntemp<=Ntemp+1;
			end if;
			if (retour='1' and EN='1') then
				Ntemp<=Ntemp-1;
			end if;
		end if;
	end process;
	N<=Ntemp;


end Behavioral;
