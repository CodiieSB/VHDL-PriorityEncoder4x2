library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity TestBench_PE is
end TestBench_PE;

architecture ARC of TestBench_PE is
component Priority_Enc 
port(
          Input   : in std_logic_vector(3 downto 0);
          Output  : out std_logic_vector(1 downto 0);
          Vout    : out std_logic 
);
end component;

signal Input  : std_logic_vector(3 downto 0);
signal Output : std_logic_vector(1 downto 0);
signal Vout   : std_logic;

begin

    dev_test : Priority_Enc 
    port map
    ( 
        Input  => Input,
        Output => Output,
        Vout   => Vout
    );
    
    stim : process 
    begin 
    
    Input(3) <= '0';
    Input(2) <= '0';
    Input(1) <= '0';
    Input(0) <= '0';
    wait for 20ns;
    
    Input(3) <= '0';
    Input(2) <= '0';
    Input(1) <= '0';
    Input(0) <= '1';
    wait for 20ns;
    
    Input(3) <= '0';
    Input(2) <= '0';
    Input(1) <= '1';
    Input(0) <= '1';
    wait for 20ns;
    
    Input(3) <= '0';
    Input(2) <= '1';
    Input(1) <= '0';
    Input(0) <= '1';
    wait for 20ns;
    
    Input(3) <= '1';
    Input(2) <= '0';
    Input(1) <= '0';
    Input(0) <= '1';
    wait for 20ns;
    
    wait;
    
    end process;
    
end ARC;