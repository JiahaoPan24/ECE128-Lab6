`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 14:24:32
// Design Name: 
// Module Name: SRF_tb
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

module SRF_tb();
reg r, s, clk;
wire q, qbar;

SRF uut1 (.S(s), .R(r), .clk(clk),.Q(q), .Qbar(qbar));
initial begin
  clk=0;
     forever #5 clk = ~clk;  
end 


initial 
    begin
        r = 0; s = 0;
        #50 s = 1;
        #50 s = 0;
        #50 r = 1;
        #50 r = 0; s = 1;
        #50 s = 0; r = 1;
        #50 r = 0;
        #50 r = 1; s = 1;
    end
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end
endmodule
