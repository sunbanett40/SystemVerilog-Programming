//Digital System Test
//Question 10
//SystemVerilog State Machine

module Figure_3 (output logic clear, load, shift, ready
                  input logic clock, n_reset, start, [1:0] A);

enum {S0, S1, S2} present_state, next_state;

always_ff @(posedge clock, negedge n_reset)
    begin: SEQ                              //Sequential label for modelsim
        if (!n_reset)                       //Reset
            present_state <= S0;
        else                                //Update state on clockedge
            present_state <= next_state;
    end

always_comb
    begin: COM                              //Combinational label for modelsim

        //Set default values of output
        clear = '0
        load = '0
        shift = '0
        ready = '0

        unique case (present_state)         //Unique case label gives compiler error if a state is missing
            S0 : begin
                clear = '1;                 //Assert unconditional output
                if (start)                  //Conditional to progress to load state
                    next_state = S1;
                else                        //Else stay in clear state
                    next_state = S0;
            end
            S1 : begin
                load = '1;                  //Assert load output
                if (A[0])                   //Conditional to assert shift and stay in load state
                    begin
                        shift = '1;
                        next_state = S1;
                    end
                else if (A[1])              //Conditional to stay in load state
                        next_state = S1;
                else
                        next_state = S2;    //Else go to ready state
            end
            S2 : begin
                ready = '1;                 //Assert ready output
                if (start)                  //Conditional to return to clear state
                    next_state = S0;
                else                        //Else stay in ready state
                    next_state = S2;
            end
        endcase
    end
endmodule