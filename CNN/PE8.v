`timescale 1ns / 1ps
module PE8#(
parameter Q=15,
parameter N=32,
parameter E8=10,
parameter E4=4

)
(
input clk,

input [N-1:0] in1,in2,in3,in4,in5,in6,in7,in8,
//if they are used individually
input [N-1:0] in9,in10,in11,in12,in13,in14,

input [N-1:0] w1,w2,w3,w4,w5,w6,w7,w8,
//if they are used individually
input [N-1:0] w9,w10,w11,w12,w13,w14,

input [E8-1:0] en,  // 9 enable lines 

output [N-1:0] out,  // main output out of the last PE2 or the entire PE8
output [N-1:0] out1,out2,out3,out4,out5,out6

);

// Weights=1

reg [N-1:0] w_dud;

reg [N-1:0] pe4_1_in1,pe4_1_in2,pe4_1_in3,pe4_1_in4,pe4_1_in5,pe4_1_in6;
reg [N-1:0] pe4_2_in1,pe4_2_in2,pe4_2_in3,pe4_2_in4,pe4_2_in5, pe4_2_in6;
reg [N-1:0] pe2_1_in1,pe2_1_in2;

reg [N-1:0] pe4_1_w1,pe4_1_w2,pe4_1_w3,pe4_1_w4,pe4_1_w5,pe4_1_w6;
reg [N-1:0] pe4_2_w1,pe4_2_w2,pe4_2_w3,pe4_2_w4,pe4_2_w5,pe4_2_w6;
reg [N-1:0] pe2_1_w1,pe2_1_w2;

wire [N-1:0] PE4_brdg1, PE4_1_PE2_1,PE4_1_PE2_2;
wire [N-1:0] PE4_brdg2, PE4_2_PE2_1,PE4_2_PE2_2;



reg [E8-1:0] en_8;
reg [E4-1:0] en_4_1, en_4_2;
reg en_2_1;

wire [N-1:0] PE8_out,min1,min2,mw1,mw2;

// en[7] is for PE8

PE4 #(19,32,4) pe4_1 (
		.clk(clk),
		.en(en_4_1),   //en_8[E-2:E-5]
		.in1(pe4_1_in1),
		.in2(pe4_1_in2),
		.in3(pe4_1_in3),
		.in4(pe4_1_in4),
		.in5(pe4_1_in5),
		.in6(pe4_1_in6),
		
		.w1(pe4_1_w1),
		.w2(pe4_1_w2), 
		.w3(pe4_1_w3),
		.w4(pe4_1_w4),
		.w5(pe4_1_w5),
		.w6(pe4_1_w6),
		
		.out(PE4_brdg1),  // out2
		.out1(PE4_1_PE2_1), //out4
		.out2(PE4_1_PE2_2) //out5
	); 
	
	PE4 #(19,32) pe4_2 (
		.clk(clk),
		.en(en_4_2), //en_8[E-6:E-9]
		.in1(pe4_2_in1),
		.in2(pe4_2_in2),
		.in3(pe4_2_in3),
		.in4(pe4_2_in4),
		.in5(pe4_2_in5),
		.in6(pe4_2_in6),
		
		.w1(pe4_2_w1),
		.w2(pe4_2_w2), 
		.w3(pe4_2_w3),
		.w4(pe4_2_w4),
		.w5(pe4_2_w5),
		.w6(pe4_2_w6),
		
		.out(PE4_brdg2), //out3
		.out1(PE4_2_PE2_1), //out6
		.out2(PE4_2_PE2_2) //out7
	);
	
	mux mux1
(
	.din_0(pe2_1_in1) ,	// input [31:0] din_0_sig
	.din_1(PE4_brdg1) ,	// input [31:0] din_1_sig
	.sel(en[E8-1]) ,	// input  sel_sig
	.mux_out(min1) 	// output [31:0] mux_out_sig
);
	
	
		mux mux2
(
	.din_0(pe2_1_in2) ,	// input [31:0] din_0_sig
	.din_1(PE4_brdg2) ,	// input [31:0] din_1_sig
	.sel(en[E8-1]) ,	// input  sel_sig
	.mux_out(min2) 	// output [31:0] mux_out_sig
);


	mux mux3
(
	.din_0(pe2_1_w1) ,	// input [31:0] din_0_sig
	.din_1(w_dud) ,	// input [31:0] din_1_sig
	.sel(en[E8-1]) ,	// input  sel_sig
	.mux_out(mw1) 	// output [31:0] mux_out_sig
);
	
	
		mux mux4
(
	.din_0(pe2_1_w2) ,	// input [31:0] din_0_sig
	.din_1(w_dud) ,	// input [31:0] din_1_sig
	.sel(en[E8-1]) ,	// input  sel_sig
	.mux_out(mw2) 	// output [31:0] mux_out_sig
);
	
	
	
	PE2 #(19,32) pe2_1 (
	.clk(clk),
	.en(en_2_1), //en_8[E-10]
	.in1(min1),
	.in2(min2),
	.w1(mw1),
	.w2(mw2),
	.out(PE8_out)
	);
	
	initial begin 
	 w_dud=32'b0;
	 w_dud[Q+1]=1'b1;
	end 
	
		always @(negedge clk) begin
		
		if (en[E8-1]==1) begin
//					
					// if PE4 is enable enable all PE2 blocks under it.
					en_4_1= 4'b1111;
					en_4_2= 4'b1111;
					en_2_1=1'b1;
end else begin
	// if PE4 is not being used as a whole but in parts
					en_4_1= en[(E8-1)-6:(E8-1)-9];  //E[0] to E[3]
					en_4_2=en[(E8-1)-2:(E8-1)-5]; //E[4] to E[7]
					en_2_1=en[(E8-1) -1];  // E[8]
		end 
					
					// Assign inputs and then weights/ will be controlled by switching control
					
//					pe4_1_in1=in1;
//					pe4_1_in2=in2;
//					pe4_1_in3=in3;
//					pe4_1_in4=in4;
//					
//					//Submit duds
//					pe4_1_in5=w_dud;
//					pe4_1_in6=w_dud;
//					
//					pe4_1_w1=w1;
//					pe4_1_w2=w2;
//					pe4_1_w3=w3;
//					pe4_1_w4=w4;
//					
//					pe4_1_w5=w_dud;
//					pe4_1_w6=w_dud;
//					
//					pe4_2_in1= in5;
//					pe4_2_in2= in6;
//					pe4_2_in3= in7;
//					pe4_2_in4= in8;
//					
//					//Submit duds
//					pe4_2_in5=w_dud;
//					pe4_2_in6=w_dud;
//					
//					pe4_2_w1=w5;
//					pe4_2_w2=w6;
//					pe4_2_w3=w7;
//					pe4_2_w4=w8;
//					pe4_2_w5=w_dud;
//					pe4_2_w6=w_dud;
//					
//					pe2_1_in1=PE4_brdg1;
//					pe2_1_in2=PE4_brdg1;
//					
//					//submit duds
//					pe2_1_w1= w_dud;
//					pe2_1_w2= w_dud;

					
//			end
//			
//			else begin
//			
//					// if PE4 is not being used as a whole but in parts
//					en_4_1= en[(E8-1)-6:(E8-1)-9];  //E[0] to E[3]
//					en_4_2=en[(E8-1)-2:(E8-1)-5]; //E[4] to E[7]
//					en_2_1=en[(E8-1) -1];  // E[8]
//			
//					// Assign inputs and then weights/ will be controlled by switching control
					pe4_1_in1=in1;
					pe4_1_in2=in2;
					pe4_1_in3=in3;
					pe4_1_in4=in4;
					
					pe4_1_in5=in9;
					pe4_1_in6=in10;
					
					pe4_1_w1=w1;
					pe4_1_w2=w2;
					pe4_1_w3=w3;
					pe4_1_w4=w4;
					
					pe4_1_w5=w9;
					pe4_1_w6=w10;
					
					pe4_2_in1= in5;
					pe4_2_in2= in6;
					pe4_2_in3= in7;
					pe4_2_in4= in8;
					
					pe4_2_in5=in11;
					pe4_2_in6=in12;
					
					pe4_2_w1=w5;
					pe4_2_w2=w6;
					pe4_2_w3=w7;
					pe4_2_w4=w8;
					
					pe4_2_w5=w11;
					pe4_2_w6=w12;
					
					pe2_1_in1=in13;
					pe2_1_in2=in14;
					
					pe2_1_w1= w13;
					pe2_1_w2= w14;
//					
//			end
			
	
	end
	
	assign out= PE8_out;
	assign out1= PE4_brdg1;
	assign out2= PE4_brdg2;
	
	assign out3=PE4_1_PE2_1;
	assign out4=PE4_1_PE2_2;
	assign out5=PE4_2_PE2_1;
	assign out6=PE4_2_PE2_2;
	
	
		
	endmodule 
	
	
	
		//////////
module Test_PE8;
	
	reg clk;
	reg [9:0] en;
	reg[31:0] input1,input2, input3,input4,input5,input6,input7,input8;
	reg[31:0] input9,input10,input11,input12,input13,input14;
	reg[31:0] win1, win2,win3,win4,win5,win6,win7,win8;
	reg[31:0] win9,win10,win11,win12,win13,win14;
	
	wire [31:0] o1,o2,o3,o4,o5,o6,o;
	
	reg stop_tb , reset_tb ;
	wire [31:0] ticks_tb;

	wire [31:0] total_time;
	
	
	PE8#(19,32) uut(
	.clk(clk),
	.en(en),
	.in1(input1),
	.in2(input2),
	.in3(input3),
	.in4(input4),
	.in5(input5),
	.in6(input6),
	.in7(input7),
	.in8(input8),
	.in9(input9),
	.in10(input10),
	.in11(input11),
	.in12(input12),
	.in13(input13),
	.in14(input14),
	
	.w1(win1),
	.w2(win2),
	.w3(win3),
	.w4(win4),
	.w5(win5),
	.w6(win6),
	.w7(win7),
	.w8(win8),
	.w9(win9),
	.w10(win10),
	.w11(win11),
	.w12(win12),
	.w13(win13),
	.w14(win14),
	
	
	
	.out(o),
	.out1(o1),
	.out2(o2),
	.out3(o3),
	.out4(o4),
	.out5(o5),
	.out6(o6)
	
	);
	
			time_counter t2 (

	.clk(clk),
	.rst(reset_tb),
	.stop(stop_tb),
	.ticks(ticks_tb)

);
	
	always begin #1 clk= ~clk;
		//	#1 en=~en;
	end
	
	initial begin
		$monitor ("%b,%b,%b,%b,%b,%b,%b %b,%b,%b,%b, %b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b, %b,%b,%b,%b,%b,%b,%b,%b,%b, ", 
		input1, input2,input3,input4,input5,input6,input7,input8,input9,input10,input11,input12,input13,input14,
		win1,win2,win3,win4,win5,win6,win7,win8,win9,win10,win11,win12,win13,win14,
		o1,o2,o3,o4,o5,o6,o,clk,en);		//	Monitor the stuff we care about

		clk=1'b0;
		en=10'b1000000000;
	 	stop_tb=0;
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
 		input7 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input7 [31] = 0;
		input8 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input8 [31] = 0;
		input9 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input9 [31] = 0;
		input10 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input10 [31] = 0;
		input11 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input11 [31] = 0;
		input12 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input12[31] = 0;
		input13 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input13 [31] = 0;
		input14 =  32'b00000000000110010010000111111011;	//pi = 3.141592
		input14 [31] = 0;
		
		//	weights
		win1[31:0] = 0;   //	i_multiplier sign
		win2 [31:0]= 0;
		win3 [31:0]= 0;   //	i_multiplier sign
		win4 [31:0]= 0;
		win5 [31:0]= 0;
		win6 [31:0]= 0;
		
		win7[31:0] = 0;   //	i_multiplier sign
		win8 [31:0]= 0;
		win9 [31:0]= 0;   //	i_multiplier sign
		win10 [31:0]= 0;
		win11 [31:0]= 0;
		win12 [31:0]= 0;

		win13 [31:0]= 0;
		win14 [31:0]= 0;
		
		// Wait 100 ns for global reset to finish
		#10;
		win1[31:0] = 32'b00000000000010000000000000000000;   //	i_multiplier sign
		win2 [31:0]= 32'b00000000000010000000000000000000;
		win3 [31:0]= 32'b00000000000010000000000000000000;   //	i_multiplier sign
		win4 [31:0]= 32'b00000000000010000000000000000000;
		win5 [31:0]= 32'b00000000001010000000000000000000;
		win6 [31:0]= 32'b00000000001010000000000000000000;
		
		win7[31:0] = 32'b00000000000010000000000000000000;   //	i_multiplier sign
		win8 [31:0]= 32'b00000000000010000000000000000000;
		win9 [31:0]= 32'b00000000000010000000000000000000;   //	i_multiplier sign
		win10 [31:0]= 32'b00000000000010000000000000000000;
		win11 [31:0]= 32'b00000000001010000000000000000000;
		win12 [31:0]= 32'b00000000001010000000000000000000;

		win13 [31:0]= 32'b00000000000010000000000000000000;
		win14 [31:0]= 32'b00000000000010000000000000000000;
  	end
	
	always @(o) begin
	//stop=1;
		stop_tb=1;
	end
	

	endmodule 
	