class first;
int unsigned a,b,c;
endclass

module tb;
first f;
initial begin
  f=new();
f.a=45;
f.b=78;
f.c=90;
$display("a:%0d b:%0d c:%0d",f.a,f.b,f.c);
end
endmodule