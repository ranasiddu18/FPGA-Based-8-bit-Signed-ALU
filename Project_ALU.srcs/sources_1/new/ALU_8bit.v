`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 12:51:29
// Design Name: 
// Module Name: ALU_8bit
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


 module ALU_8bit(
    input signed [7:0] a,
    input signed [7:0] b,
    input [4:0] s,

    output reg signed [15:0] result,
    output reg CF,
    output reg ZF,
    output reg OF,
    output reg NF
);

reg [8:0] temp;

always @(*) begin

    result = 16'd0;
    CF = 1'b0;
    OF = 1'b0;

    case(s)

    5'b00000: begin
        temp = {1'b0,a}+{1'b0,b};
        result = a+b;
        CF = temp[8];
        OF = (a[7]==b[7]) && (result[7]!=a[7]);
    end

    5'b00001: begin
        result = a-b;
        CF = (a<b);
        OF = (a[7]!=b[7]) && (result[7]!=a[7]);
    end

    5'b00010: result = a*b;

    5'b00011: begin
        if(b!=0)
            result = a/b;
    end

    5'b00100: begin
        if(b!=0)
            result = a%b;
    end

    5'b00101: result = a & b;
    5'b00110: result = a | b;
    5'b00111: result = a ^ b;
    5'b01000: result = ~(a ^ b);
    5'b01001: result = ~a;
    5'b01010: result = ~(a & b);
    5'b01011: result = ~(a | b);

    5'b01100: result = (a && b);
    5'b01101: result = (a || b);
    5'b01110: result = (!a);

    5'b01111: result = a >> b[2:0];
    5'b10000: result = a << b[2:0];

    5'b10001: result = a >>> b[2:0];
    5'b10010: result = a <<< b[2:0];

    5'b10011: result = {a[0],a[7:1]};
    5'b10100: result = {a[6:0],a[7]};

    5'b10101: result = (a==b);
    5'b10110: result = (a!=b);
    5'b10111: result = (a>b);
    5'b11000: result = (a<b);
    5'b11001: result = (a>=b);
    5'b11010: result = (a<=b);

    default: result = 16'd0;

    endcase

    ZF = (result == 16'd0);
    NF = result[15];

end

endmodule