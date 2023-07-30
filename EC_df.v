`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 21:50:13
// Design Name: 
// Module Name: EC_df
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


module EC_df(
    input x1,x2,x3,x4,cin,
    output c0,s,c
    );
    wire w1;
    fa_df fa1(x1,x2,x3,w1,c0);
    fa_df fa2(x4,cin,w1,s,c);
endmodule
