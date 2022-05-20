`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:18:39 05/20/2022
// Design Name:   VEDICMULTIPLIER4X4
// Module Name:   J:/abhi/VEDICMULTIPLIER4x4/tbmultiplier.v
// Project Name:  VEDICMULTIPLIER4x4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VEDICMULTIPLIER4X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbmultiplier;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	VEDICMULTIPLIER4X4 uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
       	a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
	a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;		
		// Add stimulus here

	end
      
endmodule

