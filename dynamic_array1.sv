`timescale 1ns/1ps
module tb();
int arr[];
initial begin
arr=new[10];
for(int i=0;i<10;i++) begin
arr[i]=5*i;
end
$display("array before: %0p",arr);
arr=new[20](arr);
$display("array now: %0p",arr);
end
endmodule
