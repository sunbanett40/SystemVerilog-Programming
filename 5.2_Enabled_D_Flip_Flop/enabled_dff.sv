//enabled d type flip flop

module dffe (output logic q,
              input logic d, clk, enable);

    always_ff @(posedge clk)
        if (enable)
            q <= d;
endmodule