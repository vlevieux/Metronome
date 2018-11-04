
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity Disp1Digit is
    Port ( V : in STD_LOGIC_VECTOR (3 downto 0);
           N : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end Disp1Digit;

architecture Behavioral of Disp1Digit is
type tt is array (0 to 15) of std_logic_vector(6 downto 0);
constant table:tt:=("1000000","1111001","0100100","0110000","0011001","0010010","0000010","1111000","0000000","0010000","0111111","1000000","1000000","1000000","1000000","1000000");

begin
    S <= table(conv_integer(V));
    ENAN <= "1110" when N="00" else
    "1101" when N="01" else
    "1011" when N="10" else
    "0111";
end Behavioral;