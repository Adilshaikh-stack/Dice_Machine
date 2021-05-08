---------------------------------------------------------------------
-- The Test_Logic testbench
-- Author: Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Course:       ECED4260
-- Date	  		: December 5th, 2020
-- File Name	: Test_Logic_TB.vhd
-- Description	: Test_Logic_TB.vhd testbench file which has values initialzed to 0. 
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.ALL;

entity Test_Logic_TB is
--  Port ( );
end Test_Logic_TB;

architecture Behavioral of Test_Logic_TB is
   
	component test_Logic is	

		port (
				D7 : out std_logic;
				D711  : out std_logic;
				D2312: out std_logic;
				adderIn : in STD_LOGIC_VECTOR (3 downto 0)
		);
    end component;
	
    signal D7 : std_logic := '0';
	 signal D711 : std_logic := '0';
    signal adderIN: std_logic_vector (3 downto 0) := "0000"; 
    signal D2312 : std_logic:='0';
	 signal clk : std_logic;
    
begin
	 UUT: Test_Logic port map(clk =>clk, D7=>D7, D711 => D711, D2312 => D2312, adderIn=>adderIn);
    
	clock: process
	 begin
	  wait for 10ns;
	  clk <='1';
	  wait for 10ns;
	  clk <='0';
	end process; 
	 
	 
	 stim: process
    begin
        wait for 50ns;
         adderIn <= "0010";
        wait for 50ns;
         adderIn <= "0010";
		  wait for 50ns;
         adderIn <= "1100";
		  wait for 50ns;
         adderIn <= "0011";
		  wait for 50ns;
         adderIn <= "1011";
		  wait for 50ns;
    end process;

end Behavioral;
