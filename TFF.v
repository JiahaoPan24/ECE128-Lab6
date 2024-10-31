`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/19 15:54:21
// Design Name: 
// Module Name: TFF
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


module TFF( input clk, input rstn, input t, output reg q);  
  always @ (posedge clk) 
  begin  
    if (!rstn)         
      q <= 1'b0;  
    else if (t)               
        q <= ~q; 
  end  
endmodule  
