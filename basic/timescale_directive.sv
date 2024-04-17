`timescale 1ns/1ps
module tb();
reg clk_16=0;
reg clk_8=0;

always #31.25 clk_16=~clk_16;
always #62.5 clk_8=~clk_8;

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end

initial begin
#100;
$finish();
end
endmodule