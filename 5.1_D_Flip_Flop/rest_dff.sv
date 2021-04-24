//Resettable D type flip flop

module dffr (output logic q,
              input logic d, clk, n_reset);

always_ff @(posedge clk,
            negedge n_reset)
    
    if (!n_reset)
        q <= '0;
    else
        q <= d;
        
endmodule