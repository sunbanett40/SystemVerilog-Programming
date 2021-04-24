//enabled resettable n bit register

module dffne #(parameter N = 8)
            (output logic [N-1:0] q,
              input logic [N-1:0] d,
              input clk, enable, n_reset);

always_ff @(posedge clk,
            negedge n_reset)
    if (!n_reset)
        q <= '0;
    else if (enable)
        q <= d;
endmodule