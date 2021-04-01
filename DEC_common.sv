module DEC_common
(
	input logic	[4:0]  data_in,
	input logic	strob_in,
	output logic	[15:0]  strob_out_to_reg,
	output logic	[3:0]  strob_out_to_dir
);

logic choose_data__dir_reg;

assign choose_data__dir_reg = data_in[4];

DEC_for_regs DEC_for_regs_1
(
data_in[3:0],
strob_in,
choose_data__dir_reg,
strob_out_to_reg[15:0]
);




DEC_for_dir DEC_for_dir_1
(
data_in[1:0],
strob_in,
choose_data__dir_reg,
strob_out_to_dir[3:0]
);


endmodule
