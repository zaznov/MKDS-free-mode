module SPI_unit
(
input logic [15:0]data_in_SPI,
//input logic LOAD,
input logic CLK,
input logic MOSI,
input logic CS,
input logic all_clear,
input logic SYS_CLK,


output logic strob_LOAD,
output logic [15:0] data_from_mosi,
output logic MISO
);

logic [15:0] shift_buffer_out;
logic d_ff_out;
logic strob_from_CS;
//logic strob_LOAD;


assign strob_from_CS = ~CS;


d_ff d_ff
(
CLK,
MOSI,
CS,
d_ff_out
);

rg_shift rg_shift
(
CLK,
d_ff_out,
CS,
shift_buffer_out[15:0]
);

rg_parallel rg_parallel
(
CS,
shift_buffer_out[15:0],
all_clear,
data_from_mosi [15:0]
);

reg_out reg_out
(
CLK,
data_in_SPI[15:0],
strob_LOAD,
CS,
MISO
);

delay_3 delay_3
(
SYS_CLK,
strob_from_CS,
all_clear,
strob_LOAD
);




endmodule 



 module reg_out
(
	input logic CLK,
	input logic [15:0] D,
	input logic LOAD,
	input logic CS,
	output tri MISO
);

logic [15:0] Q;

always @ (posedge LOAD, negedge CLK)
begin
	if(LOAD)
		Q[15:0] <= D[15:0];
	else if(!CS)
		Q[15:1] <= Q[14:0];
end

assign MISO = (!CS) ? Q[15] : 1'bZ;

endmodule 


 module d_ff
(
	input logic CLK,
	input logic D,
	input logic CS,
	output logic Q
);


always @ (posedge CLK)
begin
	if(!CS)
		begin
			Q <= D;
		end
end
endmodule 



 module rg_shift
(
	input logic CLK,
	input logic D,
	input logic CS,
	output logic [15:0] shift_buffer_out
);


always @ (negedge CLK)
begin
	if(!CS)
		begin
		shift_buffer_out[15:1] <= shift_buffer_out[14:0];
		shift_buffer_out[0] 	<= D;
		end
end
endmodule 


 module rg_parallel
(
	input logic CS,
	input logic [15:0] parallel_buffer_in,
	input logic all_clear,
	output logic [15:0] parallel_buffer_out
);


always @ (posedge CS, posedge all_clear)
begin
	if(all_clear) 
		parallel_buffer_out = 16'd0;
	else
		parallel_buffer_out <= parallel_buffer_in;
end
endmodule 




