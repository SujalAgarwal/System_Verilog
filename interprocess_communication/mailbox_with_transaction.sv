`timescale 1ns/1ps

class transaction;
rand bit[3:0] din1;
rand bit[3:0] din2;
bit[4:0] out;

endclass


class generator;
transaction t;
mailbox mbx;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task main();

  for(int i=0;i<10;i++) begin
t=new();
assert(t.randomize()) else $display("Randomization failed");
$display("data sent: din1:%0d din2:%0d",t.din1,t.din2);
mbx.put(t);
#10;

end
endtask
endclass



class driver;
transaction tc;
mailbox mbx;

function new(mailbox mbx);
this.mbx=mbx;
endfunction


task main();



  forever begin
    mbx.get(tc);
    $display("data received din1:%0d din2:%0d",tc.din1,tc.din2);
    #10;
  end

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

  fork
    g.main();
    d.main();
  join
end
endmodule