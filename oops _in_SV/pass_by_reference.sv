`timescale 1ns/1ps
module tb;
  task automatic swap(ref int a,ref int b);
int temp;
temp=a;
a=b;
b=temp;
endtask
int a=2;
  int b=1;

  
 initial begin

   swap(a,b);
   $display("a:%0d and b:%0d",a,b);
end
endmodule