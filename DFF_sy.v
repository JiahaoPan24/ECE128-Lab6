`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:21:03
// Design Name: 
// Module Name: DFF_sy
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


module DFF_sy(input d, rstn, clk, output reg q);
    always @(posedge clk)
        if(!rstn)
            q <= 0;
        else
            q <= d;

endmodule
