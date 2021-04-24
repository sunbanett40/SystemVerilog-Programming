//NOT.sv

module not (output logic y,
input logic a);

always_comb
y = ~a;

endmodule