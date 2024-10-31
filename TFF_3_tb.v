`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/19 16:01:55
// Design Name: 
// Module Name: TFF_3_tb
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


module TFF_3_tb();
  reg clk;
  reg rstn;
  wire [2:0] count;
  
  TFF_3 uut (.clk(clk), .rstn(rstn), .count(count));
  
  always #5 clk = ~clk;
  
  initial begin
        clk = 0;
        rstn = 0;
        
        #10 rstn = 1;
        #150 rstn = 0;
        
        #30;
        
        $stop;
    end

endmodule
