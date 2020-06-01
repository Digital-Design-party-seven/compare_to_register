library ieee;
use ieee.std_logic_1164.all;

entity generate_0_to_7 is 
	port(
		clk:in std_logic;
		pre_result:in std_logic_vector(7 downto 0);
		out_put:out std_logic_vector(7 downto 0)
	);
end generate_0_to_7;

architecture bruh of generate_0_to_7 is 
signal temp:std_logic_vector(7 downto 0);
begin 

process(clk)
	begin
	if clk'event and clk='1' then
		
			case pre_result is 
				when "00000001"=>temp<="00000010";
				when "00000010"=>temp<="00000100";
				when "00000100"=>temp<="00001000";
				when "00001000"=>temp<="00010000";
				when "00010000"=>temp<="00100000";
				when "00100000"=>temp<="01000000";
				when "01000000"=>temp<="10000000";
				when "10000000"=>temp<="00000001";
				
				when others => temp<="00000001";
			end case;
	end if ;
	out_put<=temp;
	end process;
end bruh;