`timescale 1ns/1ps

class first;
int data;

function new(input int in_data=0);
data=in_data;
endfunction
endclass

module tb;
first f;

initial begin
f=new(55);
$display("data:%0d",f.data);
end
endmodule