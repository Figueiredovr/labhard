module redutor2 (

input clk,rst,
output n_clk

);

reg [23:0] q;
assign n_clk = q[23];

always @(posedge clk)begin
	if(~rst)
		q={23{1'b0}};
	else
		q=q+1'b1;
end




endmodule