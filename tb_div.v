`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:21 03/04/2018
// Design Name:   Division
// Module Name:   B:/Documents/Xilinx/A2/tesdiv.v
// Project Name:  A2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tesdiv;

	// Inputs
	reg clk;
	reg [3:0] did;
	reg [3:0] dir;

	// Outputs
	wire st;
	wire [3:0] q;
	wire [3:0] r;

	// Instantiate the Unit Under Test (UUT)
	Division uut (
		.clk(clk), 
		.st(st), 
		.did(did), 
		.dir(dir), 
		.q(q), 
		.r(r)
	);
	
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		did = 0;
		dir = 0;
		
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
	
		did = 7;
		dir = 2;
		#60;
		$finish;
	end
endmodule

