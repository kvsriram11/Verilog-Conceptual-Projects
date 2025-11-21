module tb;
reg clk,rst;
wire [1:0] cnt;

repeat5 KABALI (clk,rst,cnt);

always #5 clk = !clk; //infinite Loop

initial
begin
clk=0;
rst=0;
#2;
rst=1;
#1000;
$finish; //kill line 7

end

endmodule