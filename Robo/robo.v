module robo(
	input clk,    // Clock
	input rst_n,  // Asynchronous reset active low
	input front,
	input left,

	output  foward,
	output  turn_left
	
	);

wire wire_clk;
wire wire_foward, wire_turnleft;

assign foward = ~wire_foward;
assign turn_left = ~wire_turnleft;

robo_core robo01(

	.clk(w_clk),
	.rst_n(rst_n),
	.front(front),
	.left(left),

	.foward(wire_foward),
	.turn_left(wire_turnleft)

);

redutor2 redutor01(

	.clk(clk),
	.rst(rst_n),

	.n_clk(wire_clk)


);

endmodule