---------------------------------------------------------------------
-- The controller
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: controller.vhd
-- Description	: controller.vhd which proves the different scenarios
-- 				  to win, lose & draw. Ex. D7 = 1 is lose, Eq = 1 is win. 
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_Logic_1164.ALL;

entity controller is
    generic(
        width : natural := 3 -- 
    );
    Port ( 
			en: in std_logic;
			clk : in std_logic;
			rst : in std_logic;
			Win, Lose : out STD_LOGIC
			  
       );

end controller;


architecture Behavioral of controller is
-------------------------------------------------------
component data_path is
    generic(
        width : natural := 3 -- 
    );
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
--------------------------------------------------------
type state_types is (S0,S1,S2,S3);

signal state: state_types;
--------------------------------------------------------------
signal roll: std_logic; 
signal Eq : std_logic;
signal D7 : std_logic;
signal D711 : std_logic;
signal D2312 : std_logic;
signal Sp : std_logic;


    
begin


 Dice_Controller: data_path  port map( clk=> clk, en=>en, D7 => D7, D711 => D711, D2312 => D2312,Sp=>Sp,Eq=>Eq, rst=>rst, roll=>roll);

	process(clk,en, roll,rst,D7,D711,D2312)
	
	begin
	
   if((rst ='1') and rising_edge(clk))then
	 
		 Win<='0';
		 Lose<='0';
		 Sp<='0';

	elsif(rising_edge(clk) and en ='1') then
	
			
		 case state is
			when S0=>
				 roll <= '1';
				 sp <= '1';
				 state <= s2;
				 
			when S1 =>
				 Roll <= '1';
				 sp <= '0';
				 state <= s3;

         when S2=>
		       roll<='0';
			    sp <= '0';
	       if(D711 = '1') then 
             win <= '1';
				 roll <= '0';
          elsif (D2312 = '1') then 
             lose <= '1';
			    roll <= '0';
          else
             state <= s1;
			 end if;

			when S3 =>
		       roll<='0';
	
				if(eq = '1') then 
					win <= '1';
					roll <= '0';
				elsif(D7 = '1') then 
					lose <='1';
					roll <= '0';
				else
				   state <= S1;
				   sp <= '1';
				end if;

				

end case;

		end if;
	end process;
	
    
end Behavioral;







