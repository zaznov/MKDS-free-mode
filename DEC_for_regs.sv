 module DEC_for_regs
(
	input logic	[3:0]  data_in,
	input logic	strob_in,
	input logic	choose_data_reg,
	output logic	[15:0]  strob_out_to_reg
);



always_comb
	if(strob_in & !choose_data_reg) begin
		case (data_in)
		0: 		strob_out_to_reg = 16'b0000_0000_0000_0001;
		1: 		strob_out_to_reg = 16'b0000_0000_0000_0010;
		2: 		strob_out_to_reg = 16'b0000_0000_0000_0100;
		3: 		strob_out_to_reg = 16'b0000_0000_0000_1000;
		4: 		strob_out_to_reg = 16'b0000_0000_0001_0000;
		5: 		strob_out_to_reg = 16'b0000_0000_0010_0000;
		6: 		strob_out_to_reg = 16'b0000_0000_0100_0000;
		7: 		strob_out_to_reg = 16'b0000_0000_1000_0000;
		
		8: 		strob_out_to_reg = 16'b0000_0001_0000_0000;
		9: 		strob_out_to_reg = 16'b0000_0010_0000_0000;
		10: 	strob_out_to_reg = 16'b0000_0100_0000_0000;
		11: 	strob_out_to_reg = 16'b0000_1000_0000_0000;
		12: 	strob_out_to_reg = 16'b0001_0000_0000_0000;
		13: 	strob_out_to_reg = 16'b0010_0000_0000_0000;
		14: 	strob_out_to_reg = 16'b0100_0000_0000_0000;
		15: 	strob_out_to_reg = 16'b1000_0000_0000_0000;
		default: 	strob_out_to_reg = 16'b0000_0000_0000_0000;
		endcase
	end
	else strob_out_to_reg = 16'b0000_0000_0000_0000;




endmodule 




