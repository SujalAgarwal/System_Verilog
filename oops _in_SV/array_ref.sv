`timescale 1ns/1ps
module tb;
bit[3:0] res[16];
  function automatic void init_arr( ref bit[3:0]  arr[16]);
for(int i=0;i<15;i++) begin
arr[i]=i;
end
endfunction

initial begin
init_arr(res);
  for(int j=0;j<15;j++) begin
    $display("res[%0d]:%0d",j,res[j]);
  end
end
endmodule