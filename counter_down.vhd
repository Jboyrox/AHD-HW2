library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity down_counter is
    Port (
        clk : in  STD_LOGIC;
        reset : in STD_LOGIC;
        cnt_en : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR(5 downto 0)
    );
end down_counter;

architecture Behavioral of down_counter is

    -- Parameter for the maximum count value
    constant N : natural := 63;  -- 6 bits can count up to 63 (2^6 - 1)

signal i_cnt : unsigned(5 downto 0) ;


begin

process(reset,clk)
begin
if reset = '0' then
i_cnt <="111111";

else IF (clk'EVENT AND clk='1') THEN
if cnt_en = '1' then
if(i_cnt="000000") then i_cnt <="111111";
else i_cnt <= i_cnt -1;
end if;
end if;
end if;
end if;
end process;
count <= std_logic_vector(i_cnt);
end Behavioral;