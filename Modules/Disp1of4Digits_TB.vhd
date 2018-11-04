


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Disp1of4Digits_TB is
--  Port ( );
end Disp1of4Digits_TB;

architecture Behavioral of Disp1of4Digits_TB is
    component Disp1of4Digits
    Port (A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            C : in STD_LOGIC_VECTOR (3 downto 0);
            D : in STD_LOGIC_VECTOR (3 downto 0);
            N : in STD_LOGIC_VECTOR (1 downto 0);
	    ENAN : out STD_LOGIC_VECTOR (3 downto 0);
            S : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
 
	signal A : STD_LOGIC_VECTOR (3 downto 0);
	signal B : STD_LOGIC_VECTOR (3 downto 0);
	signal C : STD_LOGIC_VECTOR (3 downto 0);
	signal D : STD_LOGIC_VECTOR (3 downto 0);
	signal N : STD_LOGIC_VECTOR (1 downto 0);
	signal ENAN : STD_LOGIC_VECTOR (3 downto 0);
	signal S : STD_LOGIC_VECTOR (6 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP : Disp1of4Digits port map (A=>A,B=>B,C=>C,D=>D,N=>N,S=>S,ENAN=>ENAN) ;

    process
    begin
        A <= "0001";
	N <= "00";
        wait for 10 ns;
        B <= "0001";
	N <= "01";
	wait for 10 ns;
	C <= "0010";
	N <= "10";
	wait for 20 ns;
	N <= "01";
	wait for 20 ns;
	D <= "0011";
	wait for 20 ns;
	N <= "10";
	wait for 20 ns;

     end process; 
    
end Behavioral;