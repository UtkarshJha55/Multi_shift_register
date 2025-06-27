// Pulse generator - divides main clock into 5 pulses. Each pulse is useful for shift operations implemented in the design

`timescale 1ns/1ns
module pulse_gen (c, ct);
	output ct;
	output [4:1] c;
	wire [5:1] p;
	reg main_clk = 1'b0;
	always #10 main_clk = ~main_clk;
	clk_pulse_gen clk1(main_clk, p[1], ct);
	clk_pulse_gen clk2(p[1], p[2], c[4]);
	clk_pulse_gen clk3(p[2], p[3], c[3]);
	clk_pulse_gen clk4(p[3], p[4], c[2]);
	clk_pulse_gen clk5(p[4], p[5], c[1]);
endmodule
