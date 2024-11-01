`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 14:03:37
// Design Name: 
// Module Name: clk_divider_tb
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


module clk_divider_tb;
reg clock_in;
wire clock_out;
 
 clk_divider uut (.clock_in(clock_in), .clock_out(clock_out));
 initial begin
  
 clock_in = 0;
  
forever #10 clock_in = ~clock_in;

end
      
endmodule

