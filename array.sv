`timescale 1ns/1ps
module tb;
bit arr[]={1,2,3,4};

initial begin
$display("value of all the elements in the array arr is: %0p",arr);
end
endmodule