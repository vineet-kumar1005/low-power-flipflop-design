`timescale 1ns/1ps

module tb_dff_tg;

reg clk;
reg rst;
reg en;
reg d;
wire q;

dff_tg_behavioral uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    en  = 0;
    d   = 0;

    #15 rst = 0;

    #10 en = 1;
    #10 d = 1;
    #20 d = 0;
    #20 en = 0;

    #40 $finish;
end

endmodule