----------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: C3C Brian Yarbrough
-- 
-- Create Date:    22:30:42 02/03/2014 
-- Design Name: 	Memory Controller
-- Module Name:    Structural Testbench
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
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Decoder_Structural_testbench IS
END Decoder_Structural_testbench;
 
ARCHITECTURE behavior OF Decoder_Structural_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_Structural
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
	
--   -- No clocks detected in port list. Replace <clock> below with 
--   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_Structural PORT MAP (
          I0 => I0,
          I1 => I1,
          EN => EN,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		EN <= '0';
		I1 <= '0';
		I0 <= '0';
      wait for 100 ns;
		
		EN <= '0';
		I1 <= '0';
		I0 <= '1';
      wait for 100 ns;	
		
		EN <= '0';
		I1 <= '1';
		I0 <= '0';
      wait for 100 ns;	
		
		EN <= '0';
		I1 <= '1';
		I0 <= '1';
      wait for 100 ns;
						
		EN <= '1';
		I1 <= '0';
		I0 <= '0';
      wait for 100 ns;	
		
		EN <= '1';
		I1 <= '0';
		I0 <= '1';
      wait for 100 ns;	
		
		EN <= '1';
		I1 <= '1';
		I0 <= '0';
      wait for 100 ns;
		
		EN <= '1';
		I1 <= '1';
		I1 <= '1';
		I0 <= '1';
      wait for 100 ns;

		--end testbench
		wait;
   end process;

END;
