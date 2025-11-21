module mmm(max,mid,min,A,B,C);
input [7:0] A,B,C;
output [7:0] max,mid,min;

wire [7:0] tmax,tmin1;
wire [7:0] max,tmin2;
wire [7:0] mid,min;

maxmin MM1 (tmax,tmin1,A,B);
maxmin MM2 (max,tmin2,tmax,C);
maxmin MM3 (mid,min,tmin2,tmin1);

endmodule