module out_set_reg
# (		parameter DEPTH = 1
	)
(
					input logic 	write_data_strob,
					input logic		[3:0]  addr,
					input logic		[7:0]  data_in,
					output logic	[7:0]  data_out [DEPTH - 1:0],
					input logic		WE,
					input logic		CS,
					input logic		CLEAR
);


logic 	[7:0] mem [DEPTH - 1:0];

always_ff @ (posedge write_data_strob, posedge CLEAR) 
	begin

		if (write_data_strob)
			if (!CS & !WE)
				mem[addr] <= data_in;


		if(CLEAR)
		begin
			mem[0] <= 0;
			//mem[1] <= 0;
			//mem[2] <= 0;
			//mem[3] <= 0;
			//mem[4] <= 0;
		end
	end













assign data_out[0] = (!CS) ? mem[0] : 8'hZ;
//assign data_out[1] = (!CS) ? mem[1] : 8'hZ;
//assign data_out[2] = (!CS) ? mem[2] : 8'hZ;
//assign data_out[3] = (!CS) ? mem[3] : 8'hZ;
//assign data_out[4] = (!CS) ? mem[4] : 8'hZ;
/*assign data_out[5] = (!CS) ? mem[5] : 8'hZ;
assign data_out[6] = (!CS) ? mem[6] : 8'hZ;
assign data_out[7] = (!CS) ? mem[7] : 8'hZ;

assign data_out[8] =(!CS) ? mem[8] : 8'hZ;
assign data_out[9] = (!CS) ? mem[9] : 8'hZ;
assign data_out[10] =(!CS) ? mem[10] : 8'hZ;
assign data_out[11] = (!CS) ? mem[11] : 8'hZ;
assign data_out[12] = (!CS) ? mem[12] : 8'hZ;
assign data_out[13] = (!CS) ? mem[13] : 8'hZ;
assign data_out[14] = (!CS) ? mem[14] : 8'hZ;
assign data_out[15] = (!CS) ? mem[15] : 8'hZ;*/

endmodule 