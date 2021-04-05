  module reg_out_unit
(
	input logic	[15:0]  data_in,
	input logic	sel_0,
	input logic	sel_1,
	input logic	sel_2,
	input logic	sel_3,
	input logic	sel_4,
	input logic	sel_5,
	input logic	sel_6,
	input logic	sel_7,
	input logic	sel_8,
	input logic	sel_9,
	input logic	sel_10,
	input logic	sel_11,
	input logic	sel_12,
	input logic	sel_13,
	input logic	sel_14,
	input logic	sel_15,
	
	input logic	sel_dir_0,
	input logic	sel_dir_1,
	input logic	sel_dir_2,
	input logic	sel_dir_3,
	
	
	
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
	output logic	[7:0]  data_out_from_reg_15,

	output logic	dir_5_1,
	output logic	dir_5_2,
	output logic	dir_6_1,
	output logic	dir_6_2,
	output logic	dir_7_1,
	output logic	dir_7_2,
	output logic	dir_8_1,
	output logic	dir_8_2,
	output logic	dir_9_1,
	output logic	dir_9_2,
	output logic	dir_10_1,
	output logic	dir_10_2,
	output logic	dir_11_1,
	output logic	dir_11_2,
	output logic	dir_12_1,
	output logic	dir_12_2

);


logic CLR;
assign CLR = data_in[15];



regs_dir_out regs_dir_out_my
(
sel_dir_0,
sel_dir_1,
sel_dir_2,
sel_dir_3,
CLR,
data_in[7:0],

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
dir_12_2,
	
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
OE_12_2

);




separate_regs_out separate_regs_out_my
(
sel_0,
sel_1,
sel_2,
sel_3,
sel_4,
sel_5,
sel_6,
sel_7,
sel_8,
sel_9,
sel_10,
sel_11,
sel_12,
sel_13,
sel_14,
sel_15,

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
dir_12_2,
	
CLR,

data_in[7:0],

data_out_from_reg_0 [7:0],
data_out_from_reg_1 [7:0],
data_out_from_reg_2 [7:0],
data_out_from_reg_3 [7:0],
data_out_from_reg_4 [7:0],
data_out_from_reg_5 [7:0],
data_out_from_reg_6 [7:0],
data_out_from_reg_7 [7:0],
data_out_from_reg_8 [7:0],
data_out_from_reg_9 [7:0],
data_out_from_reg_10 [7:0],
data_out_from_reg_11 [7:0],
data_out_from_reg_12 [7:0],
data_out_from_reg_13 [7:0],
data_out_from_reg_14 [7:0],
data_out_from_reg_15 [7:0]
);


endmodule 