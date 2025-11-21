module mmmmm (Y4,Y3,Y2,Y1,Y0,A,B,C,D,E);
input wire [7:0] A,B,C,D,E;
output wire [7:0] Y4,Y3,Y2,Y1,Y0;

wire [7:0] t1,t2,t3,t4,t5;

mmmm M41 (t1,t2,t3,t4,A,B,C,D);
maxmin MM (Y4,t5,t1,E);
mmmm M42 (Y3,Y2,Y1,Y0,t5,t2,t3,t4);

endmodule