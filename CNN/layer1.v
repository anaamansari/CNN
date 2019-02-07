`timescale 1ns / 1ps

module layer1#(
parameter Q= 15,
parameter N=32,
parameter E8=10,
parameter O=48
)
(
input clk,
input [E8-1:0] en,

input [N-1:0] xin1,xin2,xin3,xin4,
input [N-1:0] win1,win2,win3,win4,
output [N-1:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,
output  [N-1:0] out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,
output  [N-1:0] out25,out26,out27,out28,out29,out30,out31,out32,out33,out34,out35,out36,
output  [N-1:0] out37,out38,out39,out40,out41,out42,out43,out44,out45,out46,out47,out48
);

reg [N-1:0] x1, x2, x3,x4;
reg [N-1:0] w1, w2,w3,w4;
wire [N-1:0] dud = 32'b0;
reg [8:0] s1;

wire [N-1:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12;
wire  [N-1:0] o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24;
wire [N-1:0] o25,o26,o27,o28,o29,o30,o31,o32,o33,o34,o35,o36;
wire  [N-1:0] o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47,o48;


wire [N-1:0] xo1,wo1;
wire [N-1:0] xo2,wo2;
wire [N-1:0] xo3,wo3;
wire [N-1:0] xo4,wo4;



benes32 benes32_inputs
(
	.clk(clk) ,	// input  clk_sig
	.yin1(xo1) ,	// output [N-1:0] yin1_sig
	.yin2(xo2) ,	// output [N-1:0] yin2_sig
	.yin3(xo3) ,	// output [N-1:0] yin3_sig
	.yin4(xo4) ,	// output [N-1:0] yin4_sig
	.yin5(yin5_sig) ,	// output [N-1:0] yin5_sig
	.yin6(yin6_sig) ,	// output [N-1:0] yin6_sig
	.yin7(yin7_sig) ,	// output [N-1:0] yin7_sig
	.yin8(yin8_sig) ,	// output [N-1:0] yin8_sig
	.yin9(yin9_sig) ,	// output [N-1:0] yin9_sig
	.yin10(yin10_sig) ,	// output [N-1:0] yin10_sig
	.yin11(yin11_sig) ,	// output [N-1:0] yin11_sig
	.yin12(yin12_sig) ,	// output [N-1:0] yin12_sig
	.yin13(yin13_sig) ,	// output [N-1:0] yin13_sig
	.yin14(yin14_sig) ,	// output [N-1:0] yin14_sig
	.yin15(yin15_sig) ,	// output [N-1:0] yin15_sig
	.yin16(yin16_sig) ,	// output [N-1:0] yin16_sig
	.yin17(yin17_sig) ,	// output [N-1:0] yin17_sig
	.yin18(yin18_sig) ,	// output [N-1:0] yin18_sig
	.yin19(yin19_sig) ,	// output [N-1:0] yin19_sig
	.yin20(yin20_sig) ,	// output [N-1:0] yin20_sig
	.yin21(yin21_sig) ,	// output [N-1:0] yin21_sig
	.yin22(yin22_sig) ,	// output [N-1:0] yin22_sig
	.yin23(yin23_sig) ,	// output [N-1:0] yin23_sig
	.yin24(yin24_sig) ,	// output [N-1:0] yin24_sig
	.yin25(yin25_sig) ,	// output [N-1:0] yin25_sig
	.yin26(yin26_sig) ,	// output [N-1:0] yin26_sig
	.yin27(yin27_sig) ,	// output [N-1:0] yin27_sig
	.yin28(yin28_sig) ,	// output [N-1:0] yin28_sig
	.yin29(yin29_sig) ,	// output [N-1:0] yin29_sig
	.yin30(yin30_sig) ,	// output [N-1:0] yin30_sig
	.yin31(yin31_sig) ,	// output [N-1:0] yin31_sig
	.yin32(yin32_sig) ,	// output [N-1:0] yin32_sig
	.xin1(x1) ,	// input [N-1:0] xin1_sig
	.xin2(x2) ,	// input [N-1:0] xin2_sig
	.xin3(x3) ,	// input [N-1:0] xin3_sig
	.xin4(x4) ,	// input [N-1:0] xin4_sig
	.xin5(xin5_sig) ,	// input [N-1:0] xin5_sig
	.xin6(xin6_sig) ,	// input [N-1:0] xin6_sig
	.xin7(xin7_sig) ,	// input [N-1:0] xin7_sig
	.xin8(xin8_sig) ,	// input [N-1:0] xin8_sig
	.xin9(xin9_sig) ,	// input [N-1:0] xin9_sig
	.xin10(xin10_sig) ,	// input [N-1:0] xin10_sig
	.xin11(xin11_sig) ,	// input [N-1:0] xin11_sig
	.xin12(xin12_sig) ,	// input [N-1:0] xin12_sig
	.xin13(xin13_sig) ,	// input [N-1:0] xin13_sig
	.xin14(xin14_sig) ,	// input [N-1:0] xin14_sig
	.xin15(xin15_sig) ,	// input [N-1:0] xin15_sig
	.xin16(xin16_sig) ,	// input [N-1:0] xin16_sig
	.xin17(xin17_sig) ,	// input [N-1:0] xin17_sig
	.xin18(xin18_sig) ,	// input [N-1:0] xin18_sig
	.xin19(xin19_sig) ,	// input [N-1:0] xin19_sig
	.xin20(xin20_sig) ,	// input [N-1:0] xin20_sig
	.xin21(xin21_sig) ,	// input [N-1:0] xin21_sig
	.xin22(xin22_sig) ,	// input [N-1:0] xin22_sig
	.xin23(xin23_sig) ,	// input [N-1:0] xin23_sig
	.xin24(xin24_sig) ,	// input [N-1:0] xin24_sig
	.xin25(xin25_sig) ,	// input [N-1:0] xin25_sig
	.xin26(xin26_sig) ,	// input [N-1:0] xin26_sig
	.xin27(xin27_sig) ,	// input [N-1:0] xin27_sig
	.xin28(xin28_sig) ,	// input [N-1:0] xin28_sig
	.xin29(xin29_sig) ,	// input [N-1:0] xin29_sig
	.xin30(xin30_sig) ,	// input [N-1:0] xin30_sig
	.xin31(xin31_sig) ,	// input [N-1:0] xin31_sig
	.xin32(xin32_sig) ,	// input [N-1:0] xin32_sig
	.s(s1) 	// input [b32-1:0] s_sig
);

defparam benes32_inputs.Q = 15;
defparam benes32_inputs.N = 32;
defparam benes32_inputs.b32 = 9;
defparam benes32_inputs.b16 = 7;


benes32 benes32_weights
(
	.clk(clk) ,	// input  clk_sig
	.yin1(wo1) ,	// output [N-1:0] yin1_sig
	.yin2(wo2) ,	// output [N-1:0] yin2_sig
	.yin3(wo3) ,	// output [N-1:0] yin3_sig
	.yin4(wo4) ,	// output [N-1:0] yin4_sig
	.yin5(yin5_sig) ,	// output [N-1:0] yin5_sig
	.yin6(yin6_sig) ,	// output [N-1:0] yin6_sig
	.yin7(yin7_sig) ,	// output [N-1:0] yin7_sig
	.yin8(yin8_sig) ,	// output [N-1:0] yin8_sig
	.yin9(yin9_sig) ,	// output [N-1:0] yin9_sig
	.yin10(yin10_sig) ,	// output [N-1:0] yin10_sig
	.yin11(yin11_sig) ,	// output [N-1:0] yin11_sig
	.yin12(yin12_sig) ,	// output [N-1:0] yin12_sig
	.yin13(yin13_sig) ,	// output [N-1:0] yin13_sig
	.yin14(yin14_sig) ,	// output [N-1:0] yin14_sig
	.yin15(yin15_sig) ,	// output [N-1:0] yin15_sig
	.yin16(yin16_sig) ,	// output [N-1:0] yin16_sig
	.yin17(yin17_sig) ,	// output [N-1:0] yin17_sig
	.yin18(yin18_sig) ,	// output [N-1:0] yin18_sig
	.yin19(yin19_sig) ,	// output [N-1:0] yin19_sig
	.yin20(yin20_sig) ,	// output [N-1:0] yin20_sig
	.yin21(yin21_sig) ,	// output [N-1:0] yin21_sig
	.yin22(yin22_sig) ,	// output [N-1:0] yin22_sig
	.yin23(yin23_sig) ,	// output [N-1:0] yin23_sig
	.yin24(yin24_sig) ,	// output [N-1:0] yin24_sig
	.yin25(yin25_sig) ,	// output [N-1:0] yin25_sig
	.yin26(yin26_sig) ,	// output [N-1:0] yin26_sig
	.yin27(yin27_sig) ,	// output [N-1:0] yin27_sig
	.yin28(yin28_sig) ,	// output [N-1:0] yin28_sig
	.yin29(yin29_sig) ,	// output [N-1:0] yin29_sig
	.yin30(yin30_sig) ,	// output [N-1:0] yin30_sig
	.yin31(yin31_sig) ,	// output [N-1:0] yin31_sig
	.yin32(yin32_sig) ,	// output [N-1:0] yin32_sig
	.xin1(w1) ,	// input [N-1:0] xin1_sig
	.xin2(w2) ,	// input [N-1:0] xin2_sig
	.xin3(w3) ,	// input [N-1:0] xin3_sig
	.xin4(w4) ,	// input [N-1:0] xin4_sig
	.xin5(xin5_sig) ,	// input [N-1:0] xin5_sig
	.xin6(xin6_sig) ,	// input [N-1:0] xin6_sig
	.xin7(xin7_sig) ,	// input [N-1:0] xin7_sig
	.xin8(xin8_sig) ,	// input [N-1:0] xin8_sig
	.xin9(xin9_sig) ,	// input [N-1:0] xin9_sig
	.xin10(xin10_sig) ,	// input [N-1:0] xin10_sig
	.xin11(xin11_sig) ,	// input [N-1:0] xin11_sig
	.xin12(xin12_sig) ,	// input [N-1:0] xin12_sig
	.xin13(xin13_sig) ,	// input [N-1:0] xin13_sig
	.xin14(xin14_sig) ,	// input [N-1:0] xin14_sig
	.xin15(xin15_sig) ,	// input [N-1:0] xin15_sig
	.xin16(xin16_sig) ,	// input [N-1:0] xin16_sig
	.xin17(xin17_sig) ,	// input [N-1:0] xin17_sig
	.xin18(xin18_sig) ,	// input [N-1:0] xin18_sig
	.xin19(xin19_sig) ,	// input [N-1:0] xin19_sig
	.xin20(xin20_sig) ,	// input [N-1:0] xin20_sig
	.xin21(xin21_sig) ,	// input [N-1:0] xin21_sig
	.xin22(xin22_sig) ,	// input [N-1:0] xin22_sig
	.xin23(xin23_sig) ,	// input [N-1:0] xin23_sig
	.xin24(xin24_sig) ,	// input [N-1:0] xin24_sig
	.xin25(xin25_sig) ,	// input [N-1:0] xin25_sig
	.xin26(xin26_sig) ,	// input [N-1:0] xin26_sig
	.xin27(xin27_sig) ,	// input [N-1:0] xin27_sig
	.xin28(xin28_sig) ,	// input [N-1:0] xin28_sig
	.xin29(xin29_sig) ,	// input [N-1:0] xin29_sig
	.xin30(xin30_sig) ,	// input [N-1:0] xin30_sig
	.xin31(xin31_sig) ,	// input [N-1:0] xin31_sig
	.xin32(xin32_sig) ,	// input [N-1:0] xin32_sig
	.s(s1) 	// input [b32-1:0] s_sig
);

defparam benes32_weights.Q = 15;
defparam benes32_weights.N = 32;
defparam benes32_weights.b32 = 9;
defparam benes32_weights.b16 = 7;




PE8 # (19,32) pe8_0(
.clk(clk),.en(en),
.in1(xo1),.in2(xo2),.in3(xo3),.in4(dud),.in5(xo1),.in6(xo2),.in7(xo3),.in8(dud),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(wo1),.w2(wo2),.w3(wo3),.w4(dud),.w5(wo1),.w6(wo2),.w7(wo3),.w8(dud),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(),                                   
.out(),.out1(o1),.out2(o2),.out3(),.out4(),.out5(),.out6()
);
 
 
//PE8 # (19,32) pe8_1(
//.clk(clk),.en(en),                                                                                         
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o3),.out3(o4),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_2(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o5),.out3(o6),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_3(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o7),.out3(o8),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_4(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o9),.out3(o10),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_5(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o11),.out3(o12),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_6(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o13),.out3(o14),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_7(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o15),.out3(o16),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_8(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o17),.out3(o18),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_9(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o19),.out3(o20),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_10(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o21),.out3(o22),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_11(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o23),.out3(o24),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_12(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o25),.out3(o26),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_13(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o27),.out3(o28),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_14(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o29),.out3(o30),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_15(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o31),.out3(o32),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_16(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o33),.out3(o34),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_17(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o35),.out3(o36),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_18(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o37),.out3(o38),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_19(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o39),.out3(o40),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_20(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o41),.out3(o42),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_21(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o43),.out3(o44),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_22(
//.clk(clk),.en(en),
//.in1(x1),.in2(x2),.in3(x3),.in4(dud),.in5(x1),.in6(x2),.in7(x3),.in8(dud),
//.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
//.w1(w1),.w2(w2),.w3(w3),.w4(dud),.w5(w1),.w6(w2),.w7(w3),.w8(dud),
//.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
//.out1(),.out2(o45),.out3(o46),.out4(),.out5(),.out6(),.out7()
//);
// 
// 
//PE8 # (19,32) pe8_23(
//.clk(clk),.en(en),
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
 
 w1=win1;
 w2=win2;
 w3=win3;
 w4=win4;
 
 s1=9'b000000000;
 
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
module Test_layer1;

reg clk;
reg [9:0] en;
reg [31:0] in1,in2,in3;
reg[31:0] w1,w2,w3;

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


layer1 #(19,32) uut(

.clk(clk),
.en(en),
.xin1(in1), .xin2(in2), .xin3(in3),
.win1(w1), .win2(w2), .win3(w3),


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


time_counter t1 (

.clk(clk),
.rst(reset),
.stop(stop_clk),
.ticks(n_clk_cycles)

);

initial begin
	#1 clk=0;
	stop_clk=0;
	reset=1;
	#40 reset=0;
	en=10'b0111111110;
	i=0;
	//f0= $fopen("out.dat","w");
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/data.dat", RAMX);
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/w.dat",RAMW);
   
  end 
  
  always #10 clk=~clk;
  
  always @(posedge clk ) begin 
  
  // for (i=0; i < 65025; i=i+3) begin
	if (i<65025) begin 
		in1=RAMX[i]; in2=RAMX[i+1]; in3=RAMX[i+2]; 
		w1=RAMW[i]; w2=RAMW[i+1]; w3=RAMW[i+2]; 
			i=i+3;
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
		
           
  end else if (i>=65025)begin 
  
  //always @(posedge clk & i >=65025) begin
  
 in1=0; in2=0; in3=0; 
  w1=0; w2=0; w3=0; 
  
  //if(o1==0 & o2==0) begin
	#1 en=10'b0000000000;
	#1 stop_clk=1;
	end 
	
	end 
 //assign total_time= n_clk_cycles;
 
 
  
  endmodule
