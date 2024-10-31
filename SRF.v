`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 14:22:07
// Design Name: 
// Module Name: SRF
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


module SRF(S, R, clk, Q, Qbar);
    input S, R,clk;
    output reg Q;
    output Qbar;
    assign  Qbar = ~Q;
    
    always @(posedge clk)
    if(R & ~S)
        Q <= 0;
    else if(S & ~R)
        Q <= 1;
    else if(S & R)Q <= 1'bx;
        
endmodule
