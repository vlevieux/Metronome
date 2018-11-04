
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4x4v1x4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0)); 
end MUX4x4v1x4;

architecture Behavioral of MUX4x4v1x4 is
begin
    O <=    A when Sel="00" else 
            B when Sel="01" else 
            C when Sel="10" else 
            D ;
 
end Behavioral; 
