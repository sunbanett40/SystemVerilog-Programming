//traffic light controller

module traffic (output logic start_timer,
                             major_green, minor_green,
                input logic clock, n_reset, timed, car);

enum {G, R} present_state, next_state;

always_ff @(posedge clock, negedge n_reset)
    begin: SEQ //label
        if (!n_reset)
            present_state <= G;
        else
        present_state <= next_state;
end

always_comb
    begin: COM
    start_timer = '0;
    minor_green = '0;
    major_green = '0;
    next_state = present_state;
    
    unique case (present_state)
        G: begin
            major_green = '1;
            if (car)
                begin
                    start_timer = '1;
                    next_state = R;
                end
        end
        R: begin
            minor_green = '1;
            if (timed)
                next_state = G;
        end
    endcase
end
endmodule