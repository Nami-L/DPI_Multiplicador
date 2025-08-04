`timescale 1ns / 100ps
module tb;

import "DPI-C" function int c_multiplicador(input byte a, input byte b);

logic [7:0] a;
logic [7:0] b;
logic [15:0] c;

int c_mult;

//instanciar el dut

Multiplicador dut(
    .a(a),
    .b(b),
    .c(c)
);

initial begin 
    for (int i =0 ; i < 10; i++)begin
        a= $urandom_range(0,255);
        b= $urandom_range(0,255);
        #1
        c_mult = c_multiplicador(a,b);

        if(c_mult == c) 
    $display(" El valor del RTL=%0d y el valor del Modelo en C=%0d son lo mismo: Valor de a=%0d, b=%0d ",c,c_mult,a,b);
    else
    $display(" El valor del RTL=%0d y el valor del Modelo en C=%0d son diferentes: Valor de a=%0d, b=%0d ",c,c_mult,a,b);
end
$finish;
end
  initial begin
    $timeformat(-9, 1, "ns", 10);
    $fsdbDumpvars;                // Synopsys VCS
  end

endmodule