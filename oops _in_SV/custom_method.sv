`timescale 1ns/1ps

class first;
int data=34;
bit[7:0] temp=8'd45;

function first copy();
copy=new();
copy.data=data;
copy.temp=temp;
endfunction
endclass


module tb;
first f1,f2;

initial begin
f1=new();
f2=new();
f2=f1.copy;
  $display("temp:%0b data:%0d",f2.temp,f2.data);
end
endmodule