`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 12:20:19 AM
// Design Name: 
// Module Name: countup_fpga
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


module countup_fpga(
input wire clk,
input wire reset,
input wire cnt_en,
output wire [5:0] count
  );
  reg [27:0] clk_div_counter;
  reg slow_clk=0;
  always @(posedge clk) begin
  clk_div_counter <= clk_div_counter +1;
  slow_clk = clk_div_counter[27];
  end
  countup basys(
  .clk(clk_div_counter[27]),
  .reset(reset),
  .cnt_en(cnt_en),
  .count(count)
  );
endmodule
