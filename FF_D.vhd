-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity FF_D is
   port
   (
      clock : in std_logic;
      enable : in std_logic;
      din : in std_logic;

      Q : out std_logic
   );
end entity FF_D;
 
architecture Behavior of FF_D is

begin
   process(dIn, clock, enable)
   begin
  		if (clock = '1' and clock'event and enable = '1') then
 			dOut <= dIn;
 		end if;
   end process; 
   
end architecture Behavior;