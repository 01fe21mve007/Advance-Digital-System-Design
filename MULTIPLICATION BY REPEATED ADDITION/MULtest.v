`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:53:33 03/16/2022
// Design Name:   MULdatapath
// Module Name:   E:/ABHI/MUL-datapath/MULtest.v
// Project Name:  MUL-datapath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULdatapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MULtest;
reg [15:0] data_in;
reg clk,start;
wire done;

MULdatapath DP (eqz,lda,ldb,ldp,clrp,decb,data_in,clk);
controller CON (lda,ldb,ldp,clrp,decb,done,clk,eqz,start);

initial
begin
   clk=1'b0;
	#3 start=1'b1;
	#500 $finish;
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
	 #17 data_in=17;
	 #10 data_in=5;
	 end
	 
	 initial
	 begin
	 $monitor($time, "%d %b", DP.y, done);
	 $dumpfile("mul.vcd"); $dumpvars(0,MULtest);
	 end
	endmodule


