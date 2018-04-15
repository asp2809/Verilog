`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:43 02/13/2018 
// Design Name: 
// Module Name:    Counter 
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
module Counter(cout,reset,clk);
	output [3:0] cout;
	input clk, reset;
	wire clk, reset;
	reg [3:0] cout;
	initial cout=0;
	always @ (posedge (clk))
	begin
		if (reset)
			cout=0;
		else
			cout=cout+1;
	end


endmodule
