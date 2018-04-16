`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:32 04/16/2018
// Design Name:   updown
// Module Name:   F:/xilinx programs/Updown/tb_updown.v
// Project Name:  Updown
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: updown
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_updown;

	// Inputs
	reg up;
	reg down;
	reg clk;
	reg [3:0] inbit;

	// Outputs
	wire [3:0] outbit;

	// Instantiate the Unit Under Test (UUT)
	updown uut (
		.up(up), 
		.down(down), 
		.clk(clk), 
		.inbit(inbit), 
		.outbit(outbit)
	);

	initial begin
		// Initialize Inputs
		up = 0;
		down = 0;
		clk = 0;
		inbit = 0;

		// Wait 100 ns for global reset to finish
		#100;
      inbit=5;
		up=1;
		down=0;
		
		#100;
		inbit=8;
		up=0;
		down=1;
		// Add stimulus here

	end
   always
	begin
		#100;
		clk=~clk;
	end
endmodule

