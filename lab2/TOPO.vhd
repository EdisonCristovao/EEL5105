library IEEE;
use IEEE.std_logic_1164.all;

entity TOPO is
port(
	SW:in std_logic_vector(1 downto 0);
	LEDR:out std_logic_vector(1 downto 0)
);
end TOPO;

architecture circuito of TOPO is
signal F1, F2: std_logic;

component c1  
port(
	A:in std_logic_vector(1 downto 0);
	R:out std_logic_vector(1 downto 0)
);
end component;


begin
	L0: c1 port map(SW, LEDR);
end circuito;