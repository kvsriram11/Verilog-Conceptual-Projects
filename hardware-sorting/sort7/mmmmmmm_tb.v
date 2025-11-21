module tb;
reg [7:0] A,B,C,D,E,F,G;
wire [7:0]  Y6,Y5,Y4,Y3,Y2,Y1,Y0;

mmmmmmm KABALI (Y6,Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F,G);

initial
begin
repeat (30)
begin
A=$random;
B=$random;
C=$random;
D=$random;
E=$random;
F=$random;
G=$random;
#1;
$display (A,,B,,C,,D,,E,,F,,G,,,Y6,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
end
A=$random;
B=$random;
C=$random;
D=$random;
E=$random;
F=$random;
G=E;
#1;
$display (A,,B,,C,,D,,E,,F,,G,,,Y6,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
end

endmodule