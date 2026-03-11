library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_dataflow is
    Port ( A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           Sum  : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder_dataflow;

architecture dataflow of full_adder_dataflow is
begin
    -- Concurrent dataflow assignments for Full Adder
    Sum  <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end dataflow;
