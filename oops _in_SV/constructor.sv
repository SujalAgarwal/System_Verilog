`timescale 1ns/1ps
class first;
int data;

function new();
data=32;
endfunction
endclass

module tb;
first f1;
initial begin
f1=new();
$display("data:%0d",f1.data);
end
endmodule