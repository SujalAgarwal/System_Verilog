`timescale 1ns/1ps

class first;
int data=12;

function display();
$display(" First: %0d",data);
endfunction
endclass


class second extends first;
int temp=23;

function display();
$display("Second: %0d",data);
endfunction
endclass


module tb;
second s;
first f;

initial begin
s=new();
f=new();
f=s;
f.display();
end
endmodule

