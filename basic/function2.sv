/*Create a function that will perform the multiplication of the two unsigned integer variables. Compare values return by function with the expected result and if both values match send "Test Passed" to Console else send "Test Failed".*/
module tb;
function bit[4:0] multiplication(input bit[3:0] a,b);
return a*b;
endfunction

bit[3:0] a=4'b0100;
bit[3:0] b=4'b0010;
bit[4:0] res=0;
initial begin
res=multiplication(a,b);
if(a*b==res) begin
$display("Test case passed");
end
else begin
  $display("Test Failed");
end
end
endmodule