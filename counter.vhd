---------------------------------------------------------------------
-- The Counter
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: counter.vhd
-- Description	: counter.vhd file which counts when reset is 1 or 
--				  the rising edge of clk and roll are 1
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity counter is
    generic(
        width : natural := 3
    );
    Port ( clk : in std_logic;
           en, Roll : in std_logic;
           rst : in std_logic;
           seed : in std_logic_vector (width -1 downto 0);
           count : out std_logic_vector (width -1 downto 0));
			  
end counter;

architecture Behavioral of counter is
    signal feedback : std_logic;
    signal count_int : std_logic_vector (width-1 downto 0);
	
    
begin
    feedback <= not(count_int(2) xor count_int(1));
    
    process(clk, rst, Roll)
    begin
       if(rst ='1') then
            count_int <= seed;
        elsif (rising_edge(clk)) and (roll = '1')then
           
					loop
						count_int <= count_int(1 downto 0) & feedback;
						if(count_int = "100") then
							count_int<= "001";
						end if;
						
						if(count_int /= "000") then
							exit;
						end if;
						
					end loop;
				
		 end if;
        count <= count_int;
    end process;
    
end Behavioral;
