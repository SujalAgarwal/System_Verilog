`timescale 1ns/1ps
class transaction;
 
rand bit [7:0] a;
rand bit [7:0] b;
rand bit wr;
 
endclass

class generator;
transaction t;
mailbox #(transaction) mbx;

function new(mailbox #(transaction) mbx);
this.mbx=mbx;
endfunction

task run();
for (int i=0; i<10;i++ ) begin
  t=new();
  assert(t.randomize()) else begin 
    $display("Randomization failed");
  end
  $display("SENT DATA: a:%0d b:%0d wr:%0d",t.a,t.b,t.wr);
  mbx.put(t);
  #10;
end

endtask

endclass


class driver;
transcation tc;
mailbox #(transaction) mbx;

function new(mailbox #(transaction) mbx);
this.mbx=mbx;
endfunction

task run();
forever begin
  mbx.get(tc);
  $display("RECEIVED DATA: a:%0d b:%0d wr:%0d",tc.a,tc.b,tc.wr);
  #10;
end
endtask
endclass


module tb;
generator g;
driver d;
mailbox #(transaction) mbx;

initial begin
  mbx=new();
  g=new(mbx);
  d=new(mbx);


  fork
    g.run();
    d.run();
  join
end
endmodule