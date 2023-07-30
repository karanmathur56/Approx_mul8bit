`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 11:46:45
// Design Name: 
// Module Name: ac1
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


module ac1(
    input q1,q2,q3,q4,
    output sum,carry
    );
    wire p1,p2;
    assign p1= q1 ^ q2;
    assign p2= q3 | q4;
    assign sum= p1 ^ p2 |(q3&q4); 
    assign carry=(p1&p2)|(q1&q2);
endmodule
