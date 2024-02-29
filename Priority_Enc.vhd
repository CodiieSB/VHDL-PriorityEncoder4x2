library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Priority_Enc is
port(
          Input   : in std_logic_vector(3 downto 0);
          Output  : out std_logic_vector(1 downto 0);
          Vout    : out std_logic 
);
end Priority_Enc;

architecture PE of Priority_Enc is

signal s1,s2,s3,s4,s5 : std_logic;

begin

    s1 <= not Input(2);
    s2 <= s1 and Input(1);
    s3 <= s2 or Input(3);
    s4 <= Input(3) or Input(2);
    s5 <= s4 or Input(1) or Input(0);
    Output(0) <= s3;
    Output(1) <= s4;
    Vout      <= s5;
    
end PE;