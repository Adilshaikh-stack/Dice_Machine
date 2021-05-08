---------------------------------------------------------------------
-- The Test_Logic
-- Author		: Adil Shaikh, Shahzaib Ahsan Cheema
-- Course      : ECED4260
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: Test_Logic.vhd
-- Description	: Test_Logic.vhd file contains the logic of the game.
--				     and waries contditions to test whether the logic is
-- 				  correct or not.
---------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity Test_Logic is
  port (
    D7 : out std_logic;
    D711  : out std_logic;
    D2312: out std_logic;
	 clk: in std_logic;
	 adderIn : in STD_LOGIC_VECTOR (3 downto 0)
    );
end Test_Logic;
 
 
architecture behavioral of Test_Logic is
 

   
begin
 
 process(adderIn,clk)
  begin
   
	 if (adderIn = "0111" OR adderIn = "1011") AND (rising_edge(clk)) then
	 
			D711 <='1';
			D7 <='1';
			
	 elsif(adderIn = "0010" OR adderIn = "0011" OR adderIn = "1100") AND (rising_edge(clk))then
	
			D2312<='1';
			
	 end if;	
 end process;
 
end behavioral;