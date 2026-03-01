module dff_tg_behavioral (
    input clk,
    input rst,
    input en,
    input d,
    output reg q
);

reg master;

wire sample_window;
assign sample_window = clk & en; 

always @(posedge sample_window or posedge rst) begin
    if (rst)
        master <= 1'b0;
    else
        master <= d;
end

always @(negedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= master;
end

endmodule