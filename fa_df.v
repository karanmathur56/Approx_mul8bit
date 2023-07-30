`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 11:42:46
// Design Name: 
// Module Name: fa_df
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


module fa_df(
    input a,b,cin,
    output sum,cout
    );
    assign sum= a ^ b ^ cin;
    assign cout= (a&b) | (cin &(a^b));
endmodule
