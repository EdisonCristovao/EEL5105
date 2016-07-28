library IEEE;
use IEEE.std_logic_1164.all;

entity c1 is 
port(
	A:in std_logic_vector(1 downto 0);
	R:out std_logic_vector(1 downto 0)
);
end c1;

architecture circuito of c1 is
begin
	R(0)<=A(0) xor A(1);
	R(1)<=A(0) and A(1);

end circuito;
