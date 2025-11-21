module tb;
reg [7:0] A,B,C;
wire [7:0] max,mid,min;

mmm KABALI (max,mid,min,A,B,C);
begin
initial
repeat (30)
begin
A=$random;
B=$random;
C=$random;
#1;
$display (A,,B,,C,,max,,mid,,min);
end
end
endmodule