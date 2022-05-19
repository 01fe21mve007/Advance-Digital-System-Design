`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:52 04/11/2022
// Design Name:   pipe_ex
// Module Name:   E:/ABHI/pipelining/tbpipe_ex.v
// Project Name:  pipelining
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe_ex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbpipe_ex;
parameter n=10;
wire [n-1:0] f;
reg [n-1:0] a,b,c,d;
reg clk;
pipe_ex mypipe(f,a,b,c,d,clk);
initial clk=0;
always #10 clk=~clk;
initial
begin
#5 a=10;b=12;c=6;d=3;
#20 a=10;b=10;c=5;d=3;
#20 a=20;b=11;c=1;d=4;
#20 a=15;b=10;c=8;d=2;
#20 a=8;b=15;c=5;d=0;
#20 a=10;b=20;c=5;d=3;
#20 a=10;b=10;c=30;d=1;
#20 a=30;b=1;c=2;d=4;
end
initial
begin
$dumpfile ("pipe.vod");
$dumpvars (0,tbpipe_ex);
$monitor ("time: %d,f=%d",$time,f);
#300 $finish;
end
endmodule