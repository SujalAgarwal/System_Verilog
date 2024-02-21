`timescale 1ns/1ps
module tb();
reg clk=0;

always #55.555 clk=~clk;

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end

initial begin
#100;
$finish();
end
endmodule
