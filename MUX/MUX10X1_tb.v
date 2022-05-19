`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:20:33 04/06/2022
// Design Name:   MUX10X1
// Module Name:   D:/ABHI/MUX/MUX10X1_tb.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX10X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX10X1_tb;

	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg I3;
	reg I4;
	reg I5;
	reg I6;
	reg I7;
	reg I8;
	reg I9;
	reg [2:0] S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	MUX10X1 uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7), 
		.I8(I8), 
		.I9(I9), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		I4 = 0;
		I5 = 0;
		I6 = 0;
		I7 = 0;
		I8 = 0;
		I9 = 0;
		S = 000;
      #100;
		
		
		I0 = 0;
		I1 = 1;
		I2 = 0;
		I3 = 0;
		I4 = 0;
		I5 = 0;
		I6 = 0;
		I7 = 0;
		I8 = 0;
		I9 = 0;
		S = 001;
      #100;
		
		
		I0 = 0;
		I1 = 0;
		I2 = 1;
		I3 = 0;
		I4 = 0;
		I5 = 0;
		I6 = 0;
		I7 = 0;
		I8 = 0;
		I9 = 0;
		S = 010;
      #100;
		
		
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 1;
		I4 = 1;
		I5 = 1;
		I6 = 1;
		I7 = 1;
		I8 = 1;
		I9 = 1;
		S = 011;
      #100;
		
		
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		I4 = 1;
		I5 = 0;
		I6 = 1;
		I7 = 0;
		I8 = 1;
		I9 = 0;
		S = 100;
      #100;
		
		
		I0 = 1;
		I1 = 1;
		I2 = 0;
		I3 = 0;
		I4 = 0;
		I5 = 1;
		I6 = 0;
		I7 = 0;
		I8 = 1;
		I9 = 0;
		S = 101;
      #100;
		
		
		I0 = 0;
		I1 = 1;
		I2 = 1;
		I3 = 0;
		I4 = 0;
		I5 = 0;
		I6 = 1;
		I7 = 0;
		I8 = 0;
		I9 = 0;
		S = 110;
      #100;
		
		
		I0 = 0;
		I1 = 0;
		I2 = 1;
		I3 = 1;
		I4 = 0;
		I5 = 0;
		I6 = 0;
		I7 = 1;
		I8 = 0;
		I9 = 0;
		S = 111;
      #100;
        
		

	end
      
endmodule

