`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 23:20:01
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test( );
reg [7:0]a,b;
wire [15:0]p;
reg [15:0]check;
integer i,num_correct;
integer j,num_wrong;
approxmul_16bit uut(a,b,p);
initial begin
//a=8'b10100111;
//b=8'b11101101;
//check=a * b;
for(i=0;i<256;i=i+1) begin
  a = i;
for(j=0;j<256;i=i+1)begin
    b = j;
    check= a*b;
   #10 if (p==check)
   num_correct=num_correct+1;
   else
   num_wrong=num_wrong+1;
     end
  end
  $display("num_corr=%d , num_wrong =%d" , num_correct,num_wrong);


//#10 $display( $time , " %d * %d = %d (%d)", a, b, p ,check);
end
endmodule
