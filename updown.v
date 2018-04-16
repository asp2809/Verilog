`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:14 04/16/2018 
// Design Name: 
// Module Name:    updown 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module updown(up, down, clk, inbit, outbit);
	input up, down, clk;
	input[3:0] inbit;
	output[3:0] outbit;
	wire[3:0] inbit;
	reg[3:0] outbit;
	always @ (posedge (clk))
	begin
	if(up == 1)
		outbit=inbit+1;
	else if(down == 1)
		outbit=inbit-1;
	end
endmodule
