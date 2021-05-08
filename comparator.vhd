---------------------------------------------------------------------
-- The Comparator
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: comparator.vhd
-- Description	: Comparator which compares 2 values if clock is at 
-- 				  falling edge and SQ is also 0 then it compares CA and CB.
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_Logic_1164.ALL;

entity comparator is
	generic(
		width : Integer:=3
	);
	Port(
		clk : in STD_LOGIC;
		Sp : in STD_LOGIC;
		CA : in STD_LOGIC_VECTOR (width downto 0);
		CB : in STD_LOGIC_VECTOR (width downto 0);
		Eq : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin
Process(clk, CA, CB)
begin
	if(falling_edge(clk) and (Sp = '0')) then
		if(CA = CB) then
			Eq <= '1';
		else
			Eq <= '0';
		end if;
	end if;
end process;
end behavioral;