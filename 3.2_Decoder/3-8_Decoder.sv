//3-8 Decoder

module decoder (input logic [2:0] a,
               output logic [7:0] y);
always_comb
    case (a)
        0 : y = 1;
        1 : y = 2;
        2 : y = 4;
        3 : y = 8;
        4 : y = 16;
        5 : y = 32;
        6 : y = 64;
        7 : y = 128;
        default : y = 'x;
    endcase
    
endmodule