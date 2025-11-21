module mod100_skip13 (clk,rst,cnt);
input clk,rst;
output [6:0] cnt;
wire [6:0] b1,b2,tom;
wire s1,s2;
reg [6:0] cnt;

assign b1 = cnt+1;
assign s1 = cnt ==12;
assign s2 = cnt ==99;
assign b2 = s1 ? 14 :b1;
assign tom = s2?0:b2;

always@(negedge rst or posedge clk)
begin
if (rst==0) cnt <=0;
else cnt <= tom;
end 
endmodule
