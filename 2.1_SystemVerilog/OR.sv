//OR.sv

module or2 (output logic y,
input logic a, b);

always_comb
y = a | b;

endmodule