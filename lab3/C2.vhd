library IEEE;
use IEEE.std_logic_1164.all;

entity C2 is
port(
	A,B:in std_logic;
	S:out std_logic
);
end C2;

architecture circuito of C2 is
begin
	S<=A xor B;
end circuito;