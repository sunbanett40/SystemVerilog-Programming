//Resettable D type flip flop

module dffs (output logic q,
              input logic d, clk, set);

always_ff @(negedge clk,
            posedge set)
    
    if (set)
        q <= '1;
    else
        q <= d;
        
endmodule