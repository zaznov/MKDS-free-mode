	module separate_regs_out
(
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
	
	input logic	dir_5_1,
	input logic	dir_5_2,
	input logic	dir_6_1,
	input logic	dir_6_2,
	input logic	dir_7_1,
	input logic	dir_7_2,
	input logic	dir_8_1,
	input logic	dir_8_2,
	input logic	dir_9_1,
	input logic	dir_9_2,
	input logic	dir_10_1,
	input logic	dir_10_2,
	input logic	dir_11_1,
	input logic	dir_11_2,
	input logic	dir_12_1,
	input logic	dir_12_2,
	
	input logic	CLR,

	input logic		[7:0]  data_in,

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

Reg_out Reg_out_0(data_in, sel_0, CLR, data_out_from_reg_0);
Reg_out Reg_out_1(data_in, sel_1, CLR, data_out_from_reg_1);
Reg_out Reg_out_2(data_in, sel_2, CLR, data_out_from_reg_2);
Reg_out Reg_out_3(data_in, sel_3, CLR, data_out_from_reg_3);
Reg_out Reg_out_4(data_in, sel_4, CLR, data_out_from_reg_4);
Reg_out Reg_out_5(data_in, sel_5, CLR, data_out_from_reg_5);
Reg_out Reg_out_6(data_in, sel_6, CLR, data_out_from_reg_6);
Reg_out Reg_out_7(data_in, sel_7, CLR, data_out_from_reg_7);
Reg_out Reg_out_8(data_in, sel_8, CLR, data_out_from_reg_8);
Reg_out Reg_out_9(data_in, sel_9, CLR, data_out_from_reg_9);
Reg_out Reg_out_10(data_in, sel_10, CLR, data_out_from_reg_10);
Reg_out Reg_out_11(data_in, sel_11, CLR, data_out_from_reg_11);
Reg_out Reg_out_12(data_in, sel_12, CLR, data_out_from_reg_12);
Reg_out Reg_out_13(data_in, sel_13, CLR, data_out_from_reg_13);
Reg_out Reg_out_14(data_in, sel_14, CLR, data_out_from_reg_14);
Reg_out Reg_out_15(data_in, sel_15, CLR, data_out_from_reg_15);


endmodule 


	module Reg_out
(
	input logic	[7:0]  D,
	input logic	CLK,
	input logic	clr,
	output logic	[7:0]  Q
);



always @ (posedge clr or posedge CLK)
begin
	// Reset whenever the reset signal goes up, regardless of the clock
	if (clr)
	begin
		Q <= 0;
	end
	// If not resetting, update the register output on the clock's rising edge
	else
	begin
		Q <= D;
	end
end


endmodule 


