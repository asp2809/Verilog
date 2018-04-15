`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:06 03/04/2018 
// Design Name: 
// Module Name:    Division 
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
module Division(clk, st, did, dir,q,r
    );
	 input clk;
	 input [3:0] did, dir;
	 
	 output[3:0] q,r;
	 output st;
	 
	 reg [3:0]q;
	 reg [7:0] did_copy, dir_copy, diff;
	 
	 wire [7:0] r = did_copy[7:0];
	 reg [7:0] count;
	 wire st = !count;
	 initial count = 0;
	 
	 
	 always @(posedge clk)
		if(st)
			begin
				count = 16;
				q= 0;
				did_copy = {4'd0,did};
				dir_copy = {dir,4'd0};
			end
		else
			begin
				diff = did_copy - dir_copy;
				q = q<<1;
				
			if(!diff[7])
				begin
					did_copy = diff;
					q[0] = 1'd1;
				end
				
				dir_copy = dir_copy >> 1;
				count = count -1;
			end
endmodule
