module Multiplicador(
    input logic [7:0] a,
    input logic  [7:0] b,
    output logic [15:0] c
);

always_comb begin 

    c = a *b;
end

// assign c = a* b;

endmodule