//Dataflow full adder

module full_adder (output logic sum, co,
                    input logic a, b, ci);

always_comb
    begin
    sum = a ^ b ^ ci;
    co = (a & b) |
         (a & ci) |
         (b & ci);
    end

endmodule