`timescale 1ns / 1ps
module benes4#(	
//Parameterized values
	parameter Q = 15,
	parameter N = 32,
	parameter m=3
	)(
	
input [N-1:0] x1,x2,x3,x4,
output [N-1:0] y1,y2,y3,y4,
	
//output [N-1:0] yin1,yin2,yin3,yin4,
//input [N-1:0] xin1,xin2,xin3,xin4,
input [m-1:0] s
);

wire [N-1:0] l0,l1,l2,l3;
wire [N-1:0] m0,m1,m2,m3;

//reg [N-1:0] x1,x2,x3,x4;
//wire [N-1:0] y1,y2,y3,y4;

crbar2 c0(.x1(x1),.x2(x2),.y1(l0),.y2(l1),.s(s[m-1])); 
crbar2 c1(.x1(x3),.x2(x4),.y1(l2),.y2(l3),.s(s[m-1])); 

crbar2 c2(.x1(l0),.x2(l2),.y1(m0),.y2(m1),.s(s[m-1 -1])); 
crbar2 c3(.x1(l1),.x2(l3),.y1(m2),.y2(m3),.s(s[m-1 -1])); 

crbar2 c4(.x1(m0),.x2(m2),.y1(y1),.y2(y2),.s(s[m-1-2])); 
crbar2 c5(.x1(m1),.x2(m3),.y1(y3),.y2(y4),.s(s[m-1-2])); 

//initial begin
//
//x1= xin1;
//x2= xin2;
//x3= xin3;
//x4= xin4;
//end
//
//
//assign yin1=y1;
//assign yin2=y2;
//assign yin3=y3;
//assign yin4=y4;
endmodule




module Test_benes4;
reg clk;
reg [2:0] s_tb;
reg [31:0] x1_tb,x2_tb,x3_tb,x4_tb;
wire [31:0] y1_tb,y2_tb,y3_tb,y4_tb;

benes4#(19,32,3) b
(
	
//	.yin1(y1_tb),.yin2(y2_tb),.yin3(y3_tb),.yin4(y4_tb),
//	.xin1(x1_tb),.xin2(x2_tb),.xin3(x3_tb),.xin4(x4_tb),
//	.s(s_tb)

	.y1(y1_tb),.y2(y2_tb),.y3(y3_tb),.y4(y4_tb),
	.x1(x1_tb),.x2(x2_tb),.x3(x3_tb),.x4(x4_tb),
	.s(s_tb)

);

always #10 clk=~clk;

initial begin 
clk=1'b0;


x1_tb=32'b00000000000010000000000000000000;
x2_tb=32'b00000000000100000000000000000000;
x3_tb=32'b00000000000110000000000000000000;
x4_tb=32'b00000000001000000000000000000000;



//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;
//#10 s_tb=000;
//#10 s_tb=010;
//#10 s_tb=101;
//#10 s_tb=111;

end 

endmodule