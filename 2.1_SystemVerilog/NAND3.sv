//NAND3.sv

module nand2 (output logic y,
input logic a, b, c);

always_comb
y = ~(a & b & c);

endmodule