`timescale 1ns / 1ps

module layer5#(
parameter Q= 15,
parameter N=32,
parameter E8=10,

parameter O=48
)
(
input clk,
input [E8-1:0] en_8_1,en_8_2,en_8_3,
input [N-1:0] xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,
input [N-1:0] xin13,xin14,xin15,xin16,//xin17,xin18,xin19,xin20,xin21,xin22,xin23,xin24,

input [N-1:0] win1,win2,win3,win4,win5,win6,win7,win8,win9,win10,win11,win12,
input [N-1:0] win13,win14,win15,win16,//win17,win18,win19,win20,win21,win22,win23,win24,

output [N-1:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,
output  [N-1:0] out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,
output  [N-1:0] out25,out26,out27,out28,out29,out30,out31,out32,out33,out34,out35,out36,
output  [N-1:0] out37,out38,out39,out40,out41,out42,out43,out44,out45,out46,out47,out48
);

reg [N-1:0] x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;
reg [N-1:0] x13,x14,x15,x16;//x17,x18,x19,x20,x21,x22,x23,x24;
reg [N-1:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
reg [N-1:0] w13,w14,w15,w16;//,w17,w18,w19,w20,w21,w22,w23,w24;
wire [N-1:0] dud = 32'b0;
reg [N-1:0] w_dud;//= 32'b1;

	initial begin 
	 w_dud=32'b0;
	 w_dud[Q+1]=1'b1;
	end 

wire [N-1:0] o_1_1,o_1_2,o_1_3,o_1_4,o_1_5,o_1_6,o_1_7,o_1_8,o_1_9,o_1_10,o_1_11,o_1_12;
wire [N-1:0] o_2_1;
wire [N-1:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12;
wire  [N-1:0] o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24;
wire [N-1:0] o25,o26,o27,o28,o29,o30,o31,o32,o33,o34,o35,o36;
wire  [N-1:0] o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47,o48;

PE8 # (19,32) pe8_0(
.clk(clk),.en(en_8_1),
.in1(x1),.in2(x2),.in3(x3),.in4(x4),.in5(x5),.in6(x6),.in7(x7),.in8(x8),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(w4),.w5(w5),.w6(w6),.w7(w7),.w8(w8),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out(o_1_1),.out1(),.out2(),.out3(),.out4(),.out5(),.out6()
);
 
 
PE8 # (19,32) pe8_1(
.clk(clk),.en(en_8_2),
.in1(x9),.in2(x10),.in3(x11),.in4(x12),.in5(x13),.in6(x14),.in7(x15),.in8(x16),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w9),.w2(w10),.w3(w11),.w4(w12),.w5(w13),.w6(w14),.w7(w15),.w8(w16),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out(o_2_1),.out1(),.out2(),.out3(),.out4(),.out5(),.out6()
);
 
 
PE8 # (19,32) pe8_2(
.clk(clk),.en(en_8_3),
.in1(),.in2(),.in3(),.in4(),.in5(),.in6(),.in7(),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(o_1_1),.in14(o_2_1),
.w1(),.w2(),.w3(),.w4(),.w5(),.w6(),.w7(),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(w_dud),.w14(w_dud), 
.out(o1),.out1(),.out2(),.out3(),.out4(),.out5(),.out6()
);
// 
// 
//PE8 # (19,32) pe8_3(
//.clk(clk),.en(en_8_2),
//.in1(o1),.in2(o2),.in3(o3),.in4(dud),.in5(),.in6(),.in7(),.in8(),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w_dud),.w2(w_dud),.w3(w_dud),.w4(w_dud),.w5(),.w6(),.w7(),.w8(),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o4),.out3(),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_4(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o9),.out3(o10),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_5(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o11),.out3(o12),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_6(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o13),.out3(o14),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_7(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o15),.out3(o16),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_8(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o17),.out3(o18),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_9(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o19),.out3(o20),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_10(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o21),.out3(o22),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_11(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o23),.out3(o24),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_12(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o25),.out3(o26),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_13(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o27),.out3(o28),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_14(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o29),.out3(o30),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_15(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o31),.out3(o32),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_16(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o33),.out3(o34),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_17(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o35),.out3(o36),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_18(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o37),.out3(o38),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_19(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o39),.out3(o40),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_20(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o41),.out3(o42),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_21(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o43),.out3(o44),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_22(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o45),.out3(o46),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_23(
//.clk(clk),.en_8(en_8),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o47),.out3(o48),.out4(),.out5(),.out6(),.out7()
//);
 
 always @(negedge clk) begin
 x1=xin1;
 x2=xin2;
 x3=xin3;
 x4=xin4;
 x5=xin5;
 x6=xin6;
 x7=xin7;
 x8=xin8;
 x9=xin9;
 x10=xin10;
 x11=xin11;
 x12=xin12;
 x13=xin13;
 x14=xin14;
 x15=xin15;
 x16=xin16;
// x17=xin17;
// x18=xin18;
// x19=xin19;
// x20=xin20;
// x21=xin21;
// x22=xin22;
// x23=xin23;
// x24=xin24;
 
 w1=win1;
 w2=win2;
 w3=win3;
 w4=win4;
 w5=win5;
 w6=win6;
 w7=win7;
 w8=win8;
 w9=win9;
 w10=win10;
 w11=win11;
 w12=win12;
 w13=win13;
 w14=win14;
 w15=win15;
 w16=win16;
// w17=win17;
// w18=win18;
// w19=win19;
// w20=win20;
// w21=win21;
// w22=win22;
// w23=win23;
// w24=win24;
 
 end
 
assign out1 = o1; assign out2 = o2;
assign out3 = o3; assign out4 = o4;
assign out5 = o5; assign out6 = o6;
assign out7 = o7; assign out8 = o8;
assign out9 = o9; assign out10 = o10;
assign out11 = o11; assign out12 = o12;
assign out13 = o13; assign out14 = o14;
assign out15 = o15; assign out16 = o16;
assign out17 = o17; assign out18 = o18;
assign out19 = o19; assign out20 = o20;
assign out21 = o21; assign out22 = o22;
assign out23 = o23; assign out24 = o24;
assign out25 = o25; assign out26 = o26;
assign out27 = o27; assign out28 = o28;
assign out29 = o29; assign out30 = o30;
assign out31 = o31; assign out32 = o32;
assign out33 = o33; assign out34 = o34;
assign out35 = o35; assign out36 = o36;
assign out37 = o37; assign out38 = o38;
assign out39 = o39; assign out40 = o40;
assign out41 = o41; assign out42 = o42;
assign out43 = o43; assign out44 = o44;
assign out45 = o45; assign out46 = o46;
assign out47 = o47; assign out48 = o48;


endmodule





//////////////////////////////
module Test_layer5;

reg clk;
reg [9:0] en_81, en_82,en_83;
reg [31:0] in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12;
reg [31:0]  in13,in14,in15,in16;//in17,18,in19,in20,in21,in22,in23,in24;
reg[31:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
reg[31:0] w13,w14,w15,w16;//,w17,w18,w19,w20,w21,w22,w23,w24;

wire [31:0]  o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12;
wire [31:0]  o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24;
wire [31:0]  o25,o26,o27,o28,o29,o30,o31,o32,o33,o34,o35,o36;
wire [31:0] o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47,o48;

reg [31:0] RAMX [0:65025]; 
reg [31:0] RAMW [0:65025];

reg [31:0] OUT [0:47];

integer i,j;

reg stop_clk , reset ;
wire [31:0] n_clk_cycles;

reg [31:0] total_time;


layer5 #(19,32) uut(

.clk(clk),
.en_8_1(en_81),
.en_8_2(en_82),
.en_8_3(en_83),

.xin1(in1), .xin2(in2), .xin3(in3),
.xin4(in4), .xin5(in5), 

.xin6(in6),
.xin7(in7), .xin8(in8), .xin9(in9),
.xin10(in10), .xin11(in11), .xin12(in12),
.xin13(in13), .xin14(in14), .xin15(in15),
.xin16(in16), 
//.xin17(in17), .xin18(in18),
//.xin19(in19), .xin20(in20), .xin21(in21),
//.xin22(in22), .xin23(in23), .xin24(in24),


.win1(w1), .win2(w2), .win3(w3),
.win4(w4), .win5(w5), 
.win6(w6),
.win7(w7), .win8(w8), .win9(w9),
.win10(w10), .win11(w11), .win12(w12),
.win13(w13), .win14(w14), .win15(w15),
.win16(w16),
// .win17(w17), .win18(w18),
//.win19(w19), .win20(w20), .win21(w21),
//.win22(w22), .win23(w23), .win24(w24),

.out1( o1),.out2( o2),
.out3( o3),.out4( o4),
.out5( o5),.out6( o6),
.out7( o7),.out8( o8),
.out9( o9),.out10( o10),
.out11( o11),.out12( o12),
.out13( o13),.out14( o14),
.out15( o15),.out16( o16),
.out17( o17),.out18( o18),
.out19( o19),.out20( o20),
.out21( o21),.out22( o22),
.out23( o23),.out24( o24),
.out25( o25),.out26( o26),
.out27( o27),.out28( o28),
.out29( o29),.out30( o30),
.out31( o31),.out32( o32),
.out33( o33),.out34( o34),
.out35( o35),.out36( o36),
.out37( o37),.out38( o38),
.out39( o39),.out40( o40),
.out41( o41),.out42( o42),
.out43( o43),.out44( o44),
.out45( o45),.out46( o46),
.out47( o47),.out48( o48) 
);


time_counter t3 (

.clk(clk),
.rst(reset),
.stop(stop_clk),
.ticks(n_clk_cycles)

);


initial begin
	#1 clk=0;
	stop_clk=0;
	reset=1;
	#10 reset=0;
	en_81=10'b1111111110;
	en_82=10'b1111111111;
	en_83=10'b0111111111;
	i=0;
	
	//f0= $fopen_8("out.dat","w");
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/data.dat", RAMX);
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/w.dat",RAMW);
   
  end
  
  
  always #10 clk=~clk;
  
  always @(posedge clk ) begin 

  if (i<65025) begin
  
   //for (i=0; i < 65025; i=i+3) begin
		//#10clk=~clk;
		//#10clk=~clk;
		in1=RAMX[i]; in2=RAMX[i+1]; in3=RAMX[i+2];
		in4=RAMX[i+3]; in5=RAMX[i+4]; 
		in6=RAMX[i+5]; 	
		in7=RAMX[i+6]; in8=RAMX[i+7]; in9=RAMX[i+8]; 
		in10=RAMX[i+9]; in11=RAMX[i+10]; in12=RAMX[i+11];
		in13=RAMX[i+12]; in14=RAMX[i+13]; in15=RAMX[i+14]; 
		in16=RAMX[i+15]; 
		//in17=RAMX[i+16]; 
		//in18=RAMX[i+17]; 
//		in19=RAMX[i+18]; in20=RAMX[i+19]; in21=RAMX[i+20]; 
//		in22=RAMX[i+21]; in23=RAMX[i+22]; in24=RAMX[i+23]; 


	
		w1=RAMW[i]; w2=RAMW[i+1];w3=RAMW[i+2];
		w4=RAMW[i+3]; w5=RAMW[i+4];
		w6=RAMW[i+5]; 
		w7=RAMW[i+6]; w8=RAMW[i+7]; w9=RAMW[i+8]; 
		w10=RAMW[i+9]; w11=RAMW[i+10]; w12=RAMW[i+11];
		w13=RAMW[i+12]; w14=RAMW[i+13]; w15=RAMW[i+14]; 
		w16=RAMW[i+15];
		//w17=RAMW[i+16];
// w18=RAMW[i+17]; 
//		w19=RAMW[i+18]; w20=RAMW[i+19]; w21=RAMW[i+20]; 
//		w22=RAMW[i+21]; w23=RAMW[i+22]; w24=RAMW[i+23]; 


		i=i+16;
		
OUT[0]=o1;OUT[1]=o2;
OUT[2]=o3;OUT[3]=o4;
OUT[4]=o5;OUT[5]=o6;
OUT[6]=o7;OUT[7]=o8;
OUT[8]=o9;OUT[9]=o10;
OUT[10]=o11;OUT[11]=o12;
OUT[12]=o13;OUT[13]=o14;
OUT[14]=o15;OUT[15]=o16;
OUT[16]=o17;OUT[17]=o18;
OUT[18]=o19;OUT[19]=o20;
OUT[20]=o21;OUT[21]=o22;
OUT[22]=o23;OUT[23]=o24;
OUT[24]=o25;OUT[25]=o26;
OUT[26]=o27;OUT[27]=o28;
OUT[28]=o29;OUT[29]=o30;
OUT[30]=o31;OUT[31]=o32;
OUT[32]=o33;OUT[33]=o34;
OUT[34]=o35;OUT[35]=o36;
OUT[36]=o37;OUT[37]=o38;
OUT[38]=o39;OUT[39]=o40;
OUT[40]=o41;OUT[41]=o42;
OUT[42]=o43;OUT[43]=o44;
OUT[44]=o45;OUT[45]=o46;
OUT[46]=o47;OUT[47]=o48;
		
           
  end else if (i>=65025) begin
  
  
  //always @(posedge clk & i >=65025) begin
   	in1=0; in2=0; in3=0;
		in4=0; in5=0; 
//		in6=0; 
//		in7=0; in8=0; in9=0; 
//		in10=0; in11=0; in12=0;
//		in13=0; in14=0; in15=0; 
//		in16=0; in17=0; in18=0; 
//		in19=0; in20=0; in21=0; 
//		in22=0; in23=0; in24=0; 
//		
		w1=0; w2=0;w3=0;
		w4=0; w5=0;
//		w6=0; 
//		w7=0; w8=0; w9=0; 
//		w10=0; w11=0; w12=0;
//		w13=0; w14=0; w15=0; 
//		w16=0; w17=0; w18=0; 
//		w19=0; w20=0; w21=0; 
//		w22=0; w23=0; w24=0; 
//		
	  //if (o3==0) begin 
	 #1 en_81=10'b0000000000;
	en_82=10'b0000000000;
	en_83=10'b0000000000;
	 #1 stop_clk=1;
	 //assign total_time= n_clk_cycles;
	 
	  end
  end
  endmodule
