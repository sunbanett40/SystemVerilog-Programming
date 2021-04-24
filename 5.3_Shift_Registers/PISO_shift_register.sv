//PISO shift Register

module piso #(parameter N = 8)
            (output logic q,
              input logic [N−1:0] a, clk);

always_ff @(posedge clk)
    q <= {a, q[N-1:1]};
endmodule