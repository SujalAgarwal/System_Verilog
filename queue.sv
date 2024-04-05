`timescale 1ns/1ps
module tb()
int arr[$];
initial begin
arr={1,2,3,4};
$display("%0p",arr);
end
endmodule