//2-4 Decoder

module decoder (input logic [1:0] a,
               output logic [3:0] y);
always_comb
    case (a)
        0 : y = 1;
        1 : y = 2;
        2 : y = 4;
        3 : y = 8;
        default : y = 'x;
    endcase

endmodule