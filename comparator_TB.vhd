---------------------------------------------------------------------
-- Comparator testbench
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: comparator_TB.vhd
-- Description	: comparator.vhd testbench file which has initialized 
-- 				  values.
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity comparator_TB is
--  Port ( );
end comparator_TB;

architecture Behavioral of comparator_TB is
    component comparator is
    generic(
        WIDTH : Integer := 3
    );
    Port ( clk : in STD_LOGIC;
           Sp : in STD_LOGIC;
           CA : in STD_LOGIC_VECTOR (WIDTH downto 0);
           CB : in STD_LOGIC_VECTOR (WIDTH downto 0);
           Eq : out STD_LOGIC);
    end component;
    
    signal clk : std_logic := '0';
    signal Eq : std_logic;
    signal Sp : std_logic;
    signal CA : std_logic_vector (3 downto 0) := (others =>'0'); 
    signal CB : std_logic_vector (3 downto 0) := (others =>'0'); 
begin
    UUT: comparator port map(clk => clk, CA => CA, CB => CB, Eq => Eq, Sp=>Sp);
    -- Define clock input
    clock_process: process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;    

    data_process: process
    begin   

        wait for 20 ns;
		  Sp<='0';
        -- loop through sample data stream
        for j in 0 to 3 loop
            for i in 0 to 3 loop
                wait for 10ns; 
                CA <= CA + 1;
            end loop; 
            CB <= CB + 1;
        end loop;
        wait for 20ns;
    end process;      
end Behavioral;

