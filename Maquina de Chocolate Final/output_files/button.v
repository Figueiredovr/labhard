module button (
input clk,b0,
output reg bt
);

reg [1:0] next_state;
parameter st0 = 2'b00 , st1 = 2'b01 , st2 = 2'b10;

always @(posedge clk) begin
	case (next_state)
	st0: begin
		if(b0==0)
			next_state <= st1;
	end
	st1: begin
		next_state <= st2;
	end
	st2: begin
		if(b0==1)
			next_state <= st0;
	end
	default: begin
		next_state <= st0;
	end
endcase
end

always @(next_state) begin
	if(next_state==st2)
		bt=0;
	else
		bt=1;
end

endmodule
	
