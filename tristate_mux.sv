module tristate_mux
(
	input logic	[7:0]  D_normal,
	input logic	OE_normal,
	input logic	DIR_normal,
	
	input logic	[7:0]  D_RAM,
	input logic	OE_RAM,
	input logic	DIR_RAM,
	
	input logic	sel_mode,
	
	output tri	[7:0]  Q,
	output logic	OE,
	output logic	DIR
);



assign Q = sel_mode ? (DIR_RAM ? (D_RAM) : (8'bz) ) : (DIR_normal ? (D_normal) : (8'bz) );

assign OE 	= sel_mode ? (OE_RAM) : (OE_normal);
assign DIR 	= sel_mode ? (DIR_RAM) : (DIR_normal);

endmodule
