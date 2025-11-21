module tb;
reg [7:0] A,B,C,D,E,F,G,H;
wire [7:0]  Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;

mmmmmmmm_a KABALI (Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,A,B,C,D,E,F,G,H);

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
H=$random;
#1;
$display (A,,B,,C,,D,,E,,F,,G,,H,,,Y7,,Y6,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
//$display (A,,B,,C,,D,,E,,F,,G,,H,,,Y0,,Y1,,Y2,,Y3,,Y4,,Y5,,Y6,,Y7);
end
A=$random;
B=$random;
C=$random;
D=$random;
E=$random;
F=$random;
G=$random;
H=F;
#1;
$display (A,,B,,C,,D,,E,,F,,G,,H,,,Y7,,Y6,,Y5,,Y4,,Y3,,Y2,,Y1,,Y0);
//$display (A,,B,,C,,D,,E,,F,,G,,H,,,Y0,,Y1,,Y2,,Y3,,Y4,,Y5,,Y6,,Y7);
end

endmodule