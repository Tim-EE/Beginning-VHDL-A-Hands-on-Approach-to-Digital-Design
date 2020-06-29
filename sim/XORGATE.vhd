-- import std_logic from the IEEE library
library IEEE;
use IEEE.std_logic_1164.all;

entity XORGATE is
    port (
        Y : out std_logic;
        A : in std_logic;
        B : in std_logic -- <=no semicolon
    );
end entity XORGATE;

-- this is the architecture
architecture xor1 of XORGATE is
begin
    Y <= A xor B;
end architecture xor1;
