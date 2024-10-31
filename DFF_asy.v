`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:55:11
// Design Name: 
// Module Name: DFF_asy
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


module DFF_asy(input d, rstn, clk, output reg q);
    always @(posedge clk or negedge rstn)
        if(!rstn)
            q <= 0;
        else
            q <= d;

endmodule
