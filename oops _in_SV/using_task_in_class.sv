Assume class consists of three data members a, b, and c each of size 4-bit. Create a task inside the class that returns the result of the addition of data members. The task must also be capable of sending the value of a, b, c, and result to the console. Verify code for a = 1, b = 2, and c = 4.




`timescale 1ns/1ps

class num;
bit[3:0] a,b,c;
function new(input bit[3:0] a,b,c);
this.a=a;
this.b=b;
this.c=c;
endfunction

task add();
int res=a+b+c;
$display("a:%0d b:%0d C:%0d res:%0d",a,b,c,res);
endtask
endclass


module tb;
num n;
initial begin
n=new(1,2,4);
n.add();
end
endmodule