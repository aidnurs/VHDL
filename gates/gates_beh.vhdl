library IEEE;
use IEEE.std_logic_1164.all;
use work.IEEE_1164_Gates_pkg.all;

architecture behavior of gates is
signal sig0_g4,sig1_g4,sig2_g4,sig3_g4:std_logic;
begin
	G3: NAND3 port map(I1=>A,I2=>not B,I3=>C,O=>sig0_g4);
	G2: OR2 port map(I1=>not A,I2=>not C,O=>sig1_g4);
	G1: OR3 port map(I1=>not A,I2=>B,I3=> not C,O=>sig2_g4);
	G0: AND2 port map(I1=>C,I2=>D,O=>sig3_g4);
	G4: XOR4 port map(I1=> not sig0_g4,I2=>not sig1_g4, I3=>not sig2_g4, I4=>sig3_g4,O=>O);
end behavior;

