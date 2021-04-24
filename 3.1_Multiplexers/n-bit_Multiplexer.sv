//n-bit Multiplexer

module mux #(parameter N = 3) // n = no. of bits
    (input logic [(2**N)-1:0] a, [N-1:0] s, 
    output logic y);

always_comb
    y = a[s]
        
endmodule