`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:49 03/16/2022 
// Design Name: 
// Module Name:    MUL-datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MULdatapath(eqz,lda,ldb,ldp,clrp,decb,data_in,clk);

input lda,ldb,ldp,clrp,decb,clk;
input [15:0] data_in;
output eqz;
wire [15:0] x,y,z,bout,bus;

pipo1 a (x,bus,lda,clk);
pipo2  p (y,z,ldp,clrp,clk);
cntr b (bout,bus,ldb,decb,clk);
add ad (z,x,y);
eqz comp (eqz,bout);

endmodule
   


