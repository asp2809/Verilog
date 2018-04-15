`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:24 01/23/2018
// Design Name:   Decoder
// Module Name:   F:/xilinx programs/Decoder/Decodert.v
// Project Name:  Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decodert;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.x(x), 
		.y(y), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        x=0;
		  y=1;
		  
		#100;
			x=1;
			y=0;
		
		#100;
			x=1;
			y=1;
		// Add stimulus here

	end
      
endmodule

