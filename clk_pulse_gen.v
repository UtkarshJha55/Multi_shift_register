\\ Clock pulse circuit
`timescale 1ns/1ns
module clk_pulse_gen (clk, nxt_clk, clk_out);
	input clk;
	output nxt_clk, clk_out;
	wire del, inv1, and1;
	assign #2 del = clk;
	assign inv1 = ~del;
	assign and1 = clk & inv1;
	assign nxt_clk = ~inv1;
	assign clk_out = and1;
endmodule
