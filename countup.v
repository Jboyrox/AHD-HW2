`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 11:52:31 PM
// Design Name: 
// Module Name: countup
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

`default_nettype none
module countup(
input wire clk,
reset , cnt_en,
output wire[5:0] count
    );
    reg  [5:0] i_cnt;
//    always @(reset==0) begin
//    i_cnt <=16'b0;
//    end
    always @(posedge clk or negedge reset) begin
    if(reset ==0)
    i_cnt <= 16'b0;
    else if (cnt_en==1) begin
    if( i_cnt ==63)
    i_cnt <= 16'b0;
    else i_cnt<= i_cnt+1;
    end
    end
    assign count = i_cnt;
endmodule
