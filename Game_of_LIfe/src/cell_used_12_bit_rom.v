module cell_used_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}==10'b0000000000)) color_data = 12'b010001010101;
		if(({row_reg, col_reg}==10'b0000000001)) color_data = 12'b001101000100;
		if(({row_reg, col_reg}==10'b0000000010)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b0000000011)) color_data = 12'b001100110010;
		if(({row_reg, col_reg}==10'b0000000100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=10'b0000000101) && ({row_reg, col_reg}<10'b0000000111)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}>=10'b0000000111) && ({row_reg, col_reg}<10'b0000001010)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=10'b0000001010) && ({row_reg, col_reg}<10'b0000001100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0000001100)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}==10'b0000001101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b0000001110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0000001111)) color_data = 12'b010000110100;
		if(({row_reg, col_reg}==10'b0000010000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0000010001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0000010010)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0000010011) && ({row_reg, col_reg}<10'b0000010110)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}>=10'b0000010110) && ({row_reg, col_reg}<10'b0000100000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0000100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0000100001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0000100010)) color_data = 12'b001100110010;
		if(({row_reg, col_reg}==10'b0000100011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0000100100)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0000100101)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0000100110)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}==10'b0000100111)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0000101000)) color_data = 12'b001100010000;
		if(({row_reg, col_reg}==10'b0000101001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0000101010)) color_data = 12'b001000000000;
		if(({row_reg, col_reg}==10'b0000101011)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0000101100)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}==10'b0000101101)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0000101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0000101111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0000110000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0000110001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0000110010) && ({row_reg, col_reg}<10'b0000110100)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}>=10'b0000110100) && ({row_reg, col_reg}<10'b0001000000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0001000000) && ({row_reg, col_reg}<10'b0001000100)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0001000100)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0001000101)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=10'b0001000110) && ({row_reg, col_reg}<10'b0001001000)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}>=10'b0001001000) && ({row_reg, col_reg}<10'b0001001010)) color_data = 12'b011001000010;
		if(({row_reg, col_reg}==10'b0001001010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0001001011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0001001100)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0001001101)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=10'b0001001110) && ({row_reg, col_reg}<10'b0001010000)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}>=10'b0001010000) && ({row_reg, col_reg}<10'b0001010010)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0001010010) && ({row_reg, col_reg}<10'b0001010100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0001010100) && ({row_reg, col_reg}<10'b0001010110)) color_data = 12'b010001000011;

		if(({row_reg, col_reg}>=10'b0001010110) && ({row_reg, col_reg}<10'b0001100000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0001100000)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}>=10'b0001100001) && ({row_reg, col_reg}<10'b0001100011)) color_data = 12'b011001010101;
		if(({row_reg, col_reg}==10'b0001100011)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0001100100)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0001100101)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0001100110)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0001100111)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0001101000)) color_data = 12'b101010000110;
		if(({row_reg, col_reg}==10'b0001101001)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==10'b0001101010)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==10'b0001101011)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0001101100)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0001101101)) color_data = 12'b001100010001;
		if(({row_reg, col_reg}>=10'b0001101110) && ({row_reg, col_reg}<10'b0001110000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0001110000) && ({row_reg, col_reg}<10'b0001110010)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0001110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0001110011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0001110100)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0001110101)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0001110110)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0001110111)) color_data = 12'b001100110011;

		if(({row_reg, col_reg}==10'b0001111000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0010000000) && ({row_reg, col_reg}<10'b0010000010)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0010000010)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0010000011)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0010000100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0010000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0010000110)) color_data = 12'b101110010111;
		if(({row_reg, col_reg}>=10'b0010000111) && ({row_reg, col_reg}<10'b0010001001)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==10'b0010001001)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0010001010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==10'b0010001011)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0010001100)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0010001101)) color_data = 12'b001000000000;
		if(({row_reg, col_reg}==10'b0010001110)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0010001111)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0010010000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0010010001) && ({row_reg, col_reg}<10'b0010010011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0010010011) && ({row_reg, col_reg}<10'b0010010110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0010010110)) color_data = 12'b010000110011;

		if(({row_reg, col_reg}>=10'b0010010111) && ({row_reg, col_reg}<10'b0010100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0010100000)) color_data = 12'b011001010101;
		if(({row_reg, col_reg}>=10'b0010100001) && ({row_reg, col_reg}<10'b0010100011)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}>=10'b0010100011) && ({row_reg, col_reg}<10'b0010100101)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0010100101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0010100110)) color_data = 12'b101110010111;
		if(({row_reg, col_reg}>=10'b0010100111) && ({row_reg, col_reg}<10'b0010101001)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}>=10'b0010101001) && ({row_reg, col_reg}<10'b0010101011)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0010101011)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0010101100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0010101101)) color_data = 12'b001000000000;
		if(({row_reg, col_reg}==10'b0010101110)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0010101111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=10'b0010110000) && ({row_reg, col_reg}<10'b0010110010)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0010110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0010110011) && ({row_reg, col_reg}<10'b0010110110)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0010110110)) color_data = 12'b010000110011;

		if(({row_reg, col_reg}>=10'b0010110111) && ({row_reg, col_reg}<10'b0011000000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=10'b0011000000) && ({row_reg, col_reg}<10'b0011000010)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0011000010)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0011000011)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0011000100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0011000101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0011000110)) color_data = 12'b101110010111;
		if(({row_reg, col_reg}>=10'b0011000111) && ({row_reg, col_reg}<10'b0011001010)) color_data = 12'b110010010111;
		if(({row_reg, col_reg}==10'b0011001010)) color_data = 12'b101001110110;
		if(({row_reg, col_reg}==10'b0011001011)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0011001100)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0011001101)) color_data = 12'b001100010000;
		if(({row_reg, col_reg}==10'b0011001110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=10'b0011001111) && ({row_reg, col_reg}<10'b0011010001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0011010001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0011010010) && ({row_reg, col_reg}<10'b0011010100)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}>=10'b0011010100) && ({row_reg, col_reg}<10'b0011010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0011010110) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b010001000011;

		if(({row_reg, col_reg}==10'b0011011000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0011100000) && ({row_reg, col_reg}<10'b0011100100)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0011100100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0011100101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0011100110)) color_data = 12'b100101110101;
		if(({row_reg, col_reg}==10'b0011100111)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0011101000)) color_data = 12'b100101100100;
		if(({row_reg, col_reg}==10'b0011101001)) color_data = 12'b101001110101;
		if(({row_reg, col_reg}==10'b0011101010)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0011101011)) color_data = 12'b011101000011;
		if(({row_reg, col_reg}==10'b0011101100)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0011101101)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0011101110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b0011101111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0011110000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0011110001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0011110010) && ({row_reg, col_reg}<10'b0011110100)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}>=10'b0011110100) && ({row_reg, col_reg}<10'b0011110111)) color_data = 12'b010001000011;

		if(({row_reg, col_reg}>=10'b0011110111) && ({row_reg, col_reg}<10'b0100000001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0100000001)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}>=10'b0100000010) && ({row_reg, col_reg}<10'b0100000100)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0100000100)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==10'b0100000101)) color_data = 12'b011101100100;
		if(({row_reg, col_reg}==10'b0100000110)) color_data = 12'b011101000011;
		if(({row_reg, col_reg}==10'b0100000111)) color_data = 12'b011101000010;
		if(({row_reg, col_reg}==10'b0100001000)) color_data = 12'b100101010100;
		if(({row_reg, col_reg}==10'b0100001001)) color_data = 12'b101001100101;
		if(({row_reg, col_reg}==10'b0100001010)) color_data = 12'b100001000011;
		if(({row_reg, col_reg}==10'b0100001011)) color_data = 12'b100101100100;
		if(({row_reg, col_reg}==10'b0100001100)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0100001101)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0100001110)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=10'b0100001111) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0100010110) && ({row_reg, col_reg}<10'b0100011000)) color_data = 12'b010001000011;

		if(({row_reg, col_reg}==10'b0100011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0100100000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0100100001) && ({row_reg, col_reg}<10'b0100100011)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0100100011)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==10'b0100100100)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==10'b0100100101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0100100110)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0100100111)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0100101000)) color_data = 12'b101101110110;
		if(({row_reg, col_reg}==10'b0100101001)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0100101010)) color_data = 12'b100001000011;
		if(({row_reg, col_reg}==10'b0100101011)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0100101100)) color_data = 12'b101110000111;
		if(({row_reg, col_reg}==10'b0100101101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=10'b0100101110) && ({row_reg, col_reg}<10'b0100110000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0100110000)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0100110001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110101)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0100110101)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0100110110)) color_data = 12'b010001000011;

		if(({row_reg, col_reg}>=10'b0100110111) && ({row_reg, col_reg}<10'b0101000001)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b0101000001) && ({row_reg, col_reg}<10'b0101000011)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0101000011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0101000100)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b0101000101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0101000110)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==10'b0101000111)) color_data = 12'b110110101000;
		if(({row_reg, col_reg}==10'b0101001000)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0101001001)) color_data = 12'b110110010111;
		if(({row_reg, col_reg}==10'b0101001010)) color_data = 12'b100101100100;
		if(({row_reg, col_reg}==10'b0101001011)) color_data = 12'b011101000010;
		if(({row_reg, col_reg}==10'b0101001100)) color_data = 12'b101010000110;
		if(({row_reg, col_reg}==10'b0101001101)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0101001110)) color_data = 12'b001100010000;
		if(({row_reg, col_reg}==10'b0101001111)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101010000)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}>=10'b0101010001) && ({row_reg, col_reg}<10'b0101010011)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101010011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0101010100) && ({row_reg, col_reg}<10'b0101010110)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101010110)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}>=10'b0101010111) && ({row_reg, col_reg}<10'b0101100000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101100000)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0101100001)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0101100010)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101100011)) color_data = 12'b010100110011;
		if(({row_reg, col_reg}==10'b0101100100)) color_data = 12'b100110000110;
		if(({row_reg, col_reg}==10'b0101100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0101100110)) color_data = 12'b101010000110;
		if(({row_reg, col_reg}==10'b0101100111)) color_data = 12'b101110000110;
		if(({row_reg, col_reg}==10'b0101101000)) color_data = 12'b101101110101;
		if(({row_reg, col_reg}==10'b0101101001)) color_data = 12'b110010000110;
		if(({row_reg, col_reg}==10'b0101101010)) color_data = 12'b100101010100;
		if(({row_reg, col_reg}==10'b0101101011)) color_data = 12'b011000110010;
		if(({row_reg, col_reg}==10'b0101101100)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0101101101)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0101101110)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0101101111)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0101110000)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}>=10'b0101110001) && ({row_reg, col_reg}<10'b0101110011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0101110011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0101110100) && ({row_reg, col_reg}<10'b0101110110)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0101110110)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0101110111)) color_data = 12'b001100110011;

		if(({row_reg, col_reg}==10'b0101111000)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0110000000)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0110000001)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0110000010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0110000011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0110000100)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0110000101)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==10'b0110000110)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==10'b0110000111)) color_data = 12'b100001010100;
		if(({row_reg, col_reg}==10'b0110001000)) color_data = 12'b100101100100;
		if(({row_reg, col_reg}==10'b0110001001)) color_data = 12'b101001110101;
		if(({row_reg, col_reg}==10'b0110001010)) color_data = 12'b100101100100;
		if(({row_reg, col_reg}==10'b0110001011)) color_data = 12'b011101000010;
		if(({row_reg, col_reg}==10'b0110001100)) color_data = 12'b011000110010;
		if(({row_reg, col_reg}==10'b0110001101)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}>=10'b0110001110) && ({row_reg, col_reg}<10'b0110010000)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0110010000)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0110010001)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0110010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0110010011) && ({row_reg, col_reg}<10'b0110010110)) color_data = 12'b010000110011;

		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0110100000)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0110100001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0110100010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0110100011)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0110100100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0110100101)) color_data = 12'b010101000010;
		if(({row_reg, col_reg}==10'b0110100110)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0110100111)) color_data = 12'b100001100100;
		if(({row_reg, col_reg}==10'b0110101000)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0110101001)) color_data = 12'b101001110101;
		if(({row_reg, col_reg}==10'b0110101010)) color_data = 12'b100101100101;
		if(({row_reg, col_reg}==10'b0110101011)) color_data = 12'b011101000011;
		if(({row_reg, col_reg}==10'b0110101100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0110101101)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0110101110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0110101111)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0110110000)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==10'b0110110001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0110110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0110110011) && ({row_reg, col_reg}<10'b0110110110)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b0110110110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0110110111)) color_data = 12'b010000110011;

		if(({row_reg, col_reg}==10'b0110111000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0111000000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b0111000001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b0111000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=10'b0111000011) && ({row_reg, col_reg}<10'b0111000101)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0111000101) && ({row_reg, col_reg}<10'b0111000111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0111000111)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0111001000)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=10'b0111001001) && ({row_reg, col_reg}<10'b0111001011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0111001011)) color_data = 12'b100001010101;
		if(({row_reg, col_reg}==10'b0111001100)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0111001101)) color_data = 12'b000100000000;
		if(({row_reg, col_reg}==10'b0111001110)) color_data = 12'b101010011001;
		if(({row_reg, col_reg}==10'b0111001111)) color_data = 12'b011101100110;
		if(({row_reg, col_reg}==10'b0111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111010001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b0111010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0111010011)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0111010100) && ({row_reg, col_reg}<10'b0111010110)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}>=10'b0111010110) && ({row_reg, col_reg}<10'b0111100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b0111100000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0111100001)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111100100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b0111100100)) color_data = 12'b010101010100;
		if(({row_reg, col_reg}==10'b0111100101)) color_data = 12'b011001010101;
		if(({row_reg, col_reg}==10'b0111100110)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b0111100111)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0111101000)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}==10'b0111101001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==10'b0111101010)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0111101011)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0111101100)) color_data = 12'b001000000000;
		if(({row_reg, col_reg}==10'b0111101101)) color_data = 12'b011101100110;
		if(({row_reg, col_reg}==10'b0111101110)) color_data = 12'b110010111011;
		if(({row_reg, col_reg}==10'b0111101111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b0111110000) && ({row_reg, col_reg}<10'b0111110011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=10'b0111110011) && ({row_reg, col_reg}<10'b0111110101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b0111110101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=10'b0111110110) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}==10'b0111111000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1000000000)) color_data = 12'b010001000011;
		if(({row_reg, col_reg}==10'b1000000001)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000000100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1000000100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1000000101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1000000110)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}==10'b1000000111)) color_data = 12'b010101000100;
		if(({row_reg, col_reg}==10'b1000001000)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}>=10'b1000001001) && ({row_reg, col_reg}<10'b1000001011)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}==10'b1000001011)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b1000001100)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==10'b1000001101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==10'b1000001110)) color_data = 12'b110011001011;
		if(({row_reg, col_reg}==10'b1000001111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1000010000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1000010001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1000010010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1000010011)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}>=10'b1000010100) && ({row_reg, col_reg}<10'b1000010110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1000010110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1000010111)) color_data = 12'b001100110100;

		if(({row_reg, col_reg}>=10'b1000011000) && ({row_reg, col_reg}<10'b1000100011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1000100011)) color_data = 12'b010001000101;
		if(({row_reg, col_reg}==10'b1000100100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1000100101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1000100110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1000100111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1000101000)) color_data = 12'b101010011001;
		if(({row_reg, col_reg}==10'b1000101001)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==10'b1000101010)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}==10'b1000101011)) color_data = 12'b100110001000;
		if(({row_reg, col_reg}==10'b1000101100)) color_data = 12'b111011011101;
		if(({row_reg, col_reg}==10'b1000101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b1000101110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==10'b1000101111)) color_data = 12'b000000010001;
		if(({row_reg, col_reg}==10'b1000110000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1000110001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1000110010)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1000110011)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1000110100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=10'b1000110101) && ({row_reg, col_reg}<10'b1000110111)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1000110111)) color_data = 12'b000100010010;

		if(({row_reg, col_reg}==10'b1000111000)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1001000000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=10'b1001000001) && ({row_reg, col_reg}<10'b1001000011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1001000011)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}>=10'b1001000100) && ({row_reg, col_reg}<10'b1001000110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1001000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1001000111)) color_data = 12'b010000110011;
		if(({row_reg, col_reg}>=10'b1001001000) && ({row_reg, col_reg}<10'b1001001010)) color_data = 12'b110111001100;
		if(({row_reg, col_reg}==10'b1001001010)) color_data = 12'b101010011001;
		if(({row_reg, col_reg}==10'b1001001011)) color_data = 12'b111111111110;
		if(({row_reg, col_reg}==10'b1001001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b1001001101)) color_data = 12'b111011011101;
		if(({row_reg, col_reg}==10'b1001001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1001001111)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1001010000)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1001010001) && ({row_reg, col_reg}<10'b1001010101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1001010101)) color_data = 12'b001000100010;

		if(({row_reg, col_reg}>=10'b1001010110) && ({row_reg, col_reg}<10'b1001100000)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1001100000)) color_data = 12'b010001010100;
		if(({row_reg, col_reg}>=10'b1001100001) && ({row_reg, col_reg}<10'b1001100011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1001100011)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1001100100) && ({row_reg, col_reg}<10'b1001100111)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1001100111)) color_data = 12'b010000110100;
		if(({row_reg, col_reg}==10'b1001101000)) color_data = 12'b111011011101;
		if(({row_reg, col_reg}==10'b1001101001)) color_data = 12'b101010011001;
		if(({row_reg, col_reg}==10'b1001101010)) color_data = 12'b011001100101;
		if(({row_reg, col_reg}==10'b1001101011)) color_data = 12'b111011011101;
		if(({row_reg, col_reg}==10'b1001101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b1001101101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==10'b1001101110)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1001101111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1001110000)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1001110001)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1001110010)) color_data = 12'b001000110011;

		if(({row_reg, col_reg}>=10'b1001110011) && ({row_reg, col_reg}<10'b1010000000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010000000)) color_data = 12'b001101000100;
		if(({row_reg, col_reg}==10'b1010000001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1010000010)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1010000011)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1010000100)) color_data = 12'b001101000101;
		if(({row_reg, col_reg}==10'b1010000101)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1010000110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010000111)) color_data = 12'b010000110100;
		if(({row_reg, col_reg}==10'b1010001000)) color_data = 12'b111111101110;
		if(({row_reg, col_reg}==10'b1010001001)) color_data = 12'b100001110111;
		if(({row_reg, col_reg}==10'b1010001010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b1010001011)) color_data = 12'b101010101001;
		if(({row_reg, col_reg}==10'b1010001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==10'b1010001101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==10'b1010001110)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1010001111)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1010010000)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1010010001) && ({row_reg, col_reg}<10'b1010010101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010010101)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1010010110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010010111)) color_data = 12'b001000110011;

		if(({row_reg, col_reg}==10'b1010011000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1010100001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=10'b1010100010) && ({row_reg, col_reg}<10'b1010100100)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1010100100)) color_data = 12'b001000110100;
		if(({row_reg, col_reg}==10'b1010100101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010100110)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1010100111)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1010101000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==10'b1010101001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==10'b1010101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=10'b1010101011) && ({row_reg, col_reg}<10'b1010101101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==10'b1010101101)) color_data = 12'b010001000101;
		if(({row_reg, col_reg}==10'b1010101110)) color_data = 12'b000100100011;
		if(({row_reg, col_reg}==10'b1010101111)) color_data = 12'b001000110100;
		if(({row_reg, col_reg}==10'b1010110000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1010110001)) color_data = 12'b000100100011;
		if(({row_reg, col_reg}>=10'b1010110010) && ({row_reg, col_reg}<10'b1010110101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}>=10'b1010110101) && ({row_reg, col_reg}<10'b1010110111)) color_data = 12'b001000110011;

		if(({row_reg, col_reg}>=10'b1010110111) && ({row_reg, col_reg}<10'b1011000000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011000000)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1011000001)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1011000010)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1011000011) && ({row_reg, col_reg}<10'b1011000111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011000111)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1011001000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==10'b1011001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1011001010)) color_data = 12'b001100100010;
		if(({row_reg, col_reg}==10'b1011001011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==10'b1011001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==10'b1011001101)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011001110)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1011001111)) color_data = 12'b001000110100;
		if(({row_reg, col_reg}>=10'b1011010000) && ({row_reg, col_reg}<10'b1011010011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011010011)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1011010100) && ({row_reg, col_reg}<10'b1011010110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011010110)) color_data = 12'b001000110011;

		if(({row_reg, col_reg}>=10'b1011010111) && ({row_reg, col_reg}<10'b1011100000)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011100000)) color_data = 12'b001101000100;
		if(({row_reg, col_reg}==10'b1011100001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1011100010)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1011100011) && ({row_reg, col_reg}<10'b1011100110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011100110)) color_data = 12'b000100010010;
		if(({row_reg, col_reg}==10'b1011100111)) color_data = 12'b010001000101;
		if(({row_reg, col_reg}==10'b1011101000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==10'b1011101001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1011101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1011101011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==10'b1011101100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==10'b1011101101)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1011101110)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1011101111)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011110000)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1011110001) && ({row_reg, col_reg}<10'b1011110011)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011110011)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1011110100) && ({row_reg, col_reg}<10'b1011110110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1011110110)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}==10'b1011110111)) color_data = 12'b001000100010;

		if(({row_reg, col_reg}==10'b1011111000)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1100000000)) color_data = 12'b001101000100;
		if(({row_reg, col_reg}==10'b1100000001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1100000010)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1100000011) && ({row_reg, col_reg}<10'b1100000110)) color_data = 12'b001000100011;
		if(({row_reg, col_reg}==10'b1100000110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==10'b1100000111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==10'b1100001000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==10'b1100001001)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==10'b1100001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==10'b1100001011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==10'b1100001100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==10'b1100001101)) color_data = 12'b000100100010;
		if(({row_reg, col_reg}==10'b1100001110)) color_data = 12'b001100110100;
		if(({row_reg, col_reg}==10'b1100001111)) color_data = 12'b001000110011;
		if(({row_reg, col_reg}>=10'b1100010000) && ({row_reg, col_reg}<10'b1100010111)) color_data = 12'b001000100011;

		if(({row_reg, col_reg}>=10'b1100010111) && ({row_reg, col_reg}<=10'b1100011000)) color_data = 12'b001000100010;
	end
endmodule