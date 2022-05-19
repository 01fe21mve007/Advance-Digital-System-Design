`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:27 04/18/2022
// Design Name:   pipe_ex2
// Module Name:   E:/ABHI/pipeex2/tbpipe2.v
// Project Name:  pipeex2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe_ex2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbpipe2;
wire [15:0] zout;
reg[3:0] rs1,rs2,rd,func;
reg[7:0] addr;
reg clk1,clk2;
integer k;
pipe_ex2 mypipe(zout,rs1,rs2,rd,func,addr,clk1,clk2);
initial
begin
clk1=0; clk2=0;
repeat (20)
begin
#5 clk1=1; #5 clk1=0;
#5 clk2=1; #5 clk2=0;
end
end
initial
for (k=0; k<16; k=k+1)
mypipe.regbank[k]=k;
initial
begin
#5 rs1=3; rs2=5; rd=10; func=0; addr=125;
#20 rs1=3; rs2=8; rd=12; func=2; addr=126;
#20 rs1=10; rs2=5; rd=14; func=1; addr=128;
#20 rs1=7; rs2=3; rd=13; func=11; addr=127;
#20 rs1=10; rs2=5; rd=15; func=1; addr=129;
#20 rs1=12; rs2=13; rd=16; func=0; addr=130;

#60 for (k=125; k<131; k=k+1)
$display ("mem[%3d]=%3d",k,mypipe.mem[k]);
end
initial
begin
$dumpfile ("pipe2.vcd");
$dumpvars (0,tbpipe2);
$monitor("time: %3d, f=%3d", $time,zout);
#300 $finish;
end
endmodule

	