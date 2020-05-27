library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity compare_to_register is 
	port(
		clk:in std_logic;
		object:in std_logic_vector(2 downto 0); --need to changed in every clk is activated 
		result:out std_logic
		);
end compare_to_register;

architecture bruh of compare_to_register is 
signal temp_output:std_logic;
signal temp_num:std_logic_vector(2 downto 0);
	begin
		process(clk)
			if	clk'event and clk ='1' and temp_output='0' then 
				temp_output <= not (object and temp_num);
				temp_num <= temp_num + 1;
			end if;
		end process;
	end bruh;