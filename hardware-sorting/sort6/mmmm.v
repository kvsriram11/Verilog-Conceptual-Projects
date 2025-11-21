module mmmm(max,midH,midL,min,A,B,C,D);
input [7:0] A,B,C,D;
output [7:0] max,midH,midL,min;

wire [7:0] tmax1,tmid1,tmin1;
wire [7:0] max,tmin2;
wire [7:0] midH,midL,min;

mmm MMM1 (tmax1,tmid1,tmin1,A,B,C);
maxmin MM (max,tmin2,tmax1,D);
mmm MMM2 (midH,midL,min,tmin2,tmid1,tmin1);

endmodule