//Generate values between 0 to 7 for addr signal when wr is high and values between 8 to 15 when wr is low. Generator code is mentioned in the Instruction tab. Verify your code for 20 iterations by sending values of both wr and addr on a console.


`timescale 1ns/1ps

class generator;

rand bit wr;
rand bit [3:0] addr;


constraint data{
  if(wr)
  addr inside {[0:7]};
  else
  addr inside {[8:15]};
}
  endclass

module tb;
generator g;
int i;
initial begin

  g=new();
  for(i=0;i<20;i++) begin
  g.randomize();
  $display("wr:%0d and addr:%0d",g.wr,g.addr);
  end
end

endmodule