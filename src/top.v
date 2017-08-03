module top
(
    input wire          clk,
    input wire          ftdi_rx,
    output wire         ftdi_tx,
    input wire          board_rx,
    output wire         board_tx,
    output wire         board_rst,
    output reg          led = 1'b1,
    output wire [13:0]  debug_header
);

// Combinatorial logic
assign board_tx = ftdi_rx;
assign ftdi_tx = board_rx;
assign board_rst = 1'b1;
assign debug_header = {11'd0, clk, ftdi_rx, ftdi_tx};

endmodule
