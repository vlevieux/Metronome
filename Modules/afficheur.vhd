
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity afficheur is
    Port ( bpmNorm : in std_logic_vector(8 downto 0);
	A : out STD_LOGIC_VECTOR (3 downto 0);
	B : out STD_LOGIC_VECTOR (3 downto 0);
	C : out STD_LOGIC_VECTOR (3 downto 0);
	D : out STD_LOGIC_VECTOR (3 downto 0));
end afficheur;


architecture Behavioral of afficheur is
	signal temp : INTEGER;
begin
	A<="0000";
	B<=std_logic_vector(resize(unsigned(bpmNorm)/100, 4));
	C<=std_logic_vector(resize((unsigned(bpmNorm) mod 100)/10,4));
	D<=std_logic_vector(resize(unsigned(bpmNorm) mod 10,4));
end Behavioral;