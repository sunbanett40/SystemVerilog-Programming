//4 Input Multiplexer Test Bench

module test_decoder; // No i/o

logic a, b, c, d;
logic s1, s0;
logic y;

decoder d0 (.*);    // only works if internal
                    // signals have the same names

initial
    begin
    a, b, c, d = 0;
    #10ns 
    s1 = 0;
    s0 = 0;
    #10ns 
    s1 = 0;
    s0 = 1; 
    #10ns 
    s1 = 1;
    s0 = 0; 
    #10ns 
    s1 = 1;
    s0 = 1;
    a, b, c, d = 1;
    #10ns 
    s1 = 0;
    s0 = 0;
    #10ns 
    s1 = 0;
    s0 = 1; 
    #10ns 
    s1 = 1;
    s0 = 0; 
    #10ns 
    s1 = 1;
    s0 = 1;     
    end

endmodule