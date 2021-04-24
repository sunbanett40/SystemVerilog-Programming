//Structural full adder

module full_adder (output logic sum, co,
                    input logic a, b, ci);
                          logic i, j, k, l;

xor g0 (i, a, b);
xor g1 (sum, i, ci);
and g2 (j, a, b);
and g3 (k, a, ci);
and g4 (l, b, ci);
or g5 (co, j, k, l);

endmodule