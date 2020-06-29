-- import std_logic from the IEEE library
library IEEE;
use IEEE.std_logic_1164.all;

entity HALF_ADDER is
    port (
        Sum : out std_logic;
        Carry : out std_logic;
        A : in std_logic;
        B : in std_logic -- <=no semicolon
    );
end entity HALF_ADDER;

-- this is the architecture
architecture default of HALF_ADDER is
    -- here we define the ANDGATE component - essentially just the entity information
    component ANDGATE is
        port (
            Y : out std_logic;
            A : in std_logic;
            B : in std_logic
        );
    end component;

	-- here we define the XORGATE component - essentially just the entity information
	component XORGATE is
        port (
            Y : out std_logic;
            A : in std_logic;
            B : in std_logic
        );
    end component;
begin

    -- instantiate a 'XORGATE' model and call this instance 'sumGate'
    sumGate: XORGATE
        port map (
			Y => Sum, -- connect the Y output of this XORGATE to the 'Sum' signal
            A => A,   -- connect the A input of this XORGATE to the 'A' signal
			B => B    -- connect the B input of this XORGATE to the 'B' signal
		);

	-- instantiate an 'ANDGATE' model and call this instance 'sumGate'
    carryGate: ANDGATE
        port map (
            Y => Carry, -- connect the Y output of this ANDGATE to the 'Carry' signal
            A => A,     -- connect the A input of this ANDGATE to the 'A' signal
            B => B      -- connect the B input of this ANDGATE to the 'B' signal
		);

end architecture default;
