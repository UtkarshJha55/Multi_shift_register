// MULTI-OPERATIONAL K-BIT SUB SHIFT REGISTER WITH LFSR 
module k_bit_register (clk,cp1,cp2,cp3,cp4,ct5,sel,ip1,ip2,ip3,ip4,ip5,out1,out2,out3,out4,out5);
	input clk;
	inout cp1,cp2,cp3,cp4,ct5;
	input ip1,ip2,ip3,ip4,ip5;
	input [2:0]sel;
	wire q1, q2, q3, q4, T1;
	wire m_out1, m_out2, m_out3, m_out4, m_out5;
	output out1, out2, out3, out4, out5;
	mux_mode mux1 (m_out1,T1,q2,ip1,f ,sel,m_out1);
	mux_mode mux2 (m_out2,q1,q3,ip2,q1,sel,m_out2);
	mux_mode mux3 (m_out3,q2,q4,ip3,q2,sel,m_out3);
	mux_mode mux4 (m_out4,q3,T1,ip4,q3,sel,m_out4);
	mux_mode mux5 (m_out5,q4,q1,ip5,q4,sel,m_out5);
  lfsr xor1(q4, T1, f);	  // q4 <= T1 ^ f
	pulse_gen pulse(clk,cp1,cp2,cp3,cp4,ct5);
	latch_mode latch1 (m_out1,sel, cp1, ct5, q1); 
	latch_mode latch2 (m_out2,sel, cp2, cp4, q2); 
	latch_mode latch3 (m_out3,sel, cp3, cp3, q3); 
	latch_mode latch4 (m_out4,sel, cp4, cp2, q4); 
	latch_mode latch5 (m_out5,sel, ct5, cp1, T1); 
	assign out1 = q1;
	assign out2 = q2;
   	assign out3 = q3;
   	assign out4 = q4;
   	assign out5 = T1;
endmodule
