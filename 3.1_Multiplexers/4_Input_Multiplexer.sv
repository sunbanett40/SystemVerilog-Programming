//4 Input Multiplexer

module mux (input logic a, b, c, d,
            input logic s1, s0, 
           output logic y);

always_comb
    if (s0)
        if (s1)
            y = d;
        else
            y = c;
    else
        if (s1)
            y = b;
        else
            y = a;

endmodule