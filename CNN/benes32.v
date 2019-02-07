`timescale 1ns / 1ps

module benes32#(	

//Parameterized values
	
	parameter Q = 15,
	parameter N = 32,
	parameter b32=9,
	parameter b16=7
	)(
	
	//output [N-1:0] y [31:0],
	//input [N-1:0] x [31:0],
	
input clk,

//output [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
//output [N-1:0] y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y31,
//
//input [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
//input [N-1:0] x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,

output reg [N-1:0] yin1,yin2,yin3,yin4,yin5,yin6,yin7,yin8,yin9,yin10,yin11,yin12,yin13,yin14,yin15,yin16,
output reg [N-1:0] yin17,yin18,yin19,yin20,yin21,yin22,yin23,yin24,yin25,yin26,yin27,yin28,yin29,yin30,yin31,yin32,

input [N-1:0] xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,xin13,xin14,xin15,
input [N-1:0] xin16,xin17,xin18,xin19,xin20,xin21,xin22,xin23,xin24,xin25,xin26,xin27,xin28,xin29,xin30,xin31,xin32,

input [b32-1:0] s

);

reg sf,sl;
reg [b16-1:0] s16;

//initial begin 
//sf=s[8];
//s16=s[7:1];
//sl=s[0];
//end 

wire [N-1:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
wire [N-1:0] y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y31;

reg [N-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
reg [N-1:0] x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31;

wire [N-1:0] l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15;
wire [N-1:0] l16,l17,l18,l19,l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l30,l31;
wire [N-1:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;
wire [N-1:0] m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31;

crbar2 c0(.x1(x0),.x2(x1),.y1(l0),.y2(l1),.s(sf)); 
crbar2 c1(.x1(x2),.x2(x3),.y1(l2),.y2(l3),.s(sf)); 
crbar2 c2(.x1(x4),.x2(x5),.y1(l4),.y2(l5),.s(sf)); 
crbar2 c3(.x1(x6),.x2(x7),.y1(l6),.y2(l7),.s(sf)); 
crbar2 c4(.x1(x8),.x2(x9),.y1(l8),.y2(l9),.s(sf)); 
crbar2 c5(.x1(x10),.x2(x11),.y1(l10),.y2(l11),.s(sf)); 
crbar2 c6(.x1(x12),.x2(x13),.y1(l12),.y2(l13),.s(sf)); 
crbar2 c7(.x1(x14),.x2(x15),.y1(l14),.y2(l15),.s(sf)); 
crbar2 c8(.x1(x16),.x2(x17),.y1(l16),.y2(l17),.s(sf)); 
crbar2 c9(.x1(x18),.x2(x19),.y1(l18),.y2(l19),.s(sf)); 
crbar2 c10(.x1(x20),.x2(x21),.y1(l20),.y2(l21),.s(sf)); 
crbar2 c11(.x1(x22),.x2(x23),.y1(l22),.y2(l23),.s(sf)); 
crbar2 c12(.x1(x24),.x2(x25),.y1(l24),.y2(l25),.s(sf)); 
crbar2 c13(.x1(x26),.x2(x27),.y1(l26),.y2(l27),.s(sf)); 
crbar2 c14(.x1(x28),.x2(x29),.y1(l28),.y2(l29),.s(sf)); 
crbar2 c15(.x1(x30),.x2(x31),.y1(l30),.y2(l31),.s(sf)); 
benes16 b0(.x0(l0),.x1(l2),.x2(l4),.x3(l6),.x4(l8),.x5(l10),.x6(l12),.x7(l14),.x8(l16),.x9(l18),.x10(l20),.x11(l22),.x12(l24),.x13(l26),.x14(l28),.x15(l30),.y0(m0),.y1(m1),.y2(m2),.y3(m3),.y4(m4),.y5(m5),.y6(m6),.y7(m7),.y8(m8),.y9(m9),.y10(m10),.y11(m11),.y12(m12),.y13(m13),.y14(m14),.y15(m15),.s(s16)); 
benes16 b1(.x0(l1),.x1(l3),.x2(l5),.x3(l7),.x4(l9),.x5(l11),.x6(l13),.x7(l15),.x8(l17),.x9(l19),.x10(l21),.x11(l23),.x12(l25),.x13(l27),.x14(l29),.x15(l31),.y0(m16),.y1(m17),.y2(m18),.y3(m19),.y4(m20),.y5(m21),.y6(m22),.y7(m23),.y8(m24),.y9(m25),.y10(m26),.y11(m27),.y12(m28),.y13(m29),.y14(m30),.y15(m31),.s(s16)); 
//benes16 b0(.xin1(l0),.xin2(l2),.xin3(l4),.xin4(l6),.xin5(l8),.xin6(l10),.xin7(l12),.xin8(l14),.xin9(l16),.xin10(l18),.xin11(l20),.xin12(l22),.xin13(l24),.xin14(l26),.xin15(l28),.xin16(l30),.yin1(m0),.yin2(m1),.yin3(m2),.yin4(m3),.yin5(m4),.yin6(m5),.yin7(m6),.yin8(m7),.yin9(m8),.yin10(m9),.yin11(m10),.yin12(m11),.yin13(m12),.yin14(m13),.yin15(m14),.yin16(m15),.s(s16)); 
//benes16 b1(.xin1(l1),.xin2(l3),.xin3(l5),.xin4(l7),.xin5(l9),.xin6(l11),.xin7(l13),.xin8(l15),.xin9(l17),.xin10(l19),.xin11(l21),.xin12(l23),.xin13(l25),.xin14(l27),.xin15(l29),.xin16(l31),.yin1(m16),.yin2(m17),.yin3(m18),.yin4(m19),.yin5(m20),.yin6(m21),.yin7(m22),.yin8(m23),.yin9(m24),.yin10(m25),.yin11(m26),.yin12(m27),.yin13(m28),.yin14(m29),.yin15(m30),.yin16(m31),.s(s16)); 
crbar2 c16(.x1(m0),.x2(m16),.y1(y0),.y2(y1),.s(sl)); 
crbar2 c17(.x1(m1),.x2(m17),.y1(y2),.y2(y3),.s(sl)); 
crbar2 c18(.x1(m2),.x2(m18),.y1(y4),.y2(y5),.s(sl)); 
crbar2 c19(.x1(m3),.x2(m19),.y1(y6),.y2(y7),.s(sl)); 
crbar2 c20(.x1(m4),.x2(m20),.y1(y8),.y2(y9),.s(sl)); 
crbar2 c21(.x1(m5),.x2(m21),.y1(y10),.y2(y11),.s(sl)); 
crbar2 c22(.x1(m6),.x2(m22),.y1(y12),.y2(y13),.s(sl)); 
crbar2 c23(.x1(m7),.x2(m23),.y1(y14),.y2(y15),.s(sl)); 
crbar2 c24(.x1(m8),.x2(m24),.y1(y16),.y2(y17),.s(sl)); 
crbar2 c25(.x1(m9),.x2(m25),.y1(y18),.y2(y19),.s(sl)); 
crbar2 c26(.x1(m10),.x2(m26),.y1(y20),.y2(y21),.s(sl)); 
crbar2 c27(.x1(m11),.x2(m27),.y1(y22),.y2(y23),.s(sl)); 
crbar2 c28(.x1(m12),.x2(m28),.y1(y24),.y2(y25),.s(sl)); 
crbar2 c29(.x1(m13),.x2(m29),.y1(y26),.y2(y27),.s(sl)); 
crbar2 c30(.x1(m14),.x2(m30),.y1(y28),.y2(y29),.s(sl)); 
crbar2 c31(.x1(m15),.x2(m31),.y1(y30),.y2(y31),.s(sl)); 



always @ (posedge clk) begin

sf=s[8];
s16=s[7:1];
sl=s[0];


x0= xin1;
x1= xin2;
x2= xin3;
x3= xin4;
x4= xin5;
x5= xin6;
x6= xin7;
x7= xin8;

x8= xin9;
x9= xin10;
x10= xin11;
x11= xin12;
x12= xin13;
x13= xin14;
x14= xin15;
x15= xin16;

x16= xin17;
x17= xin18;
x18= xin19;
x19= xin20;
x20= xin21;
x21= xin22;
x22= xin23;
x23= xin24;

x24= xin25;
x25= xin26;
x26= xin27;
x27= xin28;
x28= xin29;
x29= xin30;
x30= xin31;
x31= xin32;



yin1=y0;
yin2= y1;
yin3= y2;
yin4= y3;
yin5= y4;
yin6= y5;
yin7= y6;
yin8= y7;
yin9=y8;
yin10= y9;
yin11= y10;
yin12= y11;
yin13= y12;
yin14= y13;
yin15= y14;
yin16= y15;


 yin17=y16;
 yin18= y17;
 yin19= y18;
 yin20= y19;
 yin21= y20;
 yin22= y21;
yin23= y22;
yin24= y23;

yin25=y24;
yin26= y25;
yin27= y26;
yin28= y27;
yin29= y28;
yin30= y29;
yin31= y30;
yin32= y31;

end


endmodule


