	library IEEE;
use IEEE.std_logic_1164.all;

entity MUX4X1 is 
port(
	A,B,C,D:in std_logic;
	SEL:in std_logic_vector(1 downto 0);
	S:out std_logic
);
end MUX4X1;

architecture circuito of MUX4X1 is 
begin

S<=A when SEL = "00" else
	B when SEL = "01" else
	C when SEL = "10" else
	D;


end circuito;