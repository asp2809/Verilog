`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:42 02/13/2018 
// Design Name: 
// Module Name:    counter2 
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
module counter2(a,b,c,clk);
	input clk;
	output a,b,c;
	wire clk;
	reg a,b,c;
	initial
	begin
		a=0;
		b=0;
		c=0;
	end
	always @ (posedge (clk))
	begin
		if(b && c)
			a<=~a;
		if((!a && !b && !c) || (a && c) || (b && c))
			b<=~b;
		if((a && b && c) || (!a && b && !c))
			c<=~c;
	end
endmodule
