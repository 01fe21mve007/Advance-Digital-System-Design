`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:12 04/11/2022 
// Design Name: 
// Module Name:    pipe_ex 
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
module pipe_ex(f,a,b,c,d,clk);
parameter n=10;
input [n-1:0] a,b,c,d;
input clk;
output [n-1:0]f;
reg [n-1:0] l12_x1,l12_x2,l12_d,l23_x3,l23_d,l34_f;
assign f=l34_f;
always @(posedge clk)
begin
l12_x1 <= #4 a+b;
l12_x2 <= #4 c-d;
l12_d <=d;
end
always @(posedge clk)
begin
l23_x3 <= #4 l12_x1+l12_x2;
l23_d <= l12_d;
end
always @(posedge clk)
l34_f <= #6 l23_x3 * l23_d;
endmodule
