---------------------------------------------------------------------
-- The Full adder
-- Author		: Chris Samson
-- Modified by	: ECED4260 Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: fa_cascaded.vhd
-- Description	: fa_cascaded.vhd file which cascades adders. 
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_cascaded is
    -- define generic depth 
    generic(
        width : integer := 3 -- must be larger than 2
    );
    Port ( a : in STD_LOGIC_VECTOR (width -1 downto 0);
           b : in STD_LOGIC_VECTOR (width -1 downto 0);
           sum : out STD_LOGIC_VECTOR (width downto 0);
			  cin: in std_logic
			  );
           
end fa_cascaded;

architecture Behavioral of fa_cascaded is
    component full_adder is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               cout : out STD_LOGIC;
               sum : out STD_LOGIC);
    end component;
    signal con : std_logic_vector (2 downto 0);
begin
    -- the first an exception
    fa1 : full_adder port map(a => a(0), b => b(0), cin => cin, cout => con(0), sum => sum(0));
    GEN_fa:
    for i in 1 to width-1 generate
        fax : full_adder port map(a => a(i), b => b(i), cin => con(i-1), cout => con(i), sum => sum(i));
    end generate GEN_fa;
    sum(width) <= con(width-1);
end Behavioral;
