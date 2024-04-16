`timescale 1ns/1ps

class first;
int data=12;

function first copy();
copy=new();
copy.data=data;
endfunction
endclass

class second;
int ds=34;

first f1;

function new();
f1=new();
endfunction

function second copy();
copy=new();
copy.ds=ds;
copy.f1=f1.copy;
endfunction
endclass

module tb;
second s1,s2;

initial begin
s1=new();
s2=s1.copy;

s2.f1.data=34;
$display("value:",s1.f1.data);
$display("value:",s2.f1.data);
end
endmodule