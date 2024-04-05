`timescale 1ns/1ps
module tb();
int arr[$];
initial begin
arr={1,2,3,4};
arr.push_front(2);
$display("%0p",arr);
arr.push_back(4);
$display("%0p",arr);
arr.insert(2,10);
int j;
j=arr.pop_back();
$display("%0p",arr);
$display("%0d",j);
j=arr.pop_front();
$display("%0p",arr);
$display("%0d",j);
arr.delete(1);
$display("%0p",arr);
end
endmodule