`timescale 1ns/ps

module tb()
  reg clk;
  reg rst;
  
  reg[3:0] temp;
  ///1) to initialize the global signals
  initial begin
    clk=1'b0;
    rst=1'b0;
  end
  ///2) random signal for any data/control
  initial begin
    temp=4'b0010;
    #10
    temp=4'b0011;
    #10
    temp=4'b0101;
  end
  ///3)system task at the starof simulation
  ///in this we have initialized to form waveform
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars
    end
  ///4)analysing values of variable on console
  initial begin
    $monitor("temp:%0d at time:%0t",temp,$time);
  end
  ///5)stop simulation by forcefully calling the finish
  initial begin
    #200;
    $finish();
  end
    
    
  end module