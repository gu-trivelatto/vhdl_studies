library IEEE;
use IEEE.std_logic_1164.all;

entity e2a_tb is
end entity e2a_tb;

architecture e2a_tb_arc of e2a_tb is

  component e2a
      port ( A,B,C,D : in std_logic;
             F : out std_logic);
  end component;

  signal aa,bb,cc,dd : std_logic := '0';
  signal ff : std_logic := '0';

begin
  comp_e2a: entity work.e2a_tb port map (
    A => aa,
    B => bb,
    C => cc,
    D => dd,
    F => ff
    );

  --  This process does the real job.
  stimulus_process: process is
    type pattern_type is record
      --  The inputs of the circuit.
      aa,bb,cc,dd : std_logic;

      --  The expected outputs of the circuit.
      ff : std_logic;
    end record;


    --  The patterns to apply.
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array :=
      (('0','0','0','0','0'),
       ('0','0','0','1','0'),
       ('0','0','1','0','1'),
       ('0','0','1','1','1'),
       ('0','1','0','0','0'),
       ('0','1','0','1','0'),
       ('0','1','1','0','1'),
       ('0','1','1','1','0'),
       ('1','0','0','0','0'),
       ('1','0','0','1','0'),
       ('1','0','1','0','1'),
       ('1','0','1','1','1'),
       ('1','1','0','0','0'),
       ('1','1','0','1','0'),
       ('1','1','1','0','1'),
       ('1','1','1','1','0'));

  begin
    --  Check each pattern.
    for i in patterns'range loop
      --  Set the inputs.
  aa <= patterns(i).aa;
  bb <= patterns(i).bb;
  cc <= patterns(i).cc;
  dd <= patterns(i).dd;

  --  Wait for the results.
  wait for 5 ns;
  --  Check the outputs.
  assert ff = patterns(i).ff
    report "bad check" severity error;
end loop;
  assert false report "end of test" severity note;
  --  Wait forever; this will finish the simulation.
    wait;
    end process;

end e2a_tb_arc;


