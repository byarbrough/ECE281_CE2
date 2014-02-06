----------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: C3C Brian Yarbrough
-- 
-- Create Date:    22:30:42 02/03/2014 
-- Design Name: 	Memory Controller
-- Module Name:    and3 - Behavioral 
-- Project Name: 	Computer Exercise 2
-- Target Devices: Nexys 2
-- Tool versions: 
-- Description: Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and3 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end and3;

architecture Behavioral of and3 is

begin
	--assign O to three inputs anded
	O <= I0 and I1 and I2;

end Behavioral;