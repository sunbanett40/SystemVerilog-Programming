//SIPO shift register

module sipo #(parameter N = 8)
            (output logic [N−1:0] q,
              input logic a, clk);

always_ff @(posedge clk)
    q <= {q[N−2:0], a};
endmodule