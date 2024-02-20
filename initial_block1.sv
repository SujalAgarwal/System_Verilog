`timescale 1ns/ps
module tb()
reg clk;
reg resetn;

initial begin
  clk=1'b0;
  resetn=1'b0;
end
  
  initial begin
    resetn=1'b0;
    #60
    resetn=1'b1;
  end
endmodule
