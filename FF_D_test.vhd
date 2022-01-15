library IEEE;
use IEEE.std_logic_1164.all;

entity FF_D_test is
end FF_D_test;

architecture FF_D_test is

	component FF_D_test1
    	port(
         	din : in  std_logic;
         	clock : in  std_logic;
         	enable : in  std_logic;
         	Q : out  std_logic
        ); 
    end component;
    
   signal din : std_logic := '0';
   signal clock : std_logic := '0';
   signal enable : std_logic := '1';
   signal Q : std_logic;
   
   constant clk_period : time := 10 ns;
   
BEGIN

   	clk_process :process
  	begin
  		clk <= '0';
  		wait for clk_period/2;
  		clk <= '1';
  		wait for clk_period/2;
  	end process;
   
   clk: process
   		begin
 			clock <= '0';
 			wait for 5 ns;
 			clock <= '1';
 			wait for 5 ns;
   		end process;
   
end architecture;