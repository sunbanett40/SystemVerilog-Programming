//traffic light controller

module traffic (output logic start_timer,
                             major_green, minor_green,
                input logic clock, n_reset, timed, car);

enum {G, R} state;

always_ff @(posedge clock,
            negedge n_reset)
    begin: SEQ
        if (!n_reset)
            state <= G;
        else
            unique case (state)
                G: if (car)
                    state <= R;
                R: if (timed)
                    state <= G;
            endcase
end

always_comb
    begin: OP
    start_timer = '0;
    minor_green = '0;
    major_green = '0;

    unique case (state)
        G: begin
        major_green = '1;
        if (car)
            start_timer = '1;
        end
        R: minor_green = '1;
    endcase
end
endmodule