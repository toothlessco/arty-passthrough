# Passthrough confiugration for the Digilent Arty FPGA development board

This project exposes the UART pins of the FT2232H on I/O pins 26 and 27 of the Digilent Arty development board.

To compile the design in Vivado

1. Create a new project, select XC7A35TICSG324-1L as the FPGA
2. Add `top.v` as a design source
3. Add `Arty_Master.xdc` as a constraint file
4. Generate Bitstream (Note, all the logic that’s necessary is already implemented!)
5. Afterwards, you’ll get a top.bit file under your project folder under `<project name>.runs` and `impl_1`.
6. Use Vivado's Hardware Manager to load this bitstream on the FPGA.
