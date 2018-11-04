library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity driverLED is
    Port ( N : in STD_LOGIC_VECTOR (2 downto 0);
	S_out : out STD_LOGIC_VECTOR (7 downto 0));
end driverLED;

architecture Behavioral of driverLED is
type tt is array (0 to 7) of std_logic_vector(7 downto 0);
constant table:tt:=("10000000","01000000","00100000","00010000","00001000","00000100","00000010","00000001");

begin
    S_out <= table(conv_integer(N));
end Behavioral;

