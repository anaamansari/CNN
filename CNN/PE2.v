`timescale 1ns / 1ps
module PE2#(
parameter Q= 15,
parameter N=32
)
(

//Enable signal for PE2 1 bit
input  en,
input clk,

// 2 inputs
input [N-1:0] in1,
input [N-1:0] in2,

//3 weight vectors
input [N-1:0] w1,
input [N-1:0] w2,

// output file
output [N-1:0] out

);

reg [N-1:0] min1;
reg[N-1:0] min2;
reg[N-1:0] win1;
reg[N-1:0] win2;

wire   [N-1:0] add_brdg1;
wire [N-1:0] add_brdg2;

wire [N-1:0] add_out;

wire ov1;
wire ov2;



qmult #(19,32) m1 (
		.clk(clk),
		.i_multiplicand(min1), 
		.i_multiplier(win1), 
		.o_result(add_brdg1),
		.ovr(ov1)
	);
	
	qmult #(19,32) m2 (
		.clk(clk),
		.i_multiplicand(min2), 
		.i_multiplier(win2), 
		.o_result(add_brdg2),
		.ovr(ov2)
	);
	
	
	qadd #(19,32) a1 (
		.clk(clk),
		.a(add_brdg1), 
		.b(add_brdg2), 
		.c(add_out)
	);
	
	always @(posedge clk& en==1) begin
	min1= in1;
	min2= in2;
	win1= w1;
	win2= w2;
	
	end
	
	assign out=add_out;

	endmodule
	
	
//////////
module Test_PE2;
	
	reg clk_tb;
	reg en_tb;
	reg[31:0] in1_tb,in2_tb;
	reg[31:0] w1_tb, w2_tb;
	
	wire [31:0] out_tb;
	
	reg stop_tb , reset_tb ;
	wire [31:0] ticks_tb;

	wire [31:0] total_time;
	
	
	PE2#(19,32) uut(
	.clk(clk_tb),
	.en(en_tb),
	.in1(in1_tb),
	.in2(in2_tb),
	.w1(w1_tb),
	.w2(w2_tb),
	.out(out_tb)
	);
	
	
time_counter t2 (

.clk(clk_tb),
.rst(reset_tb),
.stop(stop_tb),
.ticks(ticks_tb)

);
 assign total_time= ticks_tb;
	
	always begin #10 clk_tb= ~clk_tb;
			#10 en_tb=~en_tb;
	end
	
	initial begin
		$monitor ("%b,%b,%b,%b,%b,%b,%b,%b", in1_tb, in2_tb,w1_tb,w2_tb, out_tb, clk_tb,en_tb,total_time);		//	Monitor the stuff we care about

// Initialize Inputs
		clk_tb=1'b0;
		stop_tb=0;
		reset_tb=1;
		#20 reset_tb=0;
		en_tb=1'b0;
 		in1_tb =  32'b00000000000110010010000111111011;	//pi = 3.141592
		in1_tb [31] = 0;
 		in2_tb =  32'b00000000000110010010000111111011;	//pi = 3.141592
		in2_tb [31] = 0;

		//	weights
		w1_tb[31:0] = 0;   //	i_multiplier sign
		w2_tb[31:0] = 0;

		// Wait 100 ns for global reset to finish
		#10;
		#10 w1_tb[0] = 1;		//	1.91E-6
				w2_tb[0]=1;	

  	end
	
	always @ (out_tb) begin

	stop_tb=1;

	end
	
	endmodule 

	