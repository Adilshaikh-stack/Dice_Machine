---------------------------------------------------------------------
-- A Full adder testbench
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: adder_TB.vhd
-- Description	: fa_cascaded.vhd testbench file which is initialized 
-- 				  with  values of a and b as "000".
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
use ieee.std_logic_unsigned.all;

entity adder_TB is
--  Port ( );
end adder_TB;

architecture Behavioral of adder_TB is
    component fa_cascaded is
        -- define generic depth 
        generic(
            width : integer := 3 -- must be larger than 2
        );
        Port ( a : in STD_LOGIC_VECTOR (width -1 downto 0);
               b : in STD_LOGIC_VECTOR (width -1 downto 0);
               cin : in STD_LOGIC;
               sum : out STD_LOGIC_VECTOR (width downto 0));
    end component;
    
    signal a : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal b : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal cin : STD_LOGIC := '0';
    signal sum : STD_LOGIC_VECTOR (3 downto 0);
    
begin
    UUT: fa_cascaded port map(a => a, b=>b, cin=>cin, sum=>sum);
    
    stim: process
    begin
        wait for 50 ns;
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                wait for 10 ns;
                a <= a + 1;
            end loop;    
            b <= b + 1;    
        end loop;
    end process;
end Behavioral;
