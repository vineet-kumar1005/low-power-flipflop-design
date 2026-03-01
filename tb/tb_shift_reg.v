`timescale 1ns/1ps

module tb_shift_reg;

reg clk;
reg rst;
reg en;
reg [3:0] data_in;
wire [3:0] q_out;

shift_reg_tg uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .data_in(data_in),
    .q_out(q_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    en  = 1;
    data_in = 4'b0000;

    #15 rst = 0;

    #10 data_in = 4'b1010;
    #20 data_in = 4'b1100;
    #20 data_in = 4'b0111;

    #50 $finish;
end

endmodule