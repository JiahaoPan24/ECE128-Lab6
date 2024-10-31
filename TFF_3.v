`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/19 15:41:52
// Design Name: 
// Module Name: TFF_3
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


module TFF_3( input clk, rstn, output reg [2:0] count);
  wire t0, t1, t2;
  
  TFF T0 (clk, rstn, 1'b1, t0);
  TFF T1 (clk, rstn, t0, t1);
  TFF T2 (clk, rstn, t1&t0, t2);
  
  always @(posedge clk) 
    begin
      if (!rstn) 
        count <= 3'b000;
      else
        count <= {t2, t1, t0};
    end
endmodule
