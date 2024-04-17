`timescale 1ns/1ps

class generator;

int data=35;

mailbox mbx;

function new(mailbox mbx);
this.mbx=mbx;
endfunction


task run();
mbx.put(data);
$display("data sent:%0d",data);
endtask
endclass


class driver;
int datac;

mailbox mbx;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
mbx.get(datac);
$display("data received:%0d",datac);
endtask

endclass



module tb;
generator g;
driver d;
mailbox mbx;

initial begin
mbx=new();
g=new(mbx);
d=new(mbx);

g.run();
d.run();
end

endmodule