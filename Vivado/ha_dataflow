library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha_dataflow is
    Port ( A     : in  STD_LOGIC;
           B     : in  STD_LOGIC;
           Sum   : out STD_LOGIC;
           Carry : out STD_LOGIC);
end ha_dataflow;

architecture dataflow of ha_dataflow is
begin
    -- Dataflow assignments use concurrent signal statements
    Sum   <= A xor B;
    Carry <= A and B;
end dataflow;
