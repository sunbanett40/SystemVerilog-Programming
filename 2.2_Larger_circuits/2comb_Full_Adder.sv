//full adder that has 2 always_comb blocks

module full_adder (output logic sum, co,
                    input logic a, b, ci);
                          logic i, j, k, l;

//level of logic 1
always_comb
    begin
    i = (a & ~b) | (~a & b);
    j = a & b;
    k = a & ci;
    l = b & ci;
    end

//level of logic 2
always_comb
    begin
    sum = (i & ~ci) | (~i & ci);
    co = j | k | l;
    end

endmodule