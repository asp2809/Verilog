`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:37 04/16/2018 
// Design Name: 
// Module Name:    BidirectionalShift 
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
module BidirectionalShift(left, right, clear, inbit, outbit);
	input left, right, clear;
	input[3:0] inbit;
	output[3:0] outbit;
	wire left, right, clear;
	wire[3:0] inbit;
	reg[3:0] outbit;
	always @ (clear or left or right)
	begin
	if(clear)
		outbit=0;
	else if(left)
		outbit=inbit<<1;
	else if(right)
		outbit=inbit>>1;
	end
endmodule
