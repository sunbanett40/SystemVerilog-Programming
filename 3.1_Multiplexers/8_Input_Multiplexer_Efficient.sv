//n-bit Multiplexer

module mux #(parameter N = 3) // n = no. of bits
    (input logic [(2**N)-1:0] a, [N-1:0] s, 
    output logic y);

always_comb
    case(s)
        N'b111 : y = a[7]
        N'b110 : y = a[6]
        N'b101 : y = a[5]
        N'b100 : y = a[4]
        N'b011 : y = a[3]
        N'b010 : y = a[2]
        N'b001 : y = a[1]
        N'b000 : y = a[0]
        default:
    endcase
    


endmodule