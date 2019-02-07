`timescale 1ns / 1ps

module engine_slice #(
parameter N
)(

input clk_sig
input [N-1:0] xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,
input [N-1:0] xin9,xin10,xin11,xin12,xin13,xin14,xin15,xin16,
input [N-1:0] xin17,xin18,xin19,xin20,xin21,xin22,xin23,xin24,
input [N-1:0] xin25,xin26,xin27,xin28,xin29,xin30,xin31,xin32

)

reg dud;
wire [N-1:0] dud = 32'b0;
reg [N-1:0] w_dud;//= 32'b1;

	initial begin 
	 w_dud=32'b0;
	 w_dud[Q+1]=1'b1;
	end

PE8 PE8_inst1
(
	.clk(clk_sig) ,	// input  clk_sig
	.in1(xin1) ,	// input [N-1:0] in1_sig
	.in2(xin2) ,	// input [N-1:0] in2_sig
	.in3(xin3) ,	// input [N-1:0] in3_sig
	.in4(xin4) ,	// input [N-1:0] in4_sig
	.in5(xin5) ,	// input [N-1:0] in5_sig
	.in6(xin6) ,	// input [N-1:0] in6_sig
	.in7(xin7) ,	// input [N-1:0] in7_sig
	.in8(xin8) ,	// input [N-1:0] in8_sig
	.in9() ,	// input [N-1:0] in9_sig
	.in10() ,	// input [N-1:0] in10_sig
	.in11() ,	// input [N-1:0] in11_sig
	.in12() ,	// input [N-1:0] in12_sig
	.in13() ,	// input [N-1:0] in13_sig
	.in14() ,	// input [N-1:0] in14_sig
	.w1(w1) ,	// input [N-1:0] w1_sig
	.w2(w2) ,	// input [N-1:0] w2_sig
	.w3(w3) ,	// input [N-1:0] w3_sig
	.w4(w4) ,	// input [N-1:0] w4_sig
	.w5(w5) ,	// input [N-1:0] w5_sig
	.w6(w6) ,	// input [N-1:0] w6_sig
	.w7(w7) ,	// input [N-1:0] w7_sig
	.w8(w8) ,	// input [N-1:0] w8_sig
	.w9() ,	// input [N-1:0] w9_sig
	.w10() ,	// input [N-1:0] w10_sig
	.w11() ,	// input [N-1:0] w11_sig
	.w12() ,	// input [N-1:0] w12_sig
	.w13() ,	// input [N-1:0] w13_sig
	.w14() ,	// input [N-1:0] w14_sig
	
	.en(en_sig) ,	// input [E8-1:0] en_sig
	.out(o_1_0) ,	// output [N-1:0] out_sig
	.out1(o_1_1) ,	// output [N-1:0] out1_sig
	.out2(o_1_2) ,	// output [N-1:0] out2_sig
	.out3(o_1_3) ,	// output [N-1:0] out3_sig
	.out4(o_1_4) ,	// output [N-1:0] out4_sig
	.out5(o_1_5) ,	// output [N-1:0] out5_sig
	.out6(o_1_6) 	// output [N-1:0] out6_sig
);

defparam PE8_inst.Q = 15;
defparam PE8_inst.N = 32;
defparam PE8_inst.E8 = 10;
defparam PE8_inst.E4 = 4;

PE8 PE8_inst2
(
	.clk(clk_sig) ,	// input  clk_sig
	.in1(xin9) ,	// input [N-1:0] in1_sig
	.in2(xin10) ,	// input [N-1:0] in2_sig
	.in3(xin11) ,	// input [N-1:0] in3_sig
	.in4(xin12) ,	// input [N-1:0] in4_sig
	.in5(xin13) ,	// input [N-1:0] in5_sig
	.in6(xin14) ,	// input [N-1:0] in6_sig
	.in7(xin15) ,	// input [N-1:0] in7_sig
	.in8(xin16) ,	// input [N-1:0] in8_sig
	.in9() ,	// input [N-1:0] in9_sig
	.in10() ,	// input [N-1:0] in10_sig
	.in11() ,	// input [N-1:0] in11_sig
	.in12() ,	// input [N-1:0] in12_sig
	.in13() ,	// input [N-1:0] in13_sig
	.in14() ,	// input [N-1:0] in14_sig
	.w1(w9) ,	// input [N-1:0] w1_sig
	.w2(w10) ,	// input [N-1:0] w2_sig
	.w3(w11) ,	// input [N-1:0] w3_sig
	.w4(w12) ,	// input [N-1:0] w4_sig
	.w5(w13) ,	// input [N-1:0] w5_sig
	.w6(w14) ,	// input [N-1:0] w6_sig
	.w7(w15) ,	// input [N-1:0] w7_sig
	.w8(w16) ,	// input [N-1:0] w8_sig
	.w9() ,	// input [N-1:0] w9_sig
	.w10() ,	// input [N-1:0] w10_sig
	.w11() ,	// input [N-1:0] w11_sig
	.w12() ,	// input [N-1:0] w12_sig
	.w13() ,	// input [N-1:0] w13_sig
	.w14() ,	// input [N-1:0] w14_sig
	
	.en(en_sig) ,	// input [E8-1:0] en_sig
	.out(o_2_0) ,	// output [N-1:0] out_sig
	.out1(o_2_1) ,	// output [N-1:0] out1_sig
	.out2(o_2_2) ,	// output [N-1:0] out2_sig
	.out3(o_2_3) ,	// output [N-1:0] out3_sig
	.out4(o_2_4) ,	// output [N-1:0] out4_sig
	.out5(o_2_5) ,	// output [N-1:0] out5_sig
	.out6(o_2_6) 	// output [N-1:0] out6_sig
);

defparam PE8_inst.Q = 15;
defparam PE8_inst.N = 32;
defparam PE8_inst.E8 = 10;
defparam PE8_inst.E4 = 4;


PE8 PE8_inst3
(
	.clk(clk_sig) ,	// input  clk_sig
	.in1(xin17) ,	// input [N-1:0] in1_sig
	.in2(xin18) ,	// input [N-1:0] in2_sig
	.in3(xin19) ,	// input [N-1:0] in3_sig
	.in4(xin20) ,	// input [N-1:0] in4_sig
	.in5(xin21) ,	// input [N-1:0] in5_sig
	.in6(xin22) ,	// input [N-1:0] in6_sig
	.in7(xin23) ,	// input [N-1:0] in7_sig
	.in8(xin24) ,	// input [N-1:0] in8_sig
	.in9() ,	// input [N-1:0] in9_sig
	.in10() ,	// input [N-1:0] in10_sig
	.in11() ,	// input [N-1:0] in11_sig
	.in12() ,	// input [N-1:0] in12_sig
	.in13() ,	// input [N-1:0] in13_sig
	.in14() ,	// input [N-1:0] in14_sig
	.w1(w17) ,	// input [N-1:0] w1_sig
	.w2(w18) ,	// input [N-1:0] w2_sig
	.w3(w19) ,	// input [N-1:0] w3_sig
	.w4(w20) ,	// input [N-1:0] w4_sig
	.w5(w21) ,	// input [N-1:0] w5_sig
	.w6(w22) ,	// input [N-1:0] w6_sig
	.w7(w23) ,	// input [N-1:0] w7_sig
	.w8(w24) ,	// input [N-1:0] w8_sig
	.w9() ,	// input [N-1:0] w9_sig
	.w10() ,	// input [N-1:0] w10_sig
	.w11() ,	// input [N-1:0] w11_sig
	.w12() ,	// input [N-1:0] w12_sig
	.w13() ,	// input [N-1:0] w13_sig
	.w14() ,	// input [N-1:0] w14_sig
	
	.en(en_sig) ,	// input [E8-1:0] en_sig
	.out(o_3_0) ,	// output [N-1:0] out_sig
	.out1(o_3_1) ,	// output [N-1:0] out1_sig
	.out2(o_3_2) ,	// output [N-1:0] out2_sig
	.out3(o_3_4) ,	// output [N-1:0] out3_sig
	.out4(o_3_4) ,	// output [N-1:0] out4_sig
	.out5(o_3_5) ,	// output [N-1:0] out5_sig
	.out6(o_3_6) 	// output [N-1:0] out6_sig
);

defparam PE8_inst.Q = 15;
defparam PE8_inst.N = 32;
defparam PE8_inst.E8 = 10;
defparam PE8_inst.E4 = 4;

PE8 PE8_inst4
(
	.clk(clk_sig) ,	// input  clk_sig
	.in1(xin25) ,	// input [N-1:0] in1_sig
	.in2(xin26) ,	// input [N-1:0] in2_sig
	.in3(xin27) ,	// input [N-1:0] in3_sig
	.in4(xin28) ,	// input [N-1:0] in4_sig
	.in5(xin29) ,	// input [N-1:0] in5_sig
	.in6(xin30) ,	// input [N-1:0] in6_sig
	.in7(xin31) ,	// input [N-1:0] in7_sig
	.in8(xin32) ,	// input [N-1:0] in8_sig
	.in9() ,	// input [N-1:0] in9_sig
	.in10() ,	// input [N-1:0] in10_sig
	.in11() ,	// input [N-1:0] in11_sig
	.in12() ,	// input [N-1:0] in12_sig
	.in13() ,	// input [N-1:0] in13_sig
	.in14() ,	// input [N-1:0] in14_sig
	.w1(w25) ,	// input [N-1:0] w1_sig
	.w2(w26) ,	// input [N-1:0] w2_sig
	.w3(w27) ,	// input [N-1:0] w3_sig
	.w4(w28) ,	// input [N-1:0] w4_sig
	.w5(w29) ,	// input [N-1:0] w5_sig
	.w6(w30) ,	// input [N-1:0] w6_sig
	.w7(w31) ,	// input [N-1:0] w7_sig
	.w8(w32) ,	// input [N-1:0] w8_sig
	.w9() ,	// input [N-1:0] w9_sig
	.w10() ,	// input [N-1:0] w10_sig
	.w11() ,	// input [N-1:0] w11_sig
	.w12() ,	// input [N-1:0] w12_sig
	.w13() ,	// input [N-1:0] w13_sig
	.w14() ,	// input [N-1:0] w14_sig
	
	.en(en_sig) ,	// input [E8-1:0] en_sig
	.out(o_4_0) ,	// output [N-1:0] out_sig
	.out1(o_4_1) ,	// output [N-1:0] out1_sig
	.out2(o_4_2) ,	// output [N-1:0] out2_sig
	.out3(o_4_3) ,	// output [N-1:0] out3_sig
	.out4(o_4_4) ,	// output [N-1:0] out4_sig
	.out5(o_4_5) ,	// output [N-1:0] out5_sig
	.out6(o_4_6) 	// output [N-1:0] out6_sig
);

defparam PE8_inst.Q = 15;
defparam PE8_inst.N = 32;
defparam PE8_inst.E8 = 10;
defparam PE8_inst.E4 = 4;