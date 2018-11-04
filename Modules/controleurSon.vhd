library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity controleurSon is
    Port ( clk : in STD_LOGIC;
	signalEntree : in STD_LOGIC;
	Son : out STD_LOGIC);
end controleurSon;

architecture Behavioral of controleurSon is

signal Q: STD_LOGIC_VECTOR(17 downto 0):=(OTHERS => '0');
signal etat: STD_LOGIC:='1';
signal etatprec : STD_LOGIC:='1';

begin

	process(CLK)begin
		if clk'event and clk='1' then
			if (SignalEntree='1' and Q<"110111011111001000") then --110111011111001000
				Q<=Q+1;
				etatprec<=etat;
			else
				Q<=(OTHERS =>'0');
				etatprec<=etat;
			end if;
		end if;
	end process;
	etat<='0' when etatprec='1' and Q="110111011111001000" else '1' when etatprec='0' and Q="110111011111001000" else etatprec;
	Son<=etat;


end Behavioral;
