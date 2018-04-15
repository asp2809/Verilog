`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:22 02/13/2018
// Design Name:   counter2
// Module Name:   F:/xilinx programs/Counter2/tb_counter2.v
// Project Name:  Counter2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter2;

	// Inputs
	reg clk;

	// Outputs
	wire a;
	wire b;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	counter2 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here

	end
      always
		begin
		#5;
			clk=~clk;
		end
endmodule

