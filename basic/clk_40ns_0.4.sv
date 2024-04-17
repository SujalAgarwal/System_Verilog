// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb();
reg clk=0;
reg clk_40=0;
always #5 clk=~clk;
///function to calculate the  ton and toff
  task cal(input real time1,input real duty_cycle,output real ton,output real toff);

ton=time1*duty_cycle;
toff=time1-ton;
endtask;

///function to generate the clk with given phase ton and toff.
task clk_gen(input real ton,input real toff);


while(1) begin
clk_40=1;
#ton;
clk_40=0;
#toff;
end
endtask

///initialize variable to store the output

real ton;
real toff;

initial begin
  cal(40,0.5,ton,toff);
clk_gen(ton,toff);
end

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end

initial begin
#200;
$finish();
end

endmodule

