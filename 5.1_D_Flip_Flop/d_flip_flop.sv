//D type flip flop

module dff (output logic q,
             input logic d, clk);

always_ff @(posedge clk)
    q <= d;
endmodule