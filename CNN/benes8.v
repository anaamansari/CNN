`timescale 1ns / 1ps
module benes8#(	
//Parameterized values
	parameter Q = 15,
	parameter N = 32,
	parameter b8=5,
	parameter b4=3
	)(
input [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7,
output [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7,
//output [N-1:0] yin0,yin1,yin2,yin3,yin4,yin5,yin6,yin7,
//input [N-1:0] xin0,xin1,xin2,xin3,xin4,xin5,xin6,xin7,
input [b8-1:0] s //[b8-1:0] s,
//input [b4-1:0] s4 //_0,s4_1
);

wire [N-1:0] l0,l1,l2,l3,l4,l5,l6,l7;
wire [N-1:0] m0,m1,m2,m3,m4,m5,m6,m7;
wire [b4-1:0] s4;
wire sf,sl;

//initial begin 
//
//end 

//reg [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7;
//wire [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7;

 
crbar2 c0(.x1(x0),.x2(x1),.y1(l0),.y2(l1),.s(sf)); 
crbar2 c1(.x1(x2),.x2(x3),.y1(l2),.y2(l3),.s(sf)); 
crbar2 c2(.x1(x4),.x2(x5),.y1(l4),.y2(l5),.s(sf)); 
crbar2 c3(.x1(x6),.x2(x7),.y1(l6),.y2(l7),.s(sf)); 
benes4 b0(.x1(l0),.x2(l2),.x3(l4),.x4(l6),.y1(m0),.y2(m1),.y3(m2),.y4(m3),.s(s4)); 
benes4 b1(.x1(l1),.x2(l3),.x3(l5),.x4(l7),.y1(m4),.y2(m5),.y3(m6),.y4(m7),.s(s4)); 
//benes4 b0(.xin1(l0),.xin2(l2),.xin3(l4),.xin4(l6),.yin1(m0),.yin2(m1),.yin3(m2),.yin4(m3),.s(s4)); 
//benes4 b1(.xin1(l1),.xin2(l3),.xin3(l5),.xin4(l7),.yin1(m4),.yin2(m5),.yin3(m6),.yin4(m7),.s(s4)); 
crbar2 c4(.x1(m0),.x2(m4),.y1(y0),.y2(y1),.s(sl)); 
crbar2 c5(.x1(m1),.x2(m5),.y1(y2),.y2(y3),.s(sl)); 
crbar2 c6(.x1(m2),.x2(m6),.y1(y4),.y2(y5),.s(sl)); 
crbar2 c7(.x1(m3),.x2(m7),.y1(y6),.y2(y7),.s(sl)); 

//initial begin

assign sf= s[4];
assign s4= s[3:1];
assign sl= s[0];

//x0= xin0;
//x1= xin1;
//x2= xin2;
//x3= xin3;
//x4= xin4;
//x5= xin5;
//x6= xin6;
//x7= xin7;
//end


//assign yin0=y0;
//assign yin1= y1;
//assign yin2= y2;
//assign yin3= y3;
//assign yin4= y4;
//assign yin5= y5;
//assign yin6= y6;
//assign yin7= y7;

endmodule


module Test_benes8;

reg [4:0] s_tb;
reg [31:0] x0_tb,x1_tb,x2_tb,x3_tb,x4_tb,x5_tb,x6_tb,x7_tb;
wire [31:0] y0_tb,y1_tb,y2_tb,y3_tb,y4_tb,y5_tb,y6_tb,y7_tb;

benes8#(19,32,5,3) b
(

//	.yin0(y0_tb),.yin1(y1_tb),.yin2(y2_tb),.yin3(y3_tb),.yin4(y4_tb),.yin5(y5_tb),.yin6(y6_tb),.yin7(y7_tb),
//	.xin0(x0_tb),.xin1(x1_tb),.xin2(x2_tb),.xin3(x3_tb),.xin4(x4_tb),.xin5(x5_tb),.xin6(x6_tb),.xin7(x7_tb),

	.y0(y0_tb),.y1(y1_tb),.y2(y2_tb),.y3(y3_tb),.y4(y4_tb),.y5(y5_tb),.y6(y6_tb),.y7(y7_tb),
	.x0(x0_tb),.x1(x1_tb),.x2(x2_tb),.x3(x3_tb),.x4(x4_tb),.x5(x5_tb),.x6(x6_tb),.x7(x7_tb),
	.s(s_tb)

);



initial begin 


x0_tb=32'b00000000000000000000000000000000;
x1_tb=32'b00000000000010000000000000000000;
x2_tb=32'b00000000000100000000000000000000;
x3_tb=32'b00000000000110000000000000000000;
x4_tb=32'b00000000001000000000000000000000;
x5_tb=32'b00000000001010000000000000000000;
x6_tb=32'b00000000001100000000000000000000;
x7_tb=32'b00000000001110000000000000000000;


#10 s_tb=10001;
#10 s_tb=10101;
#10 s_tb=11011;
#10 s_tb=11111;
#10 s_tb=00000;
#10 s_tb=00100;
#10 s_tb=01010;
#10 s_tb=01110;



end 

endmodule

