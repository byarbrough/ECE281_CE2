----------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: C3C Brian Yarbrough
-- 
-- Create Date:    22:30:42 02/03/2014 
-- Design Name: 	Memory Controller
-- Module Name:    Behavioral 
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

entity Decoder_Behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Behavioral;

architecture Behavioral of Decoder_Behavioral is
	--declare inner signals
	signal I0_Not, I1_Not : STD_LOGIC;

begin
	I0_Not <= not I0;
	I1_Not <= not I1;
	Y0 <= I0_Not and I1_Not and EN;
	Y1 <= I0 and I1_Not and EN;
	Y2 <= I0_Not and I1 and EN;
	Y3 <= I0 and I1 and EN;

end Behavioral;

