--Say?sal Tasar?m Lab. 1. Deney
--Veli G�rg�l� 365329

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PARITY is
  Port (input : in STD_LOGIC_VECTOR(14 downto 0);
        output : out STD_LOGIC_VECTOR(15 downto 0));
  end PARITY;   
         
architecture PARITY_CHECK of PARITY is  
  signal output_odd : std_logic := '0';
     
  function Parity_Odd(input : STD_LOGIC_VECTOR(14 downto 0))
    return std_logic is
      variable parity : std_logic := '0';
    begin
      for i in 0 to 14 loop
        parity := parity xor input(i);
      end loop;
      return (not parity);
  end Parity_Odd;  
       
  begin
     output_odd <= Parity_Odd(input);
     output <= input & output_odd;
end PARITY_CHECK;