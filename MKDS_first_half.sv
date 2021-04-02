module MKDS_first_half
(
	input logic CS,
	input logic	[15:0]  data_in,
	input logic	CLK,




	output logic	OE_5_1,
	output logic	OE_5_2,
	output logic	OE_6_1,
	output logic	OE_6_2,
	output logic	OE_7_1,
	output logic	OE_7_2,
	output logic	OE_8_1,
	output logic	OE_8_2,
	output logic	OE_9_1,
	output logic	OE_9_2,
	output logic	OE_10_1,
	output logic	OE_10_2,
	output logic	OE_11_1,
	output logic	OE_11_2,
	output logic	OE_12_1,
	output logic	OE_12_2,


	inout tri	[7:0]  data_out_from_buf_0,
	inout tri	[7:0]  data_out_from_buf_1,
	inout tri	[7:0]  data_out_from_buf_2,
	inout tri	[7:0]  data_out_from_buf_3,
	inout tri	[7:0]  data_out_from_buf_4,
	inout tri	[7:0]  data_out_from_buf_5,
	inout tri	[7:0]  data_out_from_buf_6,
	inout tri	[7:0]  data_out_from_buf_7,
	inout tri	[7:0]  data_out_from_buf_8,
	inout tri	[7:0]  data_out_from_buf_9,
	inout tri	[7:0]  data_out_from_buf_10,
	inout tri	[7:0]  data_out_from_buf_11,
	inout tri	[7:0]  data_out_from_buf_12,
	inout tri	[7:0]  data_out_from_buf_13,
	inout tri	[7:0]  data_out_from_buf_14,
	inout tri	[7:0]  data_out_from_buf_15,
	
	output logic 	[7:0]	data_out_from_mux

);


logic	[15:0]  strob_out_to_reg;
logic	[3:0]  strob_out_to_dir;





control_logic_unit control_logic_unit
(
CS,
data_in[15:0],
CLK,
strob_out_to_reg[15:0],
strob_out_to_dir[3:0]

);




reg_out_unit reg_out_unit_my
(
data_in[15:0],
strob_out_to_reg[0],
strob_out_to_reg[1],
strob_out_to_reg[2],
strob_out_to_reg[3],
strob_out_to_reg[4],
strob_out_to_reg[5],
strob_out_to_reg[6],
strob_out_to_reg[7],
strob_out_to_reg[8],
strob_out_to_reg[9],
strob_out_to_reg[10],
strob_out_to_reg[11],
strob_out_to_reg[12],
strob_out_to_reg[13],
strob_out_to_reg[14],
strob_out_to_reg[15],
	
strob_out_to_dir[0],
strob_out_to_dir[1],
strob_out_to_dir[2],
strob_out_to_dir[3],
	
	
	
OE_5_1,
OE_5_2,
OE_6_1,
OE_6_2,
OE_7_1,
OE_7_2,
OE_8_1,
OE_8_2,
OE_9_1,
OE_9_2,
OE_10_1,
OE_10_2,
OE_11_1,
OE_11_2,
OE_12_1,
OE_12_2,
	
	
data_out_from_buf_0[7:0],
data_out_from_buf_1[7:0],
data_out_from_buf_2[7:0],
data_out_from_buf_3[7:0],
data_out_from_buf_4[7:0],
data_out_from_buf_5[7:0],
data_out_from_buf_6[7:0],
data_out_from_buf_7[7:0],
data_out_from_buf_8[7:0],
data_out_from_buf_9[7:0],
data_out_from_buf_10[7:0],
data_out_from_buf_11[7:0],
data_out_from_buf_12[7:0],
data_out_from_buf_13[7:0],
data_out_from_buf_14[7:0],
data_out_from_buf_15[7:0]

);



mux_128_8 mux_128_8
(	
data_in[11:8],
data_out_from_buf_0[7:0],
data_out_from_buf_1[7:0],
data_out_from_buf_2[7:0],
data_out_from_buf_3[7:0],
data_out_from_buf_4[7:0],
data_out_from_buf_5[7:0],
data_out_from_buf_6[7:0],
data_out_from_buf_7[7:0],
data_out_from_buf_8[7:0],
data_out_from_buf_9[7:0],
data_out_from_buf_10[7:0],
data_out_from_buf_11[7:0],
data_out_from_buf_12[7:0],
data_out_from_buf_13[7:0],
data_out_from_buf_14[7:0],
data_out_from_buf_15[7:0],
data_out_from_mux[7:0]
);




endmodule  