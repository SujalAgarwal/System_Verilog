// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb();
reg clk=0;
reg clk_50=0;
always #5 clk=~clk;
///function to calculate the phase ton and toff
task cal(input real freq,input real phase,input real duty_cycle,output real pout,output real ton,output real toff);
pout=phase;
ton=(1/freq)*duty_cycle*1000000000;
toff=(1000000000/freq)-ton;
endtask;

///function to generate the clk with given phase ton and toff.
task clk_gen(input real phase,input real ton,input real toff);
@(posedge clk);
#phase;
while(1) begin
clk_50=1;
#ton;
clk_50=0;
#toff;
end
endtask

///initialize variable to store the output
real pout;
real ton;
real toff;

initial begin
cal(1000000000,5,0.5,pout,ton,toff);
clk_gen(pout,ton,toff);
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

