library IEEE;
use IEEE.std_logic_1164.all;

entity HALF_ADDER_TB is
    -- no entity ports for a testbench!
end entity HALF_ADDER_TB;

architecture default of HALF_ADDER_TB is
  -- here we define the half adder component
	-- (only components instantiated in this file need to be defined)
	component HALF_ADDER is
	    port (
	        Sum : out std_logic;
	        Carry : out std_logic;
	        A : in std_logic;
	        B : in std_logic -- <=no semicolon
	    );
	end component;

    -- these signals only exist within this testbench
	signal tb_A : std_logic;
	signal tb_B : std_logic;
	signal tb_Sum : std_logic;
	signal tb_Carry : std_logic;

begin

    -- instantiate a HALF_ADDER model and call this instance 'ha'
    ha: HALF_ADDER
	    port map (
	        Sum   => tb_Sum,
	        Carry => tb_Carry,
	        A     => tb_A,
	        B     => tb_B
	    );

		process
		begin
			tb_A <= '0';
			tb_B <= '0';
			wait for 5 ns;
			tb_A <= '1';
			tb_B <= '0';
			wait for 5 ns;
			tb_A <= '0';
			tb_B <= '1';
			wait for 5 ns;
			tb_A <= '1';
			tb_B <= '1';
			wait for 5 ns;
			wait; -- wait forever
		end process;

end architecture default;
