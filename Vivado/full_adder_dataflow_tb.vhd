library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder_dataflow is
-- Testbench entity is always empty
end tb_full_adder_dataflow;

architecture Behavioral of tb_full_adder_dataflow is

    -- 1. Component declaration MUST match the design entity exactly
    component full_adder_dataflow
        Port ( A    : in  STD_LOGIC;
               B    : in  STD_LOGIC;
               Cin  : in  STD_LOGIC;
               Sum  : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;

    -- 2. Signals to connect to the inputs and outputs
    signal A_tb    : STD_LOGIC := '0';
    signal B_tb    : STD_LOGIC := '0';
    signal Cin_tb  : STD_LOGIC := '0';
    signal Sum_tb  : STD_LOGIC;
    signal Cout_tb : STD_LOGIC;

begin

    -- 3. Instantiate the Unit Under Test (UUT)
    uut: full_adder_dataflow port map (
        A    => A_tb, 
        B    => B_tb, 
        Cin  => Cin_tb, 
        Sum  => Sum_tb, 
        Cout => Cout_tb
    );

    -- 4. Stimulus Process to test all 8 combinations
    stim_proc: process
    begin
        --       A    B   Cin   
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '0'; wait for 10 ns; 
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '1'; wait for 10 ns; 
        A_tb <= '0'; B_tb <= '1'; Cin_tb <= '0'; wait for 10 ns; 
        A_tb <= '0'; B_tb <= '1'; Cin_tb <= '1'; wait for 10 ns; 
        A_tb <= '1'; B_tb <= '0'; Cin_tb <= '0'; wait for 10 ns; 
        A_tb <= '1'; B_tb <= '0'; Cin_tb <= '1'; wait for 10 ns; 
        A_tb <= '1'; B_tb <= '1'; Cin_tb <= '0'; wait for 10 ns; 
        A_tb <= '1'; B_tb <= '1'; Cin_tb <= '1'; wait for 10 ns; 
        
        wait; -- Suspend simulation
    end process;

end Behavioral;
