library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_ha is
-- Testbenches have no ports
end tb_ha;

architecture Behavioral of tb_ha is
    -- Component Declaration
    component ha_dataflow
        Port ( A : in STD_LOGIC; B : in STD_LOGIC; Sum : out STD_LOGIC; Carry : out STD_LOGIC);
    end component;

    -- Signals to connect to the UUT (Unit Under Test)
    signal A_tb, B_tb : STD_LOGIC := '0';
    signal Sum_tb, Carry_tb : STD_LOGIC;

begin   
    -- Instantiate the Unit Under Test
    uut: ha_dataflow port map (A => A_tb, B => B_tb, Sum => Sum_tb, Carry => Carry_tb);

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all 4 combinations of binary addition
        A_tb <= '0'; B_tb <= '0'; wait for 10 ns;
        A_tb <= '0'; B_tb <= '1'; wait for 10 ns;
        A_tb <= '1'; B_tb <= '0'; wait for 10 ns;
        A_tb <= '1'; B_tb <= '1'; wait for 10 ns;
        
        wait; -- Suspend simulation
    end process;
end Behavioral;
