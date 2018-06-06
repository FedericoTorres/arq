`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2018 17:58:11
// Design Name: 
// Module Name: tb_alu
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


module tb_alu();

    reg [3:0] ALUctl;
    reg [31:0] A, B;
    wire [31:0] ALUOut;
    wire Zero;
    
    alu my_alu(.ALUctl(ALUctl), .A(A), .B(B), .ALUOut(ALUOut), .Zero(Zero));
    
    initial begin
        A = 60;
        B = 60;
        ALUctl = 2;
        #20
        A = 8'hFFFFFFFF;
        B = 8'h0000FFFF;
        ALUctl = 0;
        #20
        A = 8'hFFFF0000;
        B = 8'h0000FFFF;
        ALUctl = 1;
        #20
        A = 60;
        B = 60;
        ALUctl = 6; // Flag Zero==1
        #20
        A = 0;
        B = 0;
        ALUctl = 12;
        #20
        A = 1;
        B = 2;
        ALUctl = 7;    
    end
    
endmodule
