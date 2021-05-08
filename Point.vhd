---------------------------------------------------------------------
-- The point
-- Author		: Adil Shaikh, Shahzaib Ahsan Cheema
-- Course      : ECED4260
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: Point.vhd
-- Description	: Point.vhd file which pointsin when falling_edge
--                of the clk and then if roll is 1. 
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_Logic_1164.ALL;

entity Point is
generic(
        width : Integer:=3
       );
Port(
     reset,clk : in STD_LOGIC;
     roll: in STD_LOGIC;
     Pointin : in STD_LOGIC_VECTOR (width downto 0);
     PointOut : out STD_LOGIC_VECTOR (width downto 0)
	  );
end Point;

architecture Behavioral of Point is 

begin
   process(clk, roll, reset, Pointin)
begin
	if(falling_edge(clk)) then
		if(roll = '1') then
			PointOut <= Pointin;
		end if;
	end if;
end process;
end behavioral;