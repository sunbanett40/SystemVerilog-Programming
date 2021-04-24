//8 Input Multiplexer

module mux (input logic a, b, c, d, e, f, g, h
            input logic s2, s1, s0, 
           output logic y);

always_comb
    if (s0)
        if (s1)
            if (s2)
                y = h;
            else
                y = g;
        else
           if (s2)
                y = f;
            else
                y = e;
    else
        if (s1)
            if (s2)
                y = d;
            else
                y = c;
        else
           if (s2)
                y = b;
            else
                y = a;


endmodule