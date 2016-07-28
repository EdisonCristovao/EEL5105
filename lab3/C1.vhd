library IEEE;
use IEEE.std_logic_1164.all;

entity C1 is 
port(
	A,B,C:in std_logic;
	S:out std_logic
);
end C1;

architecture circuito of C1 is
begin
	S<=A or B or C;
end circuito;
