---------------------------------------------------------------------
-- Controller Testbench
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: Controller_tb.vhd
-- Description	: controller.vhd testbench file which is initialized 
-- 				  with  values of en and rest as "1".
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
use ieee.std_logic_unsigned.all;

entity controller_tb is
--  Port ( );
end controller_tb;

architecture Behavioral of controller_tb is
    component controller is
        -- define generic depth 
        generic(
            width : integer := 3 -- must be larger than 2
        );
        Port (en: in std_logic;
	      clk : in std_logic;
         rst: in std_logic;
	      Win, Lose : out STD_LOGIC
);
end component;
    
    signal clk : STD_LOGIC := '0';
    signal en : STD_LOGIC  := '1';
    signal rst : STD_LOGIC := '1';
    signal win : STD_LOGIC;
    signal lose : STD_LOGIC;

begin
    Controller_tb: controller port map(en => en, clk=>clk,rst => rst, win => win, lose =>lose);
    


    clock: process
    begin
        clk <= '1';
        wait for 80ns;
        clk <= '0';
        wait for 80ns;
    end process;

stim: process
begin


	wait for 20ns;
        rst <= '0';
        wait for 140ns;
		   

	end process;

end Behavioral;

