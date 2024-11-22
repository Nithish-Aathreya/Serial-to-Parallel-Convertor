`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 21:13:30
// Design Name: 
// Module Name: main
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


module main(clk,din,sout,clrs,conp);
input clk,clrs,conp,din;

output reg [15:0]sout;


reg [15:0]temp;

always @(posedge clk)
begin
if(clrs==1'b1)
temp<=16'b0;

else

temp<={temp[15:0],din};
end

always @(posedge conp)
begin
if(clrs==1'b1)
sout<=16'b0;
else
sout<=temp;
end

endmodule
