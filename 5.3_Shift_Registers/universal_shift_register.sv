//universal shift register

module usr #(parameter N = 4)
            (output logic [N-1:0] q,
              input logic lin, rin, clk, n_reset,
              input logic [N-1:0] a,
              input logic [1:0] s);

always_ff @(posedge clk,
            negedge n_reset)
    if (!n_reset)
        q <= '0;
    else
        case (s)
            2'b11: q <= a;
            2'b01: q <= {q[N-2:0], lin};
            2'b10: q <= {rin, q[N-1:1]};
            default:;
        endcase
endmodule