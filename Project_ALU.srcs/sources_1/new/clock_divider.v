`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 12:53:24
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(

    input clk,
    output reg refresh_clk = 0

);

reg [15:0] counter = 0;

always @(posedge clk) begin

    counter <= counter + 1;

    refresh_clk <= counter[15];

end

endmodule
