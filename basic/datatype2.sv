`timescale 1ns/1ps
module tb;
reg [7:0] a=8'd12;
reg [7:0] b=8'd34;
integer c=67;
integer d=255;

initial begin
#12
$display("the value of a is %0d",a);
$display("the value of b is %0d",b);
$display("the value of c is %0d",c);
$display("the value of d is %0d",d);
end
endmodule