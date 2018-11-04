library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity tapfunction is
	Port (clk : in STD_LOGIC;
		tap : in STD_LOGIC;
		tapCount : out STD_LOGIC_VECTOR(26 downto 0):=(OTHERS=>'0'));
end tapfunction;

architecture Behavioral of tapfunction is
	signal S1 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	signal S2 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	signal S3 : STD_LOGIC_VECTOR(26 downto 0):=(OTHERS => '0');
	type liste_ETAT is (ATTENTE, S1TAPON, S1TAPOFF, S2TAPON, S2TAPOFF, S3TAPON, S3TAPOFF, CALCULMOYENNE);
	signal state : liste_ETAT;
	signal moyenne : STD_LOGIC_VECTOR(26 downto 0);

	begin
	moyen : entity work.moyenneur port map (S1=>S1,S2=>S2,S3=>S3,moyenne=>moyenne) ;
	process(CLK)begin
		if clk'event and clk='1' then
			CASE state IS
				WHEN ATTENTE =>
					S1<=(OTHERS=>'0');
					S2<=(OTHERS=>'0');
					S3<=(OTHERS=>'0');
					tapCount<=(OTHERS => '0');
					IF tap='1' then
						state<=S1TAPON;
					END IF;
				WHEN S1TAPON =>
					S1<=S1+1;
					IF tap='0' then
						state<=S1TAPOFF;
					ELSIF S1>"1011111010111100001000000000" then--1011111010111100001000000000
						state <=ATTENTE;
					END IF;
				WHEN S1TAPOFF =>
					S1<=S1+1;
					IF tap='1' then
						state<=S2TAPON;
					END IF;
				WHEN S2TAPON =>
					S2<=S2+1;
					IF tap='0' then
						state<=S2TAPOFF;
					END IF;
				WHEN S2TAPOFF =>
					S2<=S2+1;
					IF tap='1' then
						state<=S3TAPON;
					END IF;
				WHEN S3TAPON =>
					S3<=S3+1;
					IF tap='0' then
						state<=S3TAPOFF;
					END IF;
				WHEN S3TAPOFF =>
					S3<=S3+1;
					IF tap='1' then
						state<=CALCULMOYENNE;
					END IF;
				WHEN CALCULMOYENNE =>
					tapCount<=moyenne;
					IF tap='0' then
						state<=ATTENTE;
					END IF;
			END CASE;
		end if;
	end process;
end Behavioral; 
