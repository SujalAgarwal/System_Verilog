// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb();
  int arr[10];
  int i=0;
  initial begin
    repeat(10) begin
      arr[i]=i;
      i++;
    end
    
    $display("arr: %0p",arr);
  end
  
endmodule
  
  