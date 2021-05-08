---------------------------------------------------------------------
-- The Counter testbench
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: counter_TB.vhd
-- Description	: counter.vhd testbench file which has seed initialized as
--				  random and other initializations
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.ALL;
use std.textio.all;

entity counter_TB is
--  Port ( );
end counter_TB;

architecture Behavioral of counter_TB is
    component counter is
        generic(
            width : natural := 3 
        );
        Port ( clk : in std_logic;
               en,Roll : in std_logic;
               rst : in std_logic;
               seed : in std_logic_vector (width -1 downto 0);
               count : out std_logic_vector (width -1 downto 0));
    end component;
    
    signal clk : std_logic := '0';
    signal en : std_logic := '0';
    signal rst : std_logic := '1';
	 signal Roll : std_logic := '1';
    signal seed : std_logic_vector (2 downto 0) := "001"; --random seed
    signal count : std_logic_vector (2 downto 0) := (others =>'0');
    
begin
    -- clock stim
    clock: process
    begin
        clk <= '1';
        wait for 10ns;
        clk <= '0';
        wait for 10ns;
    end process;
    
    UUT: counter port map(clk=>clk, rst => rst, en=>en, seed=>seed, count=>count, Roll=>Roll);
    
    stim: process
	   begin
		  wait for 100ns;
        rst <= '0';
        wait for 20ns;
        en <= '1';
		  wait for 400 ns;
		  Roll <= '0'; 
		   
		report "Test Complete";

	end process;	

end Behavioral;
