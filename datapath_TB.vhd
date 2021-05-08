---------------------------------------------------------------------
-- The Datapath
-- Author   	: Adil Shaikh, Shahzaib Ahsan Cheema
-- Course no   : ECED4260
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: datapath_TB.vhd
-- Description	: data_path.vhd testbench file.
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.ALL;
use std.textio.all;


entity datapath_TB is
--  Port ( );
end datapath_TB;

architecture Behavioral of datapath_TB is
    component data_path is
    Port ( clk : in std_logic;
           en : in std_logic;
           roll : in std_logic;

           rst : in std_logic;

           Sp : in STD_LOGIC;
           Eq : out std_logic;

           D7 : out std_logic;
           D711  : out std_logic;
           D2312: out std_logic
       );
    end component;
    

signal clk : std_logic;
signal en: std_logic:='1';
signal rst : std_logic:='1';
signal Sp: std_logic;
signal Eq : std_logic;                                      																			  --conditions
signal D7 : std_logic;
signal D711 : std_logic;
signal D2312 : std_logic;
signal roll : std_logic:='1';
    
begin

    
	UUT: data_path port map(clk => clk, en=>en, D7=>D7, D711=>D711, D2312 => D2312, Sp=> Sp, roll=>roll,rst=>rst,Eq=>Eq);
    clock: process
    begin
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10ns;
    end process;
    
    stim: process
	   begin
		  wait for 100ns;
        rst <= '0';
		  wait for 400 ns;
		  roll <= '0'; 
	end process;	

end Behavioral;