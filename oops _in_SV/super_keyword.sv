`timescale 1ns/1ps

class first;
int data;

function new(input int data);
this.data=data;
endfunction
endclass

class second extends first;
int temp;

function new( int data,int temp);
this.temp=temp;
super.new(data);
endfunction
endclass



module tb;
second s;

initial begin
s=new(55,64);

$display("temp:%0d and data:%0d",s.temp,s,data);

end
endmodule