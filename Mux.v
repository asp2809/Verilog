`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:40 01/23/2018 
// Design Name: 
// Module Name:    Mux 
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
module Mux(z,a,s);
	reg z;
	wire[3:0] a;
	wire[1:0] s;
	output z;
	input[3:0] a;
	input[1:0] s;
	always @(s or a)
	begin
	if(s[0]==0&s[1]==0)
		z=a[0];
	if(s[0]==0&s[1]==1)
		z=a[1];
	if(s[0]==1&s[1]==0)
		z=a[2];
	if(s[0]==1&s[1]==1)
		z=a[3];
	end
endmodule
