`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:28:07 03/19/2018
// Design Name:   ALU
// Module Name:   F:/xilinx programs/ALU/tb_ALU.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU;

	// Inputs
	reg a;
	reg b;
	reg [3:0] code;

	// Outputs
	wire [3:0] ans;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.code(code), 
		.ans(ans)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		code = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a=1;
		  b=1;
		  code=1;
		
		#100;
			a=0;
			b=1;
			code=5;
			
		#100;
			a=1;
			b=1;
			code=3;
		
		#100;
			a=1;
			b=0;
			code=7;
		// Add stimulus here

	end
      
endmodule

