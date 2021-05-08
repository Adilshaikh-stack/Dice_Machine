---------------------------------------------------------------------
-- The Datapath
-- Author	   : Adil Shaikh, Shahzaib Ahsan Cheema
-- Student No	: B00780041, B00637605
-- Date	  		: December 5th, 2020
-- File Name	: data_path.vhd
-- Description	: data_path.vhd file which combines the full adder, 
-- 				  counter, point, comparator & test logic. 
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_Logic_1164.ALL;

entity data_path is
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
           --data_out : out std_logic_vector (width downto 0));
end data_path;


architecture Behavioral of data_path is
-------------------------------------------------------
component comparator is
Port(
     clk : in STD_LOGIC;
     Sp : in STD_LOGIC;
     CA : in STD_LOGIC_VECTOR (width downto 0);
     CB : in STD_LOGIC_VECTOR (width downto 0);
     Eq : out STD_LOGIC);
end component;
-------------------------------------------------------
component counter is
Port (clk : in std_logic;
      en, Roll : in std_logic;
      rst : in std_logic;
      seed : in std_logic_vector (width -1 downto 0):="001";
      count : out std_logic_vector (width -1 downto 0));
end component;
---------------------------------------------------------
component point is
Port (reset,clk : in STD_LOGIC;
     roll : in STD_LOGIC;
     pointin : in STD_LOGIC_VECTOR (width downto 0);
     PointOut : out STD_LOGIC_VECTOR (width downto 0));
end component;
---------------------------------------------------------
component Test_Logic is
Port (D7 : out std_logic;
      D711  : out std_logic;
      D2312: out std_logic;
		clk: in std_logic;
      adderIn : in STD_LOGIC_VECTOR (3 downto 0));
end component;
--------------------------------------------------------
component fa_cascaded is
Port (a : in STD_LOGIC_VECTOR (width -1 downto 0);
      b : in STD_LOGIC_VECTOR (width -1 downto 0);
      sum : out STD_LOGIC_VECTOR (width downto 0);
		cin: in std_logic);
end component;
--------------------------------------------------------------
signal count1 : std_logic_vector (width-1 downto 0);
signal count2 : std_logic_vector (width-1 downto 0);
signal sum0 : std_logic_vector (width downto 0);
signal cin : std_logic:='0';
signal pointin : std_logic_vector (width downto 0);
signal PointOut : std_logic_vector(width downto 0);
signal seed1 : std_logic_vector (width -1 downto 0):="100";--testbenches in the report will have
                                                           --different seed values to test different
																			  --conditions
signal seed2 : std_logic_vector (width -1 downto 0):="001";
signal sum : std_logic_vector (width downto 0);

    
begin
counter1:   counter   port map(clk => clk, en => en, roll => roll, seed => seed1, rst => rst, count => count1); 
counter2:   counter   port map(clk => clk, en => en, roll => roll, seed => seed2, rst => rst, count => count2);
fullSUM:    fa_cascaded   port map(a => count1, b => count2, cin => cin, sum => sum0);
pointer:    point     port map(clk => clk, reset => rst, roll => roll, pointin => sum0, PointOut => PointOut);
compare:    comparator    port map(clk => clk, CA => sum0, CB => PointOut, Eq => Eq, Sp => Sp);

Testlogic_final: Test_Logic  port map(adderin => sum0, clk=>clk, D7 => D7, D711 => D711, D2312 => D2312);

    
end Behavioral;







