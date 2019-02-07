module PE8#(
parameter Q= 15,
parameter N=32,
parameter E=10

)
(

input [N-1:0] in1,in2,in3,in4,in5,in6,in7,in8,
//if they are used individually
input [N-1:0] in9,in10,in11,in12,in13,in14,

input [N-1:0] w1,w2,w3,w4,w5,w6,w7,w8,
//if they are used individually
input [N-1:0] w9,w10,w11,w12,w13,w14,

input [E-1:0] en,

output [N-1:0] out1,out2,out3,out4,out5,out6,out7

);

// Weights=1

reg w_dud= 32'b1;

reg [N-1:0] pe4_1_in1,pe4_1_in2,pe4_1_in3,pe4_1_in4,pe4_1_in5,pe4_1_in6;
reg [N-1:0] pe4_2_in1,pe4_2_in2,pe4_2_in3,pe4_2_in4,pe4_2_in5, pe4_2_in6;
reg [N-1:0] pe2_1_in1,pe2_1_in2;

reg [N-1:0] pe4_1_w1,pe4_1_w2,pe4_1_w3,pe4_1_w4,pe4_1_w5,pe4_1_w6;
reg [N-1:0] pe4_2_w1,pe4_2_w2,pe4_2_w3,pe4_2_w4,pe4_2_w5,pe4_2_w6;
reg [N-1:0] pe2_1_w1,pe2_1_w2;

wire [N-1:0] PE4_brdg1;
wire [N-1:0] PE4_brdg2;

reg [E-1:0] en_8;

reg [N-1:0] PE8_out;

// en[7] is for PE8

PE4 #(19,32,4) pe4_1 (

		.en(en_8[E-2:E-5]),
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
		
		.out(PE4_brdg1)
	); 
	
	PE4 #(19,32) pe4_2 (
		.en(en_8[E-6:E-9]),
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
		
		.out(PE4_brdg2)
	);
	
	
	PE2 #(19,32) pe2_1 (
	.en(en_8[E-10]),
	.in1(pe2_1_in1),
	.in2(pe2_1_in2),
	.w1(pe2_1_w1),
	.w2(pe2_1_w2),
	.out(PE8_out)
	);
	
		always @(en[E-1]) begin
		
			if (en[E-1]==1) begin
					
					// if PE4 is enable enable all PE2 blocks under it.
					en_8[E-2:0]= 9'b1;
					
					// Assign inputs and then weights/ will be controlled by switching control
					
					pe4_1_in1=in1;
					pe4_1_in2=in2;
					pe4_1_in3=in3;
					pe4_1_in4=in4;
					
					//Submit duds
					pe4_1_in5=w_dud;
					pe4_1_in6=w_dud;
					
					pe4_1_w1=w1;
					pe4_1_w2=w2;
					pe4_1_w3=w3;
					pe4_1_w4=w4;
					pe4_1_w5=w_dud;
					pe4_1_w6=w_dud;
					
					pe4_2_in1= in5;
					pe4_2_in2= in6;
					pe4_2_in3= in7;
					pe4_2_in4= in8;
					
					//Submit duds
					pe4_2_in5=w_dud;
					pe4_2_in6=w_dud;
					
					pe4_2_w1=w5;
					pe4_2_w2=w6;
					pe4_2_w3=w7;
					pe4_2_w4=w8;
					pe4_2_w5=w_dud;
					pe4_2_w6=w_dud;
					
					pe2_3_in1=PE2_brdg1;
					pe2_3_in2=PE2_brdg1;
					
					//submit duds
					pe2_1_w1= w_dud;
					pe2_1_w2= w_dud;

					
			end
			
			else begin
			
					// if PE4 is not being used as a whole but in parts
					en_8=en[E-2:0];
			
					// Assign inputs and then weights/ will be controlled by switching control
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
					
			end
			
	
	end
	
	assign out= PE4_out;
		
	endmodule 