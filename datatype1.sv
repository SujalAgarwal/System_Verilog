module tb;

bit a=0;
byte b=0;
short int c=0;
int d=0;
long int f=0;

bit [7:0] g=8'b00000000;
bit[15:0] h=16'h0000;

real h=0;

/// if we don't initialize value to a variable the 2 state variable will take 0 value and 4
///state variable will take X (Don't care) value.

endmodule
