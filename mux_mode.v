// 8x1 MUX implemented where 5 inputs are used for selecting different shift operations

module mux_mode(ip1,ip2,ip3,ip4,ip5,sel,op);
  inout ip1,ip2,ip3,ip4,ip5;
  input [2:0] sel;
  output op;
  reg op; 
  always @ (*)
    case (sel)
   3'b000: op=ip1;
   3'b001: op=ip2;
   3'b010: op=ip3;
   3'b011: op=ip4;
   3'b100: op=ip5;
   default: op = 0; //$display("Invalid control signals");
 endcase
endmodule
