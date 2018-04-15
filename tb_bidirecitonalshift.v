`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:54:53 04/16/2018
// Design Name:   BidirectionalShift
// Module Name:   F:/xilinx programs/BidirectionalShift/tb_bidirecitonalshift.v
// Project Name:  BidirectionalShift
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BidirectionalShift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bidirecitonalshift;

	// Inputs
	reg left;
	reg right;
	reg clear;
	reg [3:0] inbit;

	// Outputs
	wire [3:0] outbit;

	// Instantiate the Unit Under Test (UUT)
	BidirectionalShift uut (
		.left(left), 
		.right(right), 
		.clear(clear), 
		.inbit(inbit), 
		.outbit(outbit)
	);

	initial begin
		// Initialize Inputs
		left = 0;
		right = 0;
		clear = 0;
		inbit = 0;

		// Wait 100 ns for global reset to finish
		#100;
        inbit=5;
		  left=1;
		  right=0;
		#100;
			clear=1;
		#100;
			clear=0;
			inbit=10;
			right=1;
			left=0;
			
		// Add stimulus here

	end
      
endmodule

