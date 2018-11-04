

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Disp1Digit_TB is
--  Port ( );
end Disp1Digit_TB;

architecture Behavioral of Disp1Digit_TB is
    component Disp1Digit
    Port (V : in STD_LOGIC_VECTOR (3 downto 0);
           N : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
 
    signal V : STD_LOGIC_VECTOR (3 downto 0);
    signal N : STD_LOGIC_VECTOR (1 downto 0);
    signal S : STD_LOGIC_VECTOR (6 downto 0);
    signal ENAN : STD_LOGIC_VECTOR (3 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP : Disp1Digit port map (V=>V,N=>N,S=>S,ENAN=>ENAN) ;

    process
    begin
        V <= "0001";
        wait for 10 ns;
        N <= "00";
	wait for 10 ns;
	V <= "0010";
	wait for 20 ns;
	N <= "01";
	wait for 20 ns;
	V <= "0011";
	wait for 20 ns;
	N <= "10";
	wait for 20 ns;

     end process; 
    
end Behavioral;
