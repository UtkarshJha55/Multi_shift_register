// Bi enabled pulsed latch - D latch implemented using 2 enables for enabling different operations as 00,01,10,11
`timescale 1ns/1ns
module latch_mode (D1,sel, En1, En2, Q1);
  input D1;
  input [2:0] sel;
  inout En1, En2;
  output reg Q1;
  always @ (D1 or sel or En1 or En2)  
        begin          
          if (En1 == 1'b1 & (sel== 3'b000 | sel== 3'b001 | sel== 3'b011|sel==3'b100))             
              Q1<=D1;
          else if(En2 == 1'b1 & sel == 3'b010)
              Q1<=D1;
        end
endmodule
