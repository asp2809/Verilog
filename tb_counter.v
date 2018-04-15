`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:44 02/13/2018
// Design Name:   Counter
// Module Name:   F:/xilinx programs/Counter/tb_counter.v
// Project Name:  Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:\

// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [3:0] cout;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.cout(cout), 
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;
		#100;
		// Wait 100 ns for global reset to finish
		#500;
			reset=1;
			
		#600;
			reset=0;
		// Add stimulus here
		
	end
      always
		begin
			#100 clk=~clk;
		end
endmodule

