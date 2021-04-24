//AND.sv

module and2 (output logic y,
input logic a, b);

always_comb
y = a & b;

endmodule