`timescale 1ns/1ps

module tb;
event a;

initial begin
  #10;
  ->a;
end

initial begin
@(a)
$display("Event triggered at %0d",$time);
end

endmodule