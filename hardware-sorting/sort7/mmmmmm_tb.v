module tb;
reg [7:0] A,B,C,D,E,F;
wire [7:0]  Y5,Y4,Y3,Y2,Y1,Y0;

mmmmmm KABALI (Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F);

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
#1;
$display (A,,B,,C,,D,,E,,F,,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
end
A=$random;
B=$random;
C=$random;
D=$random;
E=$random;
F=D;
#1;
$display (A,,B,,C,,D,,E,,F,,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
end

endmodule