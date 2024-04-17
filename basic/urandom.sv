/* Create two arrays of reg type capable of storing 15 elements. Use $urandom function to add 15 values to the array. Print the value of all the elements of the array on a single line.*/

`timescale 1ns/1ps
module tb();
reg arr1[14:0];
reg arr2[14:0];
initial begin
for(int i=0;i<15;i++) begin
arr2[i]=$urandom();
arr1[i]=$urandom();
end
$display("%0p",arr1);
$display("%0p",arr2);
end
endmodule

