`timescale 1ns/1ps

module tb_dff;

reg clk;
reg rst;
reg d;
wire q;

dff uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    d   = 0;

    #15 rst = 0;

    #10 d = 1;
    #20 d = 0;
    #20 d = 1;

    #40 $finish;
end

endmodule