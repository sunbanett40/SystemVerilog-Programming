//2-4 Decoder Test Bench

module test_decoder; // No i/o

logic [2:0] a;
logic [7:0] y;

decoder d0 (.*);    // only works if internal
                    // signals have the same names

initial
    begin
    #10ns a = 0;       // initial value of a is 'x
    #10ns a = 1;
    #10ns a = 2;
    #10ns a = 3;
    #10ns a = 4;
    #10ns a = 5;
    #10ns a = 6;
    #10ns a = 7;
    end

endmodule