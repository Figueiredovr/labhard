module maquina_core (

output [3:0] led,
input c20, c10, c5, clk, rst
);
reg chocolate_bar_open;
reg [3:0]  Next_State;
parameter paid0 = 4'b0000, paid5 = 4'b0001, paid10 = 4'b0010, paid15 = 4'b0011, paid20 = 4'b0100, paid25 = 4'b0101, paid30 = 4'b0111, paid35 = 4'b1000, paid40 = 4'b1001, paid45 = 4'b1010;
assign led = ~Next_State;

always @(posedge clk ) begin
	if(!rst)
	Next_State <= paid0;
	else begin
	case (Next_State)
	paid0 : begin
		if (!c5) Next_State <= paid5;
		else if (!c10) Next_State <= paid10;
		else if (!c20) Next_State <= paid20;
		else Next_State <= paid0;
	end
	paid5 : begin
		if (!c5) Next_State <= paid10;
		else if (!c10) Next_State <= paid15;
		else if (!c20) Next_State <= paid25;
		else Next_State <= paid5;
	end
	paid10 : begin
		if (!c5) Next_State <= paid15;
		else if (!c10) Next_State <= paid20;
		else if (!c20) Next_State <= paid30;
		else Next_State <= paid10;
	end
	paid15 : begin
		if (!c5) Next_State <= paid20;
		else if (!c10) Next_State <= paid25;
		else if (!c20) Next_State <= paid35;
		else Next_State <= paid15;
	end
	paid20 : begin
		if (!c5) Next_State <= paid25;
		else if (!c10) Next_State <= paid30;
		else if (!c20) Next_State <= paid40;
		else Next_State <= paid20;
	end
	paid25 : begin
		if (!c5) Next_State <= paid30;
		else if (!c10) Next_State <= paid35;
		else if (!c20) Next_State <= paid45;
		else Next_State <= paid25;
	end
	paid30 : begin
		if (!c5) Next_State <= paid35;
		else if (!c10) Next_State <= paid40;
		else if (!c20) Next_State <= paid45;
		else Next_State <= paid30;
	end
	paid35 : begin
		if (!c5) Next_State <= paid40;
		else if (!c10) Next_State <= paid45;
		else if (!c20) Next_State <= paid45;
		else Next_State <= paid35;
	end
	paid40 : begin
		if (!c5) Next_State <= paid45;
		else if (!c10) Next_State <= paid45;
		else if (!c20) Next_State <= paid45;
		else Next_State <= paid40;
	end
	paid45 : begin
		Next_State <= paid0;	
	end
endcase
end
end


always @( Next_State or c5 or c10 or c20) begin
	if (Next_State == paid45) begin
		chocolate_bar_open = 0;
	end
	else begin
		chocolate_bar_open = 1;
	end
end

endmodule