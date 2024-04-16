`timescale 1ns/1ps

module tb;
int data1,data2;
event done;
int i=0;
initial begin
  for(i=0;i<10;i++) begin
  data1=$urandom();
  $display("data sent:%0d",data1);
  #10;
  end
  ->done;
end

initial begin
forever begin
  data2=data1;
  $display("data received:%0d",data2);
end
end


initial begin
$finish();
end

endmodule