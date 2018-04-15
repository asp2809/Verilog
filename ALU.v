`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:39 03/19/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(a,b,code,ans);
	input a,b;
	input [3:0] code;
	output [3:0] ans;
	wire a,b;
	wire [3:0] code;
	reg [3:0] ans;
	always @ (a or b or code)
	begin
	case (code)
		1: ans=a+b;
		2: ans=a-b;
		3: ans=a<<b;
		4: ans=a>>b;
		5: ans=(a&&b);
		6: ans=(a||b);
		7: ans=~a;
		default: $display("Error in code"); 
	endcase
	end
endmodule
