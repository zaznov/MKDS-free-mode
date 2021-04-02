
 module regs_dir_out
(
	input logic	sel_0,
	input logic	sel_1,
	input logic	sel_2,
	input logic	sel_3,
	input logic	CLR,
	input logic	[7:0]  data_in,
	
	
	
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
	output logic	dir_12_2,
	
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
	output logic	OE_12_2
	


);

logic	[7:0]  data_out_from_reg_0;
logic	[7:0]  data_out_from_reg_1;
logic	[7:0]  data_out_from_reg_2;
logic	[7:0]  data_out_from_reg_3;


Reg_out_dir Reg_out_0(data_in, sel_0, CLR, data_out_from_reg_0);
Reg_out_dir Reg_out_1(data_in, sel_1, CLR, data_out_from_reg_1);
Reg_out_dir Reg_out_2(data_in, sel_2, CLR, data_out_from_reg_2);
Reg_out_dir Reg_out_3(data_in, sel_3, CLR, data_out_from_reg_3);





assign dir_5_1 = data_out_from_reg_0[0];
assign OE_5_1 = data_out_from_reg_0[1];
assign dir_5_2 = data_out_from_reg_0[2];
assign OE_5_2 = data_out_from_reg_0[3];
assign dir_6_1 = data_out_from_reg_0[4];
assign OE_6_1 = data_out_from_reg_0[5];
assign dir_6_2 = data_out_from_reg_0[6];
assign OE_6_2 = data_out_from_reg_0[7];

assign dir_7_1 = data_out_from_reg_1[0];
assign OE_7_1 = data_out_from_reg_1[1];
assign dir_7_2 = data_out_from_reg_1[2];
assign OE_7_2 = data_out_from_reg_1[3];
assign dir_8_1 = data_out_from_reg_1[4];
assign OE_8_1 = data_out_from_reg_1[5];
assign dir_8_2 = data_out_from_reg_1[6];
assign OE_8_2 = data_out_from_reg_1[7];



assign dir_9_1 = data_out_from_reg_2[0];
assign OE_9_1 = data_out_from_reg_2[1];
assign dir_9_2 = data_out_from_reg_2[2];
assign OE_9_2 = data_out_from_reg_2[3];
assign dir_10_1 = data_out_from_reg_2[4];
assign OE_10_1 = data_out_from_reg_2[5];
assign dir_10_2 = data_out_from_reg_2[6];
assign OE_10_2 = data_out_from_reg_2[7];

assign dir_11_1 = data_out_from_reg_3[0];
assign OE_11_1 = data_out_from_reg_3[1];
assign dir_11_2 = data_out_from_reg_3[2];
assign OE_11_2 = data_out_from_reg_3[3];
assign dir_12_1 = data_out_from_reg_3[4];
assign OE_12_1 = data_out_from_reg_3[5];
assign dir_12_2 = data_out_from_reg_3[6];
assign OE_12_2 = data_out_from_reg_3[7];

endmodule 
 
 
 
 
 
 module Reg_out_dir
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
