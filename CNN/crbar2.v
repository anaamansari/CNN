`timescale 1ns / 1ps
module crbar2#(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
	)(
	
	
output [N-1:0] y1,y2,
input [N-1:0] x1,x2,
input s
);


reg [N-1:0] yin1, yin2;

always @ (x1 or x2 or s ) begin
//yin1=((~s&x1)|(s&x2));
// 
//yin2=((~s&x2)||(s&x1));

if (s==0) begin
yin1= x1;
yin2= x2;
end else begin
yin1=x2;
yin2=x1;
end
end 
assign y1=yin1;
assign y2=yin2;
 
endmodule


module Test_crbar2;
reg clk;
reg [31:0] xin1, xin2;
wire [31:0] yin1, yin2;
reg s;

crbar2#(19,32) c
(
.x1(xin1),
.x2(xin2),
.y1(yin1),
.y2(yin2),
.s(s)
);




initial begin 
clk=1'b0;

xin1=32'b00000000000110000000000000000000;
xin2=32'b00000000001000000000000000000000;

#10 s=0;
#10 s=1;
#10 s=0;
#10 s=1;
#10 s=0;
#10 s=1;
#10 s=0;
#10 s=1;

end 






endmodule



