// vending machine

module vending(output logic ready,dispense,ret,coin
                input logic clock,n_reset,twenty,ten);

enum {A, B, C, D, F, I} present_state, next_state;

always_ff @(posedge clock, negedge n_reset)
    begin: SEQ
        if (~n_reset)
            present_state <= A;
        else
            present_state <= next_state;
    end

always_comb
    begin: COM
        ready = '0;
        dispense = '0;
        ret = '0;
        coin = '0;

        unique case (present_state)
            A : begin
                ready = '1;
                if (twenty)
                    next_state = D;
                else if (ten)
                    next_state = C;
                else
                    next_state = A;
            end
            B : begin
                dispense = '1;
                next_state = A;
            end
            C : begin
                coin = '1;
                if (twenty)
                    next_state = F;
                else if (ten)
                    next_state = D;
                else
                    next_state = C;
            end
            D : begin
                coin = '1;
                if (twenty)
                    next_state = B;
                else if (ten)
                    next_state = F;
                else
                    next_state = D;
            end
            F : begin
                coin = '1;
                if (twenty)
                    next_state = I;
                else if (ten)
                    next_state = B;
                else
                    next_state = F;
            end
            I : begin
                ret = '1;
                next_state = A;
            end
        endcase
    end
endmodule