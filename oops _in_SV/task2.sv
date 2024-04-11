/*Create a task that will generate stimulus for addr , wr, and en signal as mentioned in a waveform of the Instruction tab. Assume address is 6-bit wide while en and wr both are 1-bit wide. The stimulus should be sent on a positive edge of 25 MHz clock signal.*/

`timescale 1ns/1ps
module tb;
bit clk=0;
bit [5:0] addr=0;
bit wr=0;
bit en=0;
always #20 clk=~clk;
task stimuli()
@(posedge clk)
addr=$urandom_range(0,64);
wr=$urandom_range(0,1);
en=$urandom_range(0,1);
$display("addr:%0b wr:%0d en:%0d",addr,wr,en);
endtask


initial begin
#100
$finish();
end
initial begin
stimuli();
end
endmodule 