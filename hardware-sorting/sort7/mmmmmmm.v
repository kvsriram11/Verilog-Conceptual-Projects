module mmmmmmm (Y6,Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F,G);
input wire [7:0] A,B,C,D,E,F,G;
output wire [7:0] Y6,Y5,Y4,Y3,Y2,Y1,Y0;

wire [7:0] t1,t2,t3,t4,t5,t6,t7;

mmmmmm M61 (t1,t2,t3,t4,t5,t6,A,B,C,D,E,F);
maxmin MM (Y6,t7,t1,G);
mmmmmm M62 (Y5,Y4,Y3,Y2,Y1,Y0,t7,t2,t3,t4,t5,t6);

endmodule