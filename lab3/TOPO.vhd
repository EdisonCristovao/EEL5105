library IEEE;
use IEEE.std_logic_1164.all;

entity TOPO is 
port(
	SW:in std_logic_vector(2 downto 0);
	LEDR:out std_logic_vector(0 downto 0)
);
end TOPO;

architecture circuito of TOPO is
signal F1, F2, F3: std_logic;

component C1 
port(
	A,B,C:in std_logic;
	S:out std_logic
);
end component;

component C2
port(
	A,B:in std_logic;
	S:out std_logic
);
end component;

component C3
port(
	A, B, C:in std_logic;
	S:out std_logic
);
end component;

component C4
port(
	A, B, C:in std_logic;
	S:out std_logic
);
end component;

begin
	L0: C1 port map(SW(0), SW(1), SW(2), F1);
	L1: C2 port map(SW(1), SW(2), F2);
	L2: C3 port map(SW(2), SW(1), SW(0), F3);
	L3: C4 port map(F1, F2, F3, LEDR(0));
end circuito;