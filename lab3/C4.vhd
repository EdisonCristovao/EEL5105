library IEEE;
use IEEE.std_logic_1164.all;

entity C4 is 
port(
	A, B, C:in std_logic;
	S:out std_logic
);
end C4;

architecture circuito of C4 is
begin
	S<=(A and B) or C;
end circuito;