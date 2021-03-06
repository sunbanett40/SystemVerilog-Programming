//enabled resettable d type flip flop

module dffre (output logic q,
               input logic d, clk, enable, n_reset);

always_ff @(posedge clk,
            negedge n_reset)
    if (!n_reset)
        q <= '0;
    else if (enable)
        q <= d;
endmodule