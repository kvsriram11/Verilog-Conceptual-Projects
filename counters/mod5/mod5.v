module mod5 (clk,rst,cnt);
input clk,rst;
output [2:0] cnt;

`ifdef OLD_TAMARIND_PICKLE
wire d2,d1,d0;
wire [2:0] cnt;
//Any signal generated from an 'always' block should be reg. Not wire

reg q2,q1,q0;

and G1 (d2,q1,q0);
xor G2 (d1,q1,q0);
nor G3 (d0,q2,q0);

assign cnt = {q2,q1,q0}//alias

always @(posedge clk or negedge rst)
begin
if (!rst) q2<=0;
else q2<=d2;
end

always @(posedge clk or negedge rst)
begin
if (~rst) q1<=0;
else q1<=d1;
end

always @(posedge clk or negedge rst)
begin
if (rst==0) q0<=0;
else q0<=d0;
end
`endif

`ifdef PRIYA_PICKLE
wire [2:0] b1,tom;
reg [2:0] cnt;
wire s1;
assign b1 = cnt+1;
assign s1 = cnt==4;
assign tom =s1?0:b1;

always @(posedge clk or negedge rst)
begin
if (!rst) cnt <= 3'b000;
else cnt <= tom;
end

`endif
endmodule
