`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 21:46:51
// Design Name: 
// Module Name: ac2_df
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


module ac2_df(
    input q1,q2,q3,q4,
    output sum,carry
    );
    wire p1,p2;
    assign p1=q3^q4;
    assign p2=q1^q2;
    assign sum= p2^p1;
    assign carry= q1&q2 | p2&p1;

endmodule
