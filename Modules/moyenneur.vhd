library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity moyenneur is
	Port ( S1 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	S2 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	S3 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	moyenne : out STD_LOGIC_VECTOR (26 downto 0):=(OTHERS=>'0'));
end moyenneur;

architecture Behavioral of moyenneur is
	constant const : UNSIGNED (31 downto 0):="00000000000000000000000000000011";
	signal moyenneTemp : UNSIGNED (31 downto 0);


	begin
	moyenneTemp<=(RESIZE(UNSIGNED(S1),32)+RESIZE(UNSIGNED(S1),32)+RESIZE(UNSIGNED(S1),32))/const;
	moyenne<=STD_LOGIC_VECTOR(RESIZE(moyenneTemp,27));
end Behavioral; 