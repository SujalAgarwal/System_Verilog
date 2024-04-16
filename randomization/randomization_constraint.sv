//Assume generator class consists of three 8-bit data members (x,y, and z). Write a code to generate 20 random values for all the data members at an interval of 20 ns. Random values for all data members should range from 0 to 50.

`timescale 1ns/1ps

class generator;
rand bit[7:0] x,y,z;

constraint data{
  x inside {[0:50]};
  y inside {[0:50]};
  z inside {[0:50]};

}
endclass
module tb;
generator g;
int i=0;
initial begin
g=new();
for(i=0;i<20;i++) begin
g.randomize();
$display("X:%0d y:%0d Z:%0d",g.x,g.y,g.z);
end
end
endmodule