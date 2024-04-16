`timescale 1ns/1ps


class generator;
rand bit[7:0] x,y,z;
endclass


module tb;
generator g;
int i=0;
initial begin
  g=new();
for(i=0;i<20;i++) begin
g.randomize();
 $display("x:%0d y:%0d z:%0d",g.x,g.y,g.z);
#20;
end

end
endmodule