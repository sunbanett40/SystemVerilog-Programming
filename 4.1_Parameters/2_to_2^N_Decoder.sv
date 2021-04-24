//N to 2^N Decoder

module decoder2
    #(parameter N =3)
    (input logic [N-1:0] a,
    output logic [(2**N)-1:0] y );

    always_comb
        y = 1'b1 << a;

endmodule
