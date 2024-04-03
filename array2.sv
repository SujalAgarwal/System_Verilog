`timescale 1ns/1ps
module tb;
int arr[10];

initial begin
for(int i=0;i<10;i=i+1) begin
arr[i]=i*i;
end
end

initial begin 
for(int i=0;i<10;i=i+1) begin
$display("value at index %0d is %0d",i,arr[i]);
end
end
endmodule
