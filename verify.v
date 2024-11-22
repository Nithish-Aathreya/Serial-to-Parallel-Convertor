`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 21:22:50
// Design Name: 
// Module Name: verify
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


module verify();
reg clk,clrs;
reg din;
reg conp;
wire [15:0]sout;

main uut(clk,din,sout,clrs,conp);

initial
begin
clk = 1'b0;
forever
#5 clk = ~clk;
end

initial
begin

clrs = 1'b1;
din=1'b0;
conp=1'b1;
#5 conp=1'b0;
#10 clrs=1'b0; //15
  #10 din=1'b1; //25
#10 din=1'b0; //35
#10 din=1'b1; //45
#10 din=1'b0; //55

#5 conp = 1'b1; //60
#10 conp=1'b0; //70
#50  $finish;

end
endmodule
