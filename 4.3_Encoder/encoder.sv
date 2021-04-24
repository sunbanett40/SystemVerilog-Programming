//4-2 bit encoder

module encoder (output logic [1:0] y, output logic valid,
                 input logic [3:0] a);

always_comb //procedural block, combinational logic
    begin
    valid = 1'b1; // default value
    unique casez (a)    //treat z or ? as don't care
                        //unique checks for overlapping branches
        4'b1??? : y = 2'b11;
        4'b01?? : y = 2'b10;
        4'b001? : y = 2'b01;
        4'b0001 : y = 2'b00;
        4'b0000 : begin
                y = 2'b00;
                valid = 1'b0;
                end
    default : begin // unknown in, unknown out
                y = 2'bxx;
                valid = 1'bx;
                end
    endcase
    end
endmodule