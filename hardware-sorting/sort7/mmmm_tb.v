module tb;
reg [7:0] A,B,C,D;
wire [7:0]  max,midH,midL,min;

mmmm KABALI (max,midH,midL,min,A,B,C,D);

initial
begin
repeat (30)
begin
A=$random;
B=$random;
C=$random;
D=$random;
#1;
$display (A,,B,,C,,D,,,max,,midH,,midL,,min);
end
A=$random;
B=$random;
C=$random;
D=B;
#1;
$display (A,,B,,C,,D,,,max,,midH,,midL,,min);
end

endmodule