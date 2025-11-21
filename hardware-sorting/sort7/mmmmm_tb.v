module tb;
reg [7:0] A,B,C,D,E;
wire [7:0]  Y4,Y3,Y2,Y1,Y0;

mmmmm KABALI (Y4,Y3,Y2,Y1,Y0,A,B,C,D,E);

initial
begin
repeat (30)
begin
A=$random;
B=$random;
C=$random;
D=$random;
E=$random;
#1;
$display (A,,B,,C,,D,,E,,,Y4,,Y3,,Y2,,Y1,,Y0);
end
A=$random;
B=$random;
C=$random;
D=$random;
E=C;
#1;
$display (A,,B,,C,,D,,E,,,Y4,,Y3,,Y2,,Y1,,Y0);
end

endmodule