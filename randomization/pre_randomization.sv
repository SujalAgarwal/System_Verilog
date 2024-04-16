`timescale 1ns/1ps

class generator;
rand bit[7:0] a,b;
int min;
int max;
function void pre_randomize(input int min,input int max);
this.min=min;
this.max=max;
endfunction

constraint data{
  a inside {[min:max]};
  b inside {[min:max]};
}

function void post_randomize();
$display("a:%0d b:%0d",a,b);
endfunction
endclass


module tb;
generator g;
int i=0;
initial begin
g=new();
for(i=0;i<10;i++) begin
g.pre_randomize(2,8);
  g.randomize();

#10;
end

end


endmodule