----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2023 02:38:34 AM
-- Design Name: 
-- Module Name: down_counter_fpga - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity down_counter_fpga is
Port ( 
clk : in  STD_LOGIC;
        reset : in STD_LOGIC;
        cnt_en : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR(5 downto 0)
);
end down_counter_fpga;

architecture Behavioral of down_counter_fpga is
signal clk_div_counter: std_logic_vector(27 downto 0);
signal slow_clk: std_logic;
begin
process(clk)
begin
if(clk'event and clk='1') then
clk_div_counter <= clk_div_counter + '1';
end if;
end process;
slow_clk <= clk_div_counter(27);
counter_down_instance : entity work.down_counter
port map (
clk => slow_clk,
reset => reset,
cnt_en => cnt_en ,
count => count
);
end Behavioral;
