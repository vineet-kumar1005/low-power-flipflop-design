module dff_clock_or (
    input clk,
    input rst,
    input en,
    input d,
    output reg q
);

wire gated_clk;
assign gated_clk = clk | en;   // OR-based clock gating

always @(posedge gated_clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end

endmodule