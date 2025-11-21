module tb;
input clk,rst;
output [2:0] cnt;

mod5 KABALI (clk,rst,cnt);

initial
begin
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
clk=0; #5;
clk=1; #5;
end

initial 
begin
rst=1;
#23;
rst=0;//assert
#2
rst=1;//de assert
end

endmodule