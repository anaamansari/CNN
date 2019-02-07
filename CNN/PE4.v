`timescale 1ns / 1ps
module PE4#(
parameter Q= 15,
parameter N=32,
parameter E=4   // 4 enable lines
)
(
input clk,

input [E-1:0] en,

input [N-1:0] in1,
input [N-1:0] in2,
input [N-1:0] in3,
input [N-1:0] in4,

// These are needed when used individually
input [N-1:0] in5,
input [N-1:0] in6,

input [N-1:0] w1,
input [N-1:0] w2,
input [N-1:0] w3,
input [N-1:0] w4,

// These are needed when used individually
input [N-1:0] w5,
input [N-1:0] w6,

// output of PE4 // output of PE2_1, PE2_2, PE2_3
output [N-1:0] out,  // Output of PE_4, PE_3

output [N-1:0] out1,  // output PE_1,
output [N-1:0] out2	 // output PE_2, 

);


reg [N-1:0] pe2_1_in1;
reg [N-1:0] pe2_1_in2;

reg [N-1:0] pe2_2_in1;
reg [N-1:0] pe2_2_in2;


//The top one out of which the output PE4 is 
// taken. 
reg [N-1:0] pe2_3_in1;
reg [N-1:0] pe2_3_in2;

reg [N-1:0] pe2_1_w1;
reg [N-1:0] pe2_1_w2;

reg [N-1:0] pe2_2_w1;
reg [N-1:0] pe2_2_w2;

reg [N-1:0] pe2_3_w1;
reg [N-1:0] pe2_3_w2;


reg [E-2:0] en_2;

reg [N-1:0]  w_dud;


wire [N-1:0] PE2_brdg1,min_1,min_2;
wire [N-1:0] PE2_brdg2,mw_1,mw_2;

wire [N-1:0] PE4_out;



PE2 #(19,32) pe2_1 (


		// EN[0] 
		.clk(clk),
		.en(en_2[E-4]), /// en_2[0]	
		.in1(pe2_1_in1),
		.in2(pe2_1_in2),
		.w1(pe2_1_w1),
		.w2(pe2_1_w2), 
		.out(PE2_brdg1)
	); 
	
	mux m1_in
(
	.din_0(pe2_3_in1) ,	// input  din_0_sig
	.din_1(PE2_brdg1) ,	// input  din_1_sig
	.sel(en[E-1]) ,	// input  sel_sig
	.mux_out(min_1) 	// output  mux_out_sig
);


	mux m1_w
(
	.din_0(pe2_3_w1) ,	// input  din_0_sig
	.din_1(w_dud) ,	// input  din_1_sig
	.sel(en[E-1]) ,	// input  sel_sig
	.mux_out(mw_1) 	// output  mux_out_sig
);
	
	PE2 #(19,32) pe2_2 (
	// EN[1]
	.clk(clk),
	.en(en_2[E-3]), // en_2[1]
	.in1(pe2_2_in1),
	.in2(pe2_2_in2),
	.w1(pe2_2_w1),
	.w2(pe2_2_w2),
	.out(PE2_brdg2)
	);
	
	
		mux m2_in
(
	.din_0(pe2_3_in2) ,	// input  din_0_sig
	.din_1(PE2_brdg2) ,	// input  din_1_sig
	.sel(en[E-1]) ,	// input  sel_sig
	.mux_out(min_2) 	// output  mux_out_sig
);


	mux m2_w
(
	.din_0(pe2_3_w2) ,	// input  din_0_sig
	.din_1(w_dud) ,	// input  din_1_sig
	.sel(en[E-1]) ,	// input  sel_sig
	.mux_out(mw_2) 	// output  mux_out_sig
);
	
	PE2 #(19,32) pe2_3 (
	//EN[2]
	.clk(clk),
	.en(en_2[E-2]), // en_2[2]
	.in1(min_1),
	.in2(min_2),
	.w1(mw_1),
	.w2(mw_2),
	.out(PE4_out)
	);
	
	initial begin 
	 w_dud=32'b0;
	 w_dud[Q+1]=1'b1;
	end 
	
		
	
		always @(posedge clk ) begin
		
		if (en[E-1]==1) begin   // en[3] 
					
					// if PE4 is enable enable all PE2 blocks under it.
				en_2<= 3'b111;
				end else begin
					en_2<=en[E-2:0];
					end 
					
					// Assign inputs and then weights/ will be controlled by switching control
					
					pe2_1_in1<= in1;
					pe2_1_in2<= in2;
					
					pe2_2_in1 <= in3;
					pe2_2_in2 <= in4;
					
					pe2_3_in1 <=in5;
					pe2_3_in2 <=in6;
					
					pe2_1_w1 <= w1;
					pe2_1_w2 <= w2;
					
					pe2_2_w1 <= w3;
					pe2_2_w2 <= w4;
					
					pe2_3_w1 <= w5;
					pe2_3_w2 <= w6;
					
//		end
//		
//		else begin
//			
//					// if PE4 is not being used as a whole but in parts
//					en_2<=en[E-2:0]; // en[2:0] 
//			
//					// Assign inputs and then weights/ will be controlled by switching control
//					pe2_1_in1<= in1;
//					pe2_1_in2<= in2;
//					
//					pe2_2_in1<= in3;
//					pe2_2_in2<= in4;
//					
//					pe2_3_in1<=in5;
//					pe2_3_in2<=in6;
//					
//					pe2_1_w1<= w1;
//					pe2_1_w2<= w2;
//					
//					pe2_2_w1<= w3;
//					pe2_2_w2<= w4;
//					
//					pe2_3_w1= w5;
//					pe2_3_w2= w6;
//					
//			end
			
			

	
	end
	
	assign out= PE4_out;
	assign out1= PE2_brdg1;
	assign out2= PE2_brdg2;
	
	endmodule 
	
	
	//////////
module Test_PE4;
	
	reg clk;
	reg [3:0] en;
	reg[31:0] input1,input2, input3,input4,input5,input6;
	reg[31:0] weight1, weight2,weight3,weight4,weight5,weight6;
	
	wire [31:0] o,o1,o2;
	
//	reg reset, stop;
//	wire [31:0] n_cycles;
//	wire [31:0] total_time;
	
	reg stop_tb , reset_tb ;
	wire [31:0] ticks_tb;

	wire [31:0] total_time;
	
	
//	time_counter t
//	(
//		.clk(clk),
//		.rst(reset),
//		.stop(stop),
//		.ticks(n_cycles)
//	);
	

	
	 assign total_time= ticks_tb;
	
	PE4#(19,32) uut(
	.clk(clk),
	.en(en),
	.in1(input1),
	.in2(input2),
	.in3(input3),
	.in4(input4),
	.in5(input5),
	.in6(input6),
	
	.w1(weight1),
	.w2(weight2),
	.w3(weight3),
	.w4(weight4),
	.w5(weight5),
	.w6(weight6),
	
	.out(o),
	.out1(o1),
	.out2(o2)
	);
	
		time_counter t2 (

	.clk(clk),
	.rst(reset_tb),
	.stop(stop_tb),
	.ticks(ticks_tb)

);
 assign total_time= ticks_tb;
	
	always begin #10 clk= ~clk;
		//	#1 en=~en;
	end
	
	initial begin
		$monitor ("%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b", input1, input2,input3,input4,input5,input6,
		weight1,weight2,weight3,weight4,weight5,weight6,o,o1,o2, clk,en,total_time);		//	Monitor the stuff we care about
// Initialse clock 
//    reset=1;
//	 stop=0;
//	 #10 reset=0;
		clk=1'b0;
	 	stop_tb=0;
		en=4'b1111;
		reset_tb=1;
		#40 reset_tb=0;
		
// Initialize Inputs
		
		
 		input1 =  32'b00000000000110010010000111111011;		//pi = 3.141592
		input1 [31] = 0;
 		input2 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input2 [31] = 0;
		input3 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input3 [31] = 0;
 		input4 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input4 [31] = 0;
		input5 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input5 [31] = 0;
 		input6 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input6 [31] = 0;

		//	weights
		weight1[31:0] = 0;   //	i_multiplier sign
		weight2 [31:0]= 0;
		weight3 [31:0]= 0;   //	i_multiplier sign
		weight4 [31:0]= 0;
		weight5 [31:0]= 0;
		weight6 [31:0]= 0;
		
		// Wait 100 ns for global reset to finish
		#10;
		weight1[31:0] = 32'b00000000000010000000000000000000;   //	i_multiplier sign
		weight2[31:0] = 32'b00000000000010000000000000000000;
		weight3[31:0] = 32'b00000000000010000000000000000000;   //	i_multiplier sign
		weight4[31:0] = 32'b00000000000010000000000000000000;
		weight5[31:0] = 32'b00000000001010000000000000000000;   //	i_multiplier sign
		weight6[31:0] = 32'b00000000001010000000000000000000;
  	end
	
	always @(o) begin
	//stop=1;
		stop_tb=1;
	end
	

	endmodule 
