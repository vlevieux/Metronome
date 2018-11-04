library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity controleurLED is
    Port ( clk : in STD_LOGIC;
	bpm : in STD_LOGIC_VECTOR(26 downto 0):="010111110101111000010000000";
	signalEntree : out STD_LOGIC;
	S_out : out STD_LOGIC_VECTOR (7 downto 0));
end controleurLED;

architecture Behavioral of controleurLED is
	signal subbpm : STD_LOGIC_VECTOR (23 downto 0):= (others => '0');
	signal EN : STD_LOGIC;
	signal N : STD_LOGIC_VECTOR (2 downto 0);
begin
	subbpm <= bpm(26 downto 3);
    u1 : entity work.tick_subbpm port map (clk=>clk, subbpm=>subbpm, Tick=>EN) ;
    u2 : entity work.divLED port map (clk=>clk, signalEntree=>signalEntree, EN=>EN, N=>N);
    u3 : entity work.driverLED port map(N=>N, S_out=>S_out);
end Behavioral; 