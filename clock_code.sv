`timescale 1ns/1ps
///generating a  clock of 25MHZ frequency
module tb()
reg clk;
initial begin
clk=1'b0;
end
always #20 clk=~clk;

initial begin
 $dumpfile("dump.vcd")
 $dumpvars
 end
 initial begin
 #100;
 $finish();
 end
 endmodule
