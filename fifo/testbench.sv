class transaction;
bit clk;
bit rst;

rand bit [7:0] wdata;
rand bit wreq,rreq;

bit [7:0] rdata;
bit f,e;

constraint wr_control{
 wreq dist {0:=30;1:=70;};
}
constraint read_control{
 rreq dist {0:=30;1:=70;};
}
constraint wr_re{
  wreq!=rreq;
}
endclass

