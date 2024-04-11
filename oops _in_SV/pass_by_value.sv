`timescale 1ns/1ps
module tb;
  task swap(input int a,b);
    
    int temp;
    temp=a;
    a=b;
     b=temp;
    $display("value of a:%0d and b:%0d ",a,b);
endtask

initial begin
int a=2;
int b=3;
swap(a,b);
$display("value of a:%0d and b:%0d",a,b);
end
endmodule