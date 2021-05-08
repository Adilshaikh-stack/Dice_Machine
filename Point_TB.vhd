---------------------------------------------------------------------
-- the point testbench
-- Author		: Adil Shaikh, Shahzaib Ahsan Cheema
-- Course      : ECED4260
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: Point_TB.vhd
-- Description	: Point_TB.vhd testbench file which has values initialized.
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.ALL;

entity Point_TB is
--  Port ( );
end Point_TB;

architecture Behavioral of Point_TB is
   
	component Point is	
		generic(
        width : natural:=3
       );
			Port(
			  reset,clk : in STD_LOGIC;
			  roll : in STD_LOGIC;
			  pointin : in STD_LOGIC_VECTOR (width downto 0);
			  PointOut : out STD_LOGIC_VECTOR (width downto 0)
			);
    end component;
	
    signal roll : std_logic := '0';--acting as Sp because 
	                                --the way our design works
	 signal clk : std_logic;
	 signal reset : std_logic := '0';
    signal adderin: std_logic_vector (3 downto 0) := "0100"; 
    signal PointOut : std_logic_vector (3 downto 0);
    
begin
	 UUT: Point port map(clk=> clk,reset=>reset, roll => roll, pointin=>adderin, PointOut=>PointOut);
    
	 clock: process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;
	 
	 
	 
	 stim: process
    begin
        wait for 20ns;
         roll<='1';
        wait for 50ns;
		   Reset<='1';
		  wait for 50ns;
    end process;

end Behavioral;
