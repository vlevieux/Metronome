library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity driverDISP_TB is
--  Port ( );
end driverDISP_TB;

architecture Behavioral of driverDISP_TB is
    component driverDISP
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (6 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
 
	signal A : STD_LOGIC_VECTOR (3 downto 0);
	signal B : STD_LOGIC_VECTOR (3 downto 0);
	signal C : STD_LOGIC_VECTOR (3 downto 0);
	signal D : STD_LOGIC_VECTOR (3 downto 0);
	signal clk : STD_LOGIC;
	signal ENAN : STD_LOGIC_VECTOR (3 downto 0);
	signal S : STD_LOGIC_VECTOR (6 downto 0);
    constant CLK_period : time := 10 ns; 

begin
    UPP : driverDISP port map (A=>A,B=>B,C=>C,D=>D,S=>S,ENAN=>ENAN, clk=>clk) ;

    clk_process :process
    begin
        A <= "0001";
	B <= "0011";
	C <= "0010";
	clk <='1';
        wait for 10 ns;
	clk <='0';
	wait for 10 ns;

     end process; 
    
end Behavioral;