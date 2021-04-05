module MKDS_first_half
(
	input logic CS,
	input logic	[15:0]  data_in,
	input logic	CLK,

	output logic	[15:0]OE,
	output logic	[15:0]dir,



	output logic	[7:0]  data_out_from_reg_0,
	output logic	[7:0]  data_out_from_reg_1,
	output logic	[7:0]  data_out_from_reg_2,
	output logic	[7:0]  data_out_from_reg_3,
	output logic	[7:0]  data_out_from_reg_4,
	output logic	[7:0]  data_out_from_reg_5,
	output logic	[7:0]  data_out_from_reg_6,
	output logic	[7:0]  data_out_from_reg_7,
	output logic	[7:0]  data_out_from_reg_8,
	output logic	[7:0]  data_out_from_reg_9,
	output logic	[7:0]  data_out_from_reg_10,
	output logic	[7:0]  data_out_from_reg_11,
	output logic	[7:0]  data_out_from_reg_12,
	output logic	[7:0]  data_out_from_reg_13,
	output logic	[7:0]  data_out_from_reg_14,
	output logic	[7:0]  data_out_from_reg_15

);


logic	[15:0]  strob_out_to_reg;
logic	[3:0]  strob_out_to_dir;

logic	OE_5_1;
logic	OE_5_2;
logic	OE_6_1;
logic	OE_6_2;
logic	OE_7_1;
logic	OE_7_2;
logic	OE_8_1;
logic	OE_8_2;
logic	OE_9_1;
logic	OE_9_2;
logic	OE_10_1;
logic	OE_10_2;
logic	OE_11_1;
logic	OE_11_2;
logic	OE_12_1;
logic	OE_12_2;


assign OE[0] = OE_5_1;
assign OE[1] = OE_5_2;
assign OE[2] = OE_6_1;
assign OE[3] = OE_6_2;
assign OE[4] = OE_7_1;
assign OE[5] = OE_7_2;
assign OE[6] = OE_8_1;
assign OE[7] = OE_8_2;
assign OE[8] = OE_9_1;
assign OE[9] = OE_9_2;
assign OE[10] = OE_10_1;
assign OE[11] = OE_10_2;
assign OE[12] = OE_11_1;
assign OE[13] = OE_11_2;
assign OE[14] = OE_12_1;
assign OE[15] = OE_12_2;


logic	dir_5_1;
logic	dir_5_2;
logic	dir_6_1;
logic	dir_6_2;
logic	dir_7_1;
logic	dir_7_2;
logic	dir_8_1;
logic	dir_8_2;
logic	dir_9_1;
logic	dir_9_2;
logic	dir_10_1;
logic	dir_10_2;
logic	dir_11_1;
logic	dir_11_2;
logic	dir_12_1;
logic	dir_12_2;


assign dir[0] = dir_5_1;
assign dir[1] = dir_5_2;
assign dir[2] = dir_6_1;
assign dir[3] = dir_6_2;
assign dir[4] = dir_7_1;
assign dir[5] = dir_7_2;
assign dir[6] = dir_8_1;
assign dir[7] = dir_8_2;
assign dir[8] = dir_9_1;
assign dir[9] = dir_9_2;
assign dir[10] = dir_10_1;
assign dir[11] = dir_10_2;
assign dir[12] = dir_11_1;
assign dir[13] = dir_11_2;
assign dir[14] = dir_12_1;
assign dir[15] = dir_12_2;


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
	
	
data_out_from_reg_0[7:0],
data_out_from_reg_1[7:0],
data_out_from_reg_2[7:0],
data_out_from_reg_3[7:0],
data_out_from_reg_4[7:0],
data_out_from_reg_5[7:0],
data_out_from_reg_6[7:0],
data_out_from_reg_7[7:0],
data_out_from_reg_8[7:0],
data_out_from_reg_9[7:0],
data_out_from_reg_10[7:0],
data_out_from_reg_11[7:0],
data_out_from_reg_12[7:0],
data_out_from_reg_13[7:0],
data_out_from_reg_14[7:0],
data_out_from_reg_15[7:0],


dir_5_1,
dir_5_2,
dir_6_1,
dir_6_2,
dir_7_1,
dir_7_2,
dir_8_1,
dir_8_2,
dir_9_1,
dir_9_2,
dir_10_1,
dir_10_2,
dir_11_1,
dir_11_2,
dir_12_1,
dir_12_2

);







endmodule  