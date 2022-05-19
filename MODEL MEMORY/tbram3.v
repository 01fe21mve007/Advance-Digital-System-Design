`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:02:56 04/08/2022
// Design Name:   ram_3
// Module Name:   E:/abhi/MODELMEM/tbram3.v
// Project Name:  MODELMEM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbram_3;
	reg [3:0] address;
	wire[7:0] data_out;
	reg [7:0] data_in;
	reg write,select;
	integer k,myseed;
	ram_3 RAM(data_out,data_in,address,write,select);
	initial
	begin
	for (k=0;k<=15;k=k+1)
	begin
	data_in=(k+k)%256;write=1;select=1;
	#10 address=k; write=0;select=0;
	end
	repeat(20)
	begin
	#2 address=$random(myseed)%16;
	write=1;select=1;
	$display("address:%5d,data:%4d",address,data_out);
	end
	end
	initial myseed=35;
	endmodule
