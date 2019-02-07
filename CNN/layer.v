`timescale 1ns / 1ps





module layer1#(
parameter Q= 15,
parameter N=32,
parameter E8=10
)
(
input clk,
input [E8-1:0] en,
input [N-1:0] x1,x2,x3,
input [N-1:0] w1,w2,w3


);



PE8 # (19,32) pe8_0(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_1(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_2(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_3(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_4(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_5(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_6(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_7(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_8(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_9(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_10(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_11(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_12(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_13(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_14(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_15(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_16(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_17(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_18(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_19(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_20(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_21(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_22(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);
 
 
PE8 # (19,32) pe8_23(
.clk(clk),.en(en),
.in1(x1),.in2(x2),.in3(x3),.in4(),.in5(x1),.in6(x2),.in7(x3),.in8(),
.in9(),.in10(),.in11(),.in12(),.in13(),.in14(),
.w1(w1),.w2(w2),.w3(w3),.w4(),.w5(w1),.w6(w2),.w7(w3),.w8(),
.w9(),.w10(),.w11(),.w12(),.w13(),.w14(), 
.out1(),.out2(o1),.out3(o2),.out4(),.out5(),.out6(),.out7()
);



endmodule


//////////////////////////////
module Test_layer1;

reg clk;
reg [9:0] en;
reg [31:0] in1,in2,in3;
reg[31:0] w1,w2,w3;

reg [31:0] RAMX [0:65025]; 
reg [31:0] RAMW [0:65025];



layer1 #(19,32) uut(

.clk(clk),
.en(en),
.x1(in1), .x2(in2), .x3(in3),
.w1(w1), .w2(w2), .w3(w3),
);

initial begin
	#1 clk=0;
	en=9'b011000000;
  $readmemh("data.dat", RAMX);
  $readmemh("w.dat",RAMW);
   
  end 
  
  always begin 
  integer i;
   for (i=0; i < 67025; i=i+3) begin
		#1 clk=~clk;	
		in1=RAMX[i]; in2=RAMX[i+1]; in3=RAMX[i+2]; 
		w1=RAMW[i]; w2=RAMW[i+1]; w3=RAMW[i+2]; 
              
  end
  end
  
  endmodule
