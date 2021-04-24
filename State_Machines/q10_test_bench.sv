//Digital System Test
//Question 10
//SystemVerilog State Machine Test Bench

module test_Figure_3;   // No i/o

logic clear, load, shift, ready;
logic clock, n_reset, start, [1:0] A;

Figure_3 d0 (.*);       // only works if internal
                        // signals have the same names

initial
    begin
    //loop 1
    #10ns start = 0;
    #10ns start = 1;
    #10ns A = 0;
    #10ns start = 1;

    //loop 2
    #10ns start = 0;
    #10ns start = 1;
    #10ns A = 1;
    #10ns A = 2;
    #10ns A = 1;
    #10ns start = 0;
    #10ns start = 1;
    end

endmodule