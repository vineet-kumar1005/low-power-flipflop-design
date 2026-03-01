module shift_reg_tg (
    input clk,
    input rst,
    input en,
    input [3:0] data_in,
    output [3:0] q_out
);

wire [3:0] q;

dff_tg_behavioral d0 (.clk(clk), .rst(rst), .en(en), .d(data_in[0]), .q(q[0]));
dff_tg_behavioral d1 (.clk(clk), .rst(rst), .en(en), .d(q[0]),       .q(q[1]));
dff_tg_behavioral d2 (.clk(clk), .rst(rst), .en(en), .d(q[1]),       .q(q[2]));
dff_tg_behavioral d3 (.clk(clk), .rst(rst), .en(en), .d(q[2]),       .q(q[3]));

assign q_out = q;

endmodule