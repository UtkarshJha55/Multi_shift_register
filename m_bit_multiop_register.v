// M-BIT MULTI-OPERATIONAL SHIFT REGISTER DESIGN WITH 4-BIT MULTI-OPERATIONAL SUB SHIFT REGISTER
module m_bit_multiop_register (clk,c1,c2,c3,c4,ct,inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,inp9,inp10,sel,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10);
	input clk;
	inout c1, c2, c3, c4, ct;
	input inp1, inp2, inp3, inp4, inp5, inp6, inp7, inp8, inp9, inp10;
	input [2:0]sel;
	output op1, op2, op3, op4, op5, op6, op7, op8, op9, op10;
	k_bit_register kbit1(clk,c1 ,c2,c3,c4,ct,sel,inp1,inp2,inp3,inp4,inp5 ,op1,op2,op3,op4,op5);
	k_bit_register kbit2(clk,c1,c2,c3,c4,ct,sel,inp6,inp7,inp8,inp9,inp10,op6,op7,op8,op9,op10);
endmodule
