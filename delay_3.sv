 module delay_3			//actually 2
(
input logic CLK,
input logic strob_WR,
input logic CLR,
output logic strob_main
);

logic Q_out_reg_1;
logic Q_out_reg_2;
logic Q_out_reg_3;

d_trig d_trig_1(CLK, strob_WR, CLR, Q_out_reg_1);

d_trig d_trig_2(CLK, Q_out_reg_1, CLR, Q_out_reg_2);

d_trig d_trig_3(CLK, Q_out_reg_2, CLR, Q_out_reg_3);

assign strob_main = Q_out_reg_2 & !Q_out_reg_3;

endmodule 



 module d_trig
(
	input logic clk,
	input logic D,
	input logic clear,
	output logic Q_out
);


always @ (posedge clear or posedge clk)
begin
	if (clear)
	begin
		Q_out = 1'b0;
	end
	else if(clk)
	begin
		Q_out = D;
	end
end
endmodule 
