module repeat5 (clk,rst,cnt);
input clk,rst;
output [1:0] cnt;

reg [2:0] icnt;//5
reg [1:0] cnt;//3

always @(posedge clk or negedge rst)
begin
if(~rst) icnt<=1;
else icnt<=(icnt==5) ? 1: (icnt+1);
end

`ifdef FIVE0_1_2_3
always @(negedge rst or posedge clk)
begin
if(~rst) cnt <=0;
else cnt <= (icnt==5) ? (cnt+1) : cnt;
end
`endif

`ifdef FIVE012_NO3
always @(posedge clk or negedge rst)
begin
if (~rst) cnt <=0;
else 
begin
////Green Circled True Part
if (icnt==5) cnt<= (cnt==2)?0:(cnt+1);
else cnt<=cnt;
end
end
`endif

endmodule