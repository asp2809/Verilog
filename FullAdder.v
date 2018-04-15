`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:51 01/23/2018 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(a,b,cin,sum,carry);
	input a,b,cin;
	output sum,carry;
	assign sum=a^b^cin;
	assign carry=(a&b)|(b&cin)|(cin&a);
	

endmodule
