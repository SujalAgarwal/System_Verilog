`timescale 1ns/1ps

module tb;
event a1,a2;

initial begin
->a1;
->a2;
end

initial begin
  wait(a1.triggered)
  $display("Event a1 triggered");

  wait(a2.triggered)
  $display("Event a2 triggered");
end

endmodule