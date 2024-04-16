`timescale 1ns/1ps

class generator;
rand bit[3:0] a,b;
bit[3:0] y;
endclass


module tb;
generator g;

initial begin

g=new();
if(!g.randomize()) begin
$display("Randomization failed at time:%0t",$time);
end
$display("a:%0d  b:%0d",g.a,g.b);
end
endmodule