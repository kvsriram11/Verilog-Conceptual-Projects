module mmmmmm (Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F);
input wire [7:0] A,B,C,D,E,F;
output wire [7:0] Y5,Y4,Y3,Y2,Y1,Y0;

wire [7:0] t1,t2,t3,t4,t5,t6;

mmmmm M51 (t1,t2,t3,t4,t5,A,B,C,D,E);
maxmin MM (Y5,t6,t1,F);
mmmmm M52 (Y4,Y3,Y2,Y1,Y0,t6,t2,t3,t4,t5);

endmodule