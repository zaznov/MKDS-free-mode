module DEC_for_dir
(
	input logic	[1:0]  data_in,
	input logic	strob_in,
	input logic	choose_dir_reg,
	output logic	[3:0]  strob_out_to_reg
);



always_comb
	if(strob_in & choose_dir_reg) begin
		case (data_in)
		0: 		strob_out_to_reg = 4'b0001;
		1: 		strob_out_to_reg = 4'b0010;
		2: 		strob_out_to_reg = 4'b0100;
		3: 		strob_out_to_reg = 4'b1000;
		default: 	strob_out_to_reg = 4'b0000;
		endcase
	end
	else strob_out_to_reg = 4'b0000;




endmodule
