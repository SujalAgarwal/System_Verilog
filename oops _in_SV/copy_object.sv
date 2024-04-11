`timescale 1ns/1ps

class first;
int data;
function init(int data);
this.data=data;
endfunction
task disp();
$display("%0d",data);
endtask
endclass

module tb;
first f1,f2;

initial begin
f1=new(55);
end

initial begin
f2=new f1;
end
endmodule