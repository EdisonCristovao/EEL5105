library IEEE;
use IEEE.std_logic_1164.all;

entity TOPO is 
port(
	SW:in std_logic_vector(9 downto 0);
	LEDR:out std_logic_vector(0 downto 0)
);
end TOPO;

architecture circuito of TOPO is 
signal F1, F2, F3: std_logic;
-- componentes
component C1 is 
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
port (
	A, B, C:in std_logic;
	S:out std_logic
);
end component;

component MUX4X1 
port(
	A,B,C,D:in std_logic;
	SEL:in std_logic_vector(1 downto 0);
	S:out std_logic
);
end component;

begin
L0: C1 port map(SW(0), SW(1), SW(2), F1);
L1: C2 port map(SW(1), SW(2), F2);
L2: C3 port map(SW(2), SW(1), SW(0), F3);
L3: MUX4X1 port map(F1, F2, F3, '0', SW(9 downto 8), LEDR(0));
end circuito;
