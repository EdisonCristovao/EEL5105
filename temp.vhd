library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_STD.all;

entity comparador_controle is 
generic(width: integer := 8);
port(
	inpt0: in std_logic_vector(width-1 downto 0);
	inpt1: in std_logic_vector(width-1 downto 0);
	op: in std_logic;
	outp: out std_logic_vector(width-1 downto 0)
);
end entity;

architecture ToDo of comparador_controle is
begin 
process(op, inpt0, inpt1)
begin
	case op is
		when '0' =>
			if ((signed(inpt0)) > (signed(inpt1))) then
					outp <= inpt0;
				else
					outp <= inpt1;
			end if;
			
		when others => 
			if ((signed(inpt0))> (signed(inpt1))) then
				outp <= inpt1;
			else
				outp <= inpt0;
			end if;
	end case;
end process;
end ToDo;
