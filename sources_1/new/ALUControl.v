`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2018 18:13:35
// Design Name: 
// Module Name: ALUControl
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


module ALUControl (ALUOp, FuncCode, ALUCtl);
    input [1:0] ALUOp;
    input [5:0] FuncCode;
    output reg [3:0] ALUCtl;
    
    always begin 
        case (FuncCode)
            32: ALUCtl <= 2; // add
            34: ALUCtl <= 6; // subtract
            36: ALUCtl <= 0; // and
            37: ALUCtl <= 1; // or
            39: ALUCtl <= 12; // nor
            42: ALUCtl <= 7; // slt
            default: ALUCtl <= 15; // should not happen
        endcase
     end
endmodule
