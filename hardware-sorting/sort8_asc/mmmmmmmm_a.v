module mmmmmmmm_a (Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F,G,H);
input wire [7:0] A,B,C,D,E,F,G,H;
output wire [7:0] Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;

wire [7:0] t1,t2,t3,t4,t5,t6,t7,t8;

mmmmmmm M71 (t1,t2,t3,t4,t5,t6,t7,A,B,C,D,E,F,G);
maxmin MM (Y0,t8,t1,H);
mmmmmmm M72 (Y1,Y2,Y3,Y4,Y5,Y6,Y7,t8,t2,t3,t4,t5,t6,t7);

endmodule