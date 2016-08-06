library IEEE;
use IEEE.std_logic_1164.all;

entity C3 is 
port (
	A, B, C:in std_logic;
	S:out std_logic
);
end C3;

architecture circuito of C3 is
signal F1, F2: std_logic;
begin
	F1<=A or B;
	F2<=not C;
	S<=F1 and F2;
end circuito;