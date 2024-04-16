//Take the help of pseudo-random number generator to generate values for wr and rst signal. rst should be low for apprx. 30% of time whie wr should be high for apprx. 50% of time. Verify your code for 20 iterations by sending values of both wr and rst on a console

`timescale 1ns/1ps

class generator;
rand bit wr;
rand bit rst;

constraint data{
  rst dist {0:=30,1:=70};
  wr dist {0:=50,1:=50};
}

function void disp();
$display("wr:%0d rst:%0d",wr,rst);
endfunction
endclass

module tb;

generator g;
int i=0;
initial begin
  g=new();
  for ( i= 0;i<20 ;i++ ) begin
    g.randomize();
    g.disp;
  end
end

endmodule