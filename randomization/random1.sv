class generator;
rand bit[3:0] a,b;

bit[3:0] y;
endclass

module tb;
generator g;
int i=0;
initial begin
g=new();
for(i=0;i<10;i++) begin
g.randomize();
$display("a:%0d b:%0d",g.a,g.b);
end
end
endmodule

