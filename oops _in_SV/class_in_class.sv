`timescale 1ns/1ps

class first;
int data=34;

task display();
$display("%0d",data);
endtask
endclass

class second;
first f1;
function new();
f1=new();
endfunction
endclass

module tb;
second s;

initial begin
s=new();
s.f1.display();

end
endmodule