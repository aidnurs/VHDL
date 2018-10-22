library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behavior of demux is

begin
with SEL select OUT1 <= IN1 when "000","0000000" when others;
with SEL select OUT2 <= IN1 when "001","0000000" when others;
with SEL select OUT3 <= IN1 when "010","0000000" when others;
with SEL select OUT4 <= IN1 when "011","0000000" when others;
with SEL select OUT5 <= IN1 when "100","0000000" when others;
with SEL select OUT6 <= IN1 when "101","0000000" when others;
with SEL select OUT7 <= IN1 when "110","0000000" when others;

end behavior;
