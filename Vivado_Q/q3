library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity threebit_sync is
    port (
        clk : in std_logic;  -- W5 as 100 MHz clock
        reset : in std_logic; -- T17 as reset button
        Q : out std_logic_vector(3 downto 0); -- 3-bit counter output
    );
end threebit_sync;

architecture structural of threebit_sync is
    
    component clk_divider is
        port (
            clk, reset : in std_logic;
            clk_out    : out std_logic
        );
    end component;
    
    component JK_FF is
        port (
            clk, J, K, reset : in std_logic;
            Q                : out std_logic
        );
    end component;
    
    signal clk_1Hz : std_logic;
    signal Q_int   : std_logic_vector(3 downto 0);
    
begin
    
    -- Clock Divider: Generate 1Hz clock signal
    clk_div: clk_divider port map (clk => clk, reset => reset, clk_out => clk_1Hz);
    
    -- Flip-Flop Chain for 3-bit Counter
    FF0: JK_FF port map (clk => clk_1Hz, J => '1', K => '1', reset => reset, Q => Q_int(0));  
    FF1: JK_FF port map (clk => Q_int(0), J => '1', K => '1', reset => reset, Q => Q_int(1));  
    
    -- Combine Q_int(0) and Q_int(1) for FF2 toggling
    combined <= Q_int(0) and Q_int(1);
    
    -- FF2 toggles based on the combined signal
    FF2: JK_FF port map (clk =>  Q_int(1), J => '1', K => '1', reset => reset, Q => Q_int(2));  
    FF3: JK_FF port map (clk =>  Q_int(2), J => '1', K => '1', reset => reset, Q => Q_int(3)); 
    -- Assign Counter Output
    Q <= Q_int; 
    
end structural;
