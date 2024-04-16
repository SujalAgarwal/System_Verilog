//Create two tasks each capable of sending a message to Console at a fixed interval. Assume Task1 sends the message "Task 1 Trigger" at an interval of 20 ns while Task2 sends the message "Task 2 Trigger" at an interval of 40 ns. Keep the count of the number of times Task 1 and Task 2 trigger by adding a variable for keeping the track of task execution and incrementing with each trigger. Execute both tasks in parallel till 200 nsec. Display the number of times Task 1 and Task 2 executed after 200 ns before calling $finish for stopping the simulation.


`timescale 1ns/1ps
module tb;
int task1_cnt=0;
int task2_cnt=0;
 task first();
 forever begin
#20;
   $display("Task 1 triggered");
task1_cnt=task1_cnt+1;
 end
 endtask

task second();
forever begin
#40;
$display("Task 2 triggered");
task2_cnt=task2_cnt+1;
end
endtask


initial begin
fork
  first();
  second();
join
end

initial begin
  #200;
  $display("task1:%0d task2:%0d",task1_cnt,task2_cnt);
  $finish();
end
endmodule


