`timescale 1ns/1ps

class first;
rand int data;

constraint data{
  data>0; data<10;
}
endclass

class second;
rand int data;

constraint data{
  data>10;data<20;
}

endclass


class main();
first f;
second s;

int i=0;

semaphore sem;

task send_first();
sem.get(1);
for(i=0;i<10;i++) begin
  f.randomize();
  data=f.data;
  $display("first access semaphore and data sent %0d",f.data);
  #10;

end

sem.put(1);
$display("semaphore unoccupied");

endtask


task send_second();
sem.get(1);
for(i=0;i<10;i++) begin
s.randomize();
data=s.data;
$display("second access semaphore and data sent %0d",s.data);
end

sem.put(1);
$display("semaphore unoccupied");
endtask

task run();
f=new();
s=new();
sem=new(1);

fork
  send_first();
  send_second();
join
endtask

endclass



module tb;
main m;

initial begin
  m=new();
  m.run();
end


initial begin
#250;
$finish();
end
endmodule