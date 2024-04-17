// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

class generator;
int data=12;

mailbox mbx;

task run();
mbx.put(data);
$display("[GEN]:SENT DATA:%0d",data);
endtask
endclass

class driver;
int datac;

mailbox mbx;

task run();
mbx.get(datac);
$display("[DRV]:RECEIVED DATA:%0d",datac);
endtask

endclass


module tb;
generator g;
driver d;
mailbox mbx;

initial begin
g=new();
d=new();
mbx=new();

g.mbx=mbx;
d.mbx=mbx;

g.run();
d.run();
end

endmodule