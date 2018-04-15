`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:26 01/23/2018 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(x,y,a,b,c,d);
	input x,y;
	output a,b,c,d;
	assign a=(!x)&(!y);
	assign b=(!x)&y;
	assign c=x&y;
	assign d=x&(!y);
endmodule
