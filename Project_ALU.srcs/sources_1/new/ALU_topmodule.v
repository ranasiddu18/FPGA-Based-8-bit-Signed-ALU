`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 12:52:27
// Design Name: 
// Module Name: ALU_topmodule
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


 module ALU_topmodule(

    input clk,

    input [7:0] data_in,
    input [4:0] opcode,

    input load_a,
    input load_b,

    output [15:0] led,

    output [3:0] digit,
    output [7:0] Seven_Seg

);

reg signed [7:0] reg_a = 0;
reg signed [7:0] reg_b = 0;

wire signed [15:0] result;

wire CF;
wire ZF;
wire OF;
wire NF;

always @(posedge clk) begin

    if(load_a && !load_b)
        reg_a <= data_in;

    else if(load_b && !load_a)
        reg_b <= data_in;

end

ALU_8bit alu_inst(

    .a(reg_a),
    .b(reg_b),
    .s(opcode),

    .result(result),

    .CF(CF),
    .ZF(ZF),
    .OF(OF),
    .NF(NF)

);

assign led = result;

seven_seg_top display_inst(

    .clk(clk),
    .value(result),

    .digit(digit),
    .seg(Seven_Seg)

);

endmodule
