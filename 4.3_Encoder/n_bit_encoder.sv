//2^n - n bit encoder
//https://stackoverflow.com/questions/29529730/priority-encoder-in-verilog

module n_encoder #(parameter N =3)
    (output logic [N-1:0] y, output logic valid,
      input logic [(2**N)-1:0] a);
    integer i;
  
    always @* 
    begin
    y = 0; // default value if a is all 0's
    valid = 0;

    for (i=[(2**N)-1:0]; i>=0; i=i-1)
    {
        if (a[i])
        { 
            y = i;
            valid=1;
        }
    }
    end
endmodule