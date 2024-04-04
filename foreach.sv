`timescale 1ns/1ps
module tb();
  initial begin
    int arr[10];
    foreach(arr[j]) begin
      arr[j]=j;
      $display("%0d",arr[j]);
    end
      
  end
  
endmodule
  