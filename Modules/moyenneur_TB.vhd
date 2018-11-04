

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity moyenneur_TB is
--  Port ( );
end moyenneur_TB;

architecture Behavioral of moyenneur_TB is
    component moyenneur
    Port ( S1 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	S2 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	S3 : in STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	moyenne : out STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0'));
    end component; 
    
	signal S1 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0');
	signal S2 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0');
	signal S3 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0');
	signal moyenne : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0');
begin
    UPP : moyenneur port map (S1=>S1, S2=>S2, S3=>S3,moyenne=>moyenne) ;

   
    process
    begin
	S1<="110000000000000000000000010";
	S2<="110000000000000000000000100";
	S3<="110000000000000000000000110";
        wait for 10 ns;

     end process; 
end Behavioral;