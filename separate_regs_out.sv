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

	output tri	[7:0]  data_out_from_buf_0,
	output tri	[7:0]  data_out_from_buf_1,
	output tri	[7:0]  data_out_from_buf_2,
	output tri	[7:0]  data_out_from_buf_3,
	output tri	[7:0]  data_out_from_buf_4,
	output tri	[7:0]  data_out_from_buf_5,
	output tri	[7:0]  data_out_from_buf_6,
	output tri	[7:0]  data_out_from_buf_7,
	output tri	[7:0]  data_out_from_buf_8,
	output tri	[7:0]  data_out_from_buf_9,
	output tri	[7:0]  data_out_from_buf_10,
	output tri	[7:0]  data_out_from_buf_11,
	output tri	[7:0]  data_out_from_buf_12,
	output tri	[7:0]  data_out_from_buf_13,
	output tri	[7:0]  data_out_from_buf_14,
	output tri	[7:0]  data_out_from_buf_15
);

logic	[7:0]  data_out_from_reg_0;
logic	[7:0]  data_out_from_reg_1;
logic	[7:0]  data_out_from_reg_2;
logic	[7:0]  data_out_from_reg_3;
logic	[7:0]  data_out_from_reg_4;
logic	[7:0]  data_out_from_reg_5;
logic	[7:0]  data_out_from_reg_6;
logic	[7:0]  data_out_from_reg_7;
logic	[7:0]  data_out_from_reg_8;
logic	[7:0]  data_out_from_reg_9;
logic	[7:0]  data_out_from_reg_10;
logic	[7:0]  data_out_from_reg_11;
logic	[7:0]  data_out_from_reg_12;
logic	[7:0]  data_out_from_reg_13;
logic	[7:0]  data_out_from_reg_14;
logic	[7:0]  data_out_from_reg_15;


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




Buffer_IO Buffer_IO_0(data_out_from_reg_0, dir_5_1, data_out_from_buf_0);
Buffer_IO Buffer_IO_1(data_out_from_reg_1, dir_5_2, data_out_from_buf_1);
Buffer_IO Buffer_IO_2(data_out_from_reg_2, dir_6_1, data_out_from_buf_2);
Buffer_IO Buffer_IO_3(data_out_from_reg_3, dir_6_2, data_out_from_buf_3);
Buffer_IO Buffer_IO_4(data_out_from_reg_4, dir_7_1, data_out_from_buf_4);
Buffer_IO Buffer_IO_5(data_out_from_reg_5, dir_7_2, data_out_from_buf_5);
Buffer_IO Buffer_IO_6(data_out_from_reg_6, dir_8_1, data_out_from_buf_6);
Buffer_IO Buffer_IO_7(data_out_from_reg_7, dir_8_2, data_out_from_buf_7);
Buffer_IO Buffer_IO_8(data_out_from_reg_8, dir_9_1, data_out_from_buf_8);
Buffer_IO Buffer_IO_9(data_out_from_reg_9, dir_9_2, data_out_from_buf_9);
Buffer_IO Buffer_IO_10(data_out_from_reg_10, dir_10_1, data_out_from_buf_10);
Buffer_IO Buffer_IO_11(data_out_from_reg_11, dir_10_2, data_out_from_buf_11);
Buffer_IO Buffer_IO_12(data_out_from_reg_12, dir_11_1, data_out_from_buf_12);
Buffer_IO Buffer_IO_13(data_out_from_reg_13, dir_11_2, data_out_from_buf_13);
Buffer_IO Buffer_IO_14(data_out_from_reg_14, dir_12_1, data_out_from_buf_14);
Buffer_IO Buffer_IO_15(data_out_from_reg_15, dir_12_2, data_out_from_buf_15);

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





	module Buffer_IO
(
	input logic		[7:0]  D,
	input logic		OE,
	output logic	[7:0]  Q
);
assign Q = OE ? D : 8'bZ;
endmodule 



