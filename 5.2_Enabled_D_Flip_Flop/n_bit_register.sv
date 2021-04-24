//n bit register

module dffn #(parameter N = 8)
            (output logic [N-1:0] q,
              input logic [N-1:0] d,
              input clk, n_reset);

always_ff @(posedge clk, negedge n_reset)
    if (!n_reset)
        q <= '0;
    else
        q <= d;
endmodule