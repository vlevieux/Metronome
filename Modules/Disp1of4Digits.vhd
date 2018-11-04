
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity Disp1of4Digits is
    Port (  A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            C : in STD_LOGIC_VECTOR (3 downto 0);
            D : in STD_LOGIC_VECTOR (3 downto 0);
            N : in STD_LOGIC_VECTOR (1 downto 0);
	    ENAN : out STD_LOGIC_VECTOR (3 downto 0);
            S : out STD_LOGIC_VECTOR (6 downto 0));
end Disp1of4Digits;
architecture Behavioral of Disp1of4Digits is
 signal V: STD_LOGIC_VECTOR(3 downto 0);
begin
    u1 : entity work.MUX4x4v1x4 port map (A=> A, B=> B, C=>C, D=>D, Sel => N, O=>V) ;
    u2 : entity work.Disp1Digit port map (V=> V, N=> N, S=>S, ENAN=>ENAN) ;
end Behavioral; 
