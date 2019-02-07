`timescale 1ns / 1ps

module benes16#(	
//Parameterized values
	parameter Q = 15,
	parameter N = 32,
	parameter b16=7,
	parameter b8=5
	)(
	input clk,
	output [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
input [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,

//input [N-1:0] xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,xin13,xin14,xin15,xin16,
//output [N-1:0] yin1,yin2,yin3,yin4,yin5,yin6,yin7,yin8,yin9,yin10,yin11,yin12,yin13,yin14,yin15,yin16,
input [b16-1:0] s

);

//wire [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16;
//reg [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

wire [N-1:0] l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15;
wire [N-1:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;

wire  sf, sl;
wire [4:0] s8;

//initial begin 
//sf=s[7];
//s8=s[5:1];
//sl=s[0];
//end 


crbar2 c0( .x1(x0),.x2(x1),.y1(l0),.y2(l1),.s(sf)); 
crbar2 c1( .x1(x2),.x2(x3),.y1(l2),.y2(l3),.s(sf)); 
crbar2 c2( .x1(x4),.x2(x5),.y1(l4),.y2(l5),.s(sf)); 
crbar2 c3( .x1(x6),.x2(x7),.y1(l6),.y2(l7),.s(sf)); 
crbar2 c4( .x1(x8),.x2(x9),.y1(l8),.y2(l9),.s(sf)); 
crbar2 c5( .x1(x10),.x2(x11),.y1(l10),.y2(l11),.s(sf)); 
crbar2 c6( .x1(x12),.x2(x13),.y1(l12),.y2(l13),.s(sf)); 
crbar2 c7(.x1(x14),.x2(x15),.y1(l14),.y2(l15),.s(sf)); 
benes8 b0(.x0(l0),.x1(l2),.x2(l4),.x3(l6),.x4(l8),.x5(l10),.x6(l12),.x7(l14),.y0(m0),.y1(m1),.y2(m2),.y3(m3),.y4(m4),.y5(m5),.y6(m6),.y7(m7),.s(s8)); 
benes8 b1(.x0(l1),.x1(l3),.x2(l5),.x3(l7),.x4(l9),.x5(l11),.x6(l13),.x7(l15),.y0(m8),.y1(m9),.y2(m10),.y3(m11),.y4(m12),.y5(m13),.y6(m14),.y7(m15),.s(s8)); 
//benes8 b0(.xin0(l0),.xin1(l2),.xin2(l4),.xin3(l6),.xin4(l8),.xin5(l10),.xin6(l12),.xin7(l14),.yin0(m0),.yin1(m1),.yin2(m2),.yin3(m3),.yin4(m4),.yin5(m5),.yin6(m6),.yin7(m7),.s(s8)); 
//benes8 b1(.xin0(l1),.xin1(l3),.xin2(l5),.xin3(l7),.xin4(l9),.xin5(l11),.xin6(l13),.xin7(l15),.yin0(m8),.yin1(m9),.yin2(m10),.yin3(m11),.yin4(m12),.yin5(m13),.yin6(m14),.yin7(m15),.s(s8)); 
crbar2 c8(.x1(m0),.x2(m8),.y1(y0),.y2(y1),.s(sl)); 
crbar2 c9(.x1(m1),.x2(m9),.y1(y2),.y2(y3),.s(sl)); 
crbar2 c10(.x1(m2),.x2(m10),.y1(y4),.y2(y5),.s(sl)); 
crbar2 c11(.x1(m3),.x2(m11),.y1(y6),.y2(y7),.s(sl)); 
crbar2 c12(.x1(m4),.x2(m12),.y1(y8),.y2(y9),.s(sl)); 
crbar2 c13(.x1(m5),.x2(m13),.y1(y10),.y2(y11),.s(sl)); 
crbar2 c14(.x1(m6),.x2(m14),.y1(y12),.y2(y13),.s(sl)); 
crbar2 c15(.x1(m7),.x2(m15),.y1(y14),.y2(y15),.s(sl));


//initial begin
assign sf=s[6];
assign s8=s[5:1];
assign sl=s[0];

//x0= xin1;
//x1= xin2;
//x2= xin3;
//x3= xin4;
//x4= xin5;
//x5= xin6;
//x6= xin7;
//x7= xin8;
//
//x8= xin9;
//x9= xin10;
//x10= xin11;
//x11= xin12;
//x12= xin13;
//x13= xin14;
//x14= xin15;
//x15= xin16;


//end


//assign yin1=y0;
//assign yin2= y1;
//assign yin3= y2;
//assign yin4= y3;
//assign yin5= y4;
//assign yin6= y5;
//assign yin7= y6;
//assign yin8= y7;
//
//assign yin9=y8;
//assign yin10= y9;
//assign yin11= y10;
//assign yin12= y11;
//assign yin13= y12;
//assign yin14= y13;
//assign yin15= y14;
//assign yin16= y15;




endmodule
