library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.FIXED_PKG.ALL;

entity fixed_round_crash_incorrect is
    Port (
        input_fixed: in SFIXED(3 downto -2);
        output_signed: out SIGNED(3 downto 0)
    );
end entity;

architecture Behavioral of fixed_round_crash_incorrect is
    -- real * sfixed(a downto b) -> sfixed(2a+1 downto 2b)
    signal intermediate: SFIXED(3 downto -2);
begin
    intermediate <= 1.5*input_fixed;
    output_signed <= to_signed(input_fixed, 4);
end Behavioral;
