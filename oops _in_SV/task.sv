`timescale 1ns/1ps
module tb;
int a=4;
int b=4;
 task disp();
    $display("a:%0d b:%0d res:%0d",a,b,a+b);
endtask
task stimuli();
a=1;
b=4;
disp();
#10;
a=2;
b=3;
disp();
endtask

initial begin
stimuli();
end


endmodule