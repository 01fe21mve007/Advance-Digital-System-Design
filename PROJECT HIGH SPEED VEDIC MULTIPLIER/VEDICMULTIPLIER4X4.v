`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:06 05/19/2022 
// Design Name: 
// Module Name:    VEDICMULTIPLIER4X4 
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
module VEDICMULTIPLIER4X4(a,b,p);
input [3:0] a,b;
output [7:0] p;
wire [1:0] w1,w5;
wire [2:0] w2,w4;
wire [3:0] w3;
wire w6;
wire [9:0] c;

and g0(p[0],a[0],b[0]);

and g1(w1[0],b[1],a[0]);
and g2(w1[1],b[0],a[1]);

and g3(w2[0],b[1],a[1]);
and g4(w2[1],b[2],a[0]);
and g5(w2[2],b[0],a[2]);

and g6(w3[0],b[3],a[3]);
and g7(w3[1],b[0],a[3]);
and g8(w3[2],b[1],a[2]);
and g9(w3[3],b[2],a[1]);

and g10(w4[0],b[1],a[3]);
and g11(w4[1],b[3],a[1]);
and g12(w4[2],b[2],a[2]);

and g13(w5[0],b[2],a[3]);
and g14(w5[1],b[3],a[2]);

and g15(w6,b[3],a[3]);

ha g16(c[0],p[1],w1);
fulladder g17(c[1],s[0],w2);

fulladder g18(c[2],s[1],w3[3:1]);
fulladder g19(c[3],s[2],w4);
fulladder g20(c[4],s[3],w5,c[3]);
ha g21(c[5],s[4],s[1],w3[3:2]);
ha g22(c[6],s[5],c[2],s[2]);
ha g23(p[2],c[7],c[0],s[0]);
fulladder g24(p[3],c[8],c[1],c[7],s[4]);
fulladder g25(p[4],c[9],c[8],c[5],s[5]);
fulladder g26(p[5],c[10],c[9],c[6],s[3]);
fulladder g27(p[6],p[7],c[10],c[4],w6);







endmodule
