module tb;
reg clk,rst;
wire [6:0] cnt;

mod100 KABALI (clk,rst,cnt);

initial
begin
repeat(120)
begin
clk=0;#5;
clk=1;#5;
end
end

initial
begin
rst=0; //assert
#2;
rst=1;//if you dont de assert
end

endmodule