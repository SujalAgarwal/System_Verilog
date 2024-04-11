//Assume the class consists of three 8-bit data members a, b, and c. Create a Custom Constructor that allows the user to update the value of these data members while adding a constructor to the class. Test your code by adding the value of 2, 4, and 56 to a, b and c respectively.


class Custom;
bit[7:0] a,b,c;

function new(input bit[7:0] a,b,c);
this.a=a;
this.b=b;
this.c=c;
endfunction
endclass

module tb;
Custom c;

initial begin
c=new(2,4,56);
$display("a:%0d and b:%0d and c:%0d",c1.a,c1.b,c1.c);
end
endmodule