`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:22 05/19/2022 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(s,c,a,b,cin);
input a,b,cin;
output s,c;
xor a1(s,a,b,in);
and a2(w0,a,b);
and a3(w1,b,in) ;
and a4(w2,a,cin);
or a5(c,w0,w1,w2);

endmoduleendmodule
