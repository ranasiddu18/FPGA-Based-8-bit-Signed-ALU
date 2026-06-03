`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 12:54:57
// Design Name: 
// Module Name: seven_seg_top
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


 module seven_seg_top(

    input clk,
    input [15:0] value,

    output reg [3:0] digit,
    output [7:0] seg

);

wire refresh_clk;

clock_divider cd1(
    .clk(clk),
    .refresh_clk(refresh_clk)
);

reg [1:0] scan = 0;

reg [3:0] current_nibble;

always @(posedge refresh_clk) begin

    scan <= scan + 1;

end

always @(*) begin

    case(scan)

    2'b00:
    begin
        digit = 4'b1110;
        current_nibble = value[3:0];
    end

    2'b01:
    begin
        digit = 4'b1101;
        current_nibble = value[7:4];
    end

    2'b10:
    begin
        digit = 4'b1011;
        current_nibble = value[11:8];
    end

    2'b11:
    begin
        digit = 4'b0111;
        current_nibble = value[15:12];
    end

    endcase

end

seven_seg_decoder decoder(

    .hex(current_nibble),
    .seg(seg)

);

endmodule
