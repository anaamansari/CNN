
`timescale 1ns / 1ps
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