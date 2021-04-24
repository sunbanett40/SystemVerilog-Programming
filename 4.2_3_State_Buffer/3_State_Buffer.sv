//3 State Buffer

module three_state
    (input logic a, enable,
    output logic y);

    always_comb
        y = enable ? a : 1'bz;

endmodule