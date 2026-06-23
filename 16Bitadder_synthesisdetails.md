=== fulladder4 ===

        +----------Local Count, excluding submodules.
        |
       57 wires
       66 wire bits
        5 public wires
       14 public wire bits
        5 ports
       14 port bits
       28 cells
        8   $_AND_
       12   $_NAND_
        8   $_OR_

   Estimated number of transistors:        144

=== design hierarchy ===

        +----------Count including submodules.
        |
      169 fulladder16
       28 fulladder4

        +----------Count including submodules.
        |
      343 wires
      426 wire bits
       30 public wires
      113 public wire bits
       29 ports
      110 port bits
        - memories
        - memory bits
        - processes
      169 cells
        1   $_ANDNOT_
       45   $_AND_
       70   $_NAND_
        4   $_NOR_
        1   $_ORNOT_
       48   $_OR_
        4 submodules
        4   fulladder4

   Estimated number of transistors:        866
   Obtained using Yosys synthesis tool. 
   TCL command: abc -g aig
