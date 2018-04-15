`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:13 02/06/2018
// Design Name:   Mux
// Module Name:   F:/xilinx programs/Multiplexer/tb_mux.v
// Project Name:  Multiplexer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg [3:0] a;
	reg [1:0] s;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	Mux uut (
		.z(z), 
		.a(a), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a[0]=1;
		a[1]=0;
		a[2]=0;
		a[3]=0;
		s[0]=0;
		s[1]=0;
		
		#100;
		a[0]=0;
		a[1]=1;
		a[2]=0;
		a[3]=0;
		s[0]=1;
		s[1]=0;
        
		#100;
		a[0]=0;
		a[1]=0;
		a[2]=1;
		a[3]=0;
		s[0]=0;
		s[1]=1;
		// Add stimulus here

	end
      
endmodule

