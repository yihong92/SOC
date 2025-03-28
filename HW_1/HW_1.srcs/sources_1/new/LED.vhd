----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/12/08 14:17:04
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED is
    port (
        clk        : in  std_logic;  
        reset      : in  std_logic;
		sw         : in  std_logic;
		LED_input  : in  std_logic_vector(7 downto 0);
        LED_output : out std_logic_vector(7 downto 0)
        );
end entity;

architecture Behavioral of LED is --創建架構(<架構名稱>of<實體名稱>)
    signal led_e:std_logic_vector(7 downto 0); --內部led信號
    signal div  :std_logic_vector(60 downto 0);
    signal fc   :std_logic;

begin
    diver:process(clk)
    begin
        if reset='1' then
            div<=(others=>'0');
        elsif rising_edge(clk) then
            div<=div+1;
        End if;
    end process diver;
    fc<=div(21);
    

    process(fc) --裡面有變動則執行下方程式
    begin
        if reset = '1' then
            led_e <= "00000000";
        elsif rising_edge(fc) then
			if sw ='1' then
				led_e <= LED_input;
			
			end if;
        end if;
    end process;
	LED_output <= led_e;
end architecture;