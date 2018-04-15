`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:59:18 03/19/2018
// Design Name:   BoothMultiplier
// Module Name:   F:/xilinx programs/BoothMultiplier/tb_booth.v
// Project Name:  BoothMultiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BoothMultiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;
	reg clk, start;
	reg [7:0] a, b;
	wire [15:0] ab;
	wire busy;
	BoothMultiplier multiplier1(ab, a, b, clk, start);
	initial begin
		clk = 0;
		$display("first example: a = 3 b = 17");
		a = 2; b = 5; start = 1; #50 start = 0;
		#80;
		$finish;
	end
	always #5 clk = !clk;

endmodule

