----------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: C3C Brian Yarbrough
-- 
-- Create Date:    22:30:42 02/03/2014 
-- Design Name: 	Memory Controller
-- Module Name:    Inverter - Behavioral 
-- Project Name: 	Computer Exercise 2
-- Target Devices: Nexys 2
-- Tool versions: 
-- Description: Structural
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

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

begin


end Structural;

