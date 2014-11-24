module maquina_chocolate (
	input clk,
	input rst,
	input nc20, nc10, nc5,
	output [3:0] led
);


wire clk_r,c5,c10,c20;


redutor2 redutor2_u0(
	.clk(clk),
	.rst(rst),
	.n_clk(clk_r)
);
maquina_core maquina_core_u0(
	.clk(clk_r),
	.rst(rst),
	.c20(c20),
	.c10(c10),
	.c5(c5),
	.led(led)
);

button b0(
	.b0(nc5),
	.bt(c5),
	.clk(clk)
);

button b1(
	.b0(nc10),
	.bt(c10),
	.clk(clk)
);

button b2(
	.b0(nc20),
	.bt(c20),
	.clk(clk)
);


endmodule
