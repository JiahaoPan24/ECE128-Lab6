`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:56:41
// Design Name: 
// Module Name: DFF_asy_tb
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


module DFF_asy_tb;
    reg clk;
    reg d;
    reg rstn;
    
    DFF_asy D1( .d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk = ~clk;
    
    initial begin
        clk <=0;
        d <=0;
        rstn <=0;
        
        #10 d<=1;
        #10 rstn <=1;
        #15 d<=0; rstn <=0;
        #10 rstn <=1;
        #10 d<=1;
    end
endmodule
