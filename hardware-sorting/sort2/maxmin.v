module maxmin (max,min,A,B);
input [7:0] A,B;
output [7:0] max,min;

wire [7:0] min,max;
wire gt;

/*
assign min = gt?B:A;
assign max = gt?A:B;
assign gt = (A>B);
*/

assign {max,min} = gt ? {A,B} : {B,A};
assign gt = A>B;


endmodule
