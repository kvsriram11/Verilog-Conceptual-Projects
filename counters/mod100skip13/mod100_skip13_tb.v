module tb;
reg clk,rst;
wire [6:0] cnt;

mod100_skip13 KABALI (clk,rst,cnt);
initial
begin
forever //repeat (infinite)//crystal oscillator
begin
clk =0; #5;
clk =1; #5;
end
end
initial
begin
rst = 0; //assert
#2;
rst=1; //de assert
#1200;
$finish;
end
endmodule