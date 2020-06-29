-- (this is a VHDL comment)

-- import std_logic from the IEEE library
library IEEE;
use IEEE.std_logic_1164.all;

entity ANDGATE is
    port (
        Y : out std_logic;
        A : in std_logic;
        B : in std_logic -- <=no semicolon
    );
end entity ANDGATE;

-- this is the architecture
architecture and1 of ANDGATE is
begin
    Y <= A and B;
end architecture and1;
