module tb;
  function bit[4:0] add(input bit[3:0] a,input bit[3:0] b);
return a+b;
endfunction

bit[4:0] res=0;
initial begin
res=add(4'b0010,4'b0100);
$display("value:%0d",res);
end
endmodule