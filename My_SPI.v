module My_SPI(CLK, CHIP_SELECT, MOSI, spi_control_reg, miso, ERROR_COUNT_reg_in, READY_new_data_to_miso);

input CLK;
input CHIP_SELECT;
input MOSI;
output miso;
input READY_new_data_to_miso;


reg [15:0] shift_buffer_mosi_reg;  
reg [15:0] parallel_buffer_mosi_reg;
reg [4:0] in_word_counter;
output [15:0] spi_control_reg;


reg [15:0] shift_buffer_miso_reg; 
reg [4:0] out_word_counter;
input [15:0] ERROR_COUNT_reg_in;

reg [15:0] register_to_return;


/////////////////////////----------Приемник---------/////////////////////////
                                                                          ///
/////////////////////////////////////////////////////////////////////////////
                                                                          ///
always @ (posedge CLK)                                                    ///
begin                                                                     ///
	if (!CHIP_SELECT)                                                     ///
	begin                                                                 ///
		shift_buffer_mosi_reg[15:1] <= shift_buffer_mosi_reg[14:0];       ///
		shift_buffer_mosi_reg[0] <= MOSI;                                 ///
	end                                                                   ///
end                                                                       ///
                                                                          ///
always@(negedge CLK)                                                      ///
begin                                                                     ///
	if(!CHIP_SELECT)                                                      ///
	begin                                                                 ///
		in_word_counter=in_word_counter+4'b0001;                          ///
		if (in_word_counter==5'b10000)                                    ///
		begin                                                             ///
			parallel_buffer_mosi_reg=shift_buffer_mosi_reg;               ///
			in_word_counter=5'b00000;                                     ///
		end                                                               /// 
	end                                                                   ///
end                                                                       ///
                                                                          ///
                                                                          ///
assign spi_control_reg = parallel_buffer_mosi_reg;                           ///
/////////////////////////////////////////////////////////////////////////////



/////////////////////////----------Передатчик---------///////////////////////
                                                                          ///
/////////////////////////////////////////////////////////////////////////////
always @ (negedge CLK, posedge READY_new_data_to_miso)                    ///
begin                                                                     ///
	if (READY_new_data_to_miso)                                           ///
	begin                                                                 ///
		shift_buffer_miso_reg[15:0] <= ERROR_COUNT_reg_in[15:0];          ///
	end                                                                   ///
	else if (!CHIP_SELECT)                                                ///
	begin                                                                 ///
		shift_buffer_miso_reg[15:1] <= shift_buffer_miso_reg[14:0];       ///
	end                                                                   ///
end                                                                       ///
assign miso = shift_buffer_miso_reg[15];                                  ///
/////////////////////////////////////////////////////////////////////////////

endmodule 