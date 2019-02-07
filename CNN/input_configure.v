`timescale 1ns / 1ps
module input_configure # (

parameter I= 32,
parameter O= 32,

parameter N=32,
parameter Q=15,

parameter L1=4,
parameter L2=24,
parameter L3=6,
parameter L4=6,
parameter L5=16 
)

(
input configure,
input clk_sig, 

output reg [N-1:0] yin1_sig,yin17_sig, 
output reg  [N-1:0] yin2_sig,yin18_sig, 
output reg [N-1:0] yin3_sig,yin19_sig, 
output reg  [N-1:0] yin4_sig,yin20_sig, 
output reg  [N-1:0] yin5_sig,yin21_sig, 
output  reg [N-1:0] yin6_sig,yin22_sig, 
output reg [N-1:0] yin7_sig,yin23_sig, 
output  reg[N-1:0] yin8_sig,yin24_sig, 
output reg [N-1:0] yin9_sig,yin25_sig, 
output reg [N-1:0] yin10_sig,yin26_sig, 
output reg [N-1:0] yin11_sig,yin27_sig, 
output reg [N-1:0] yin12_sig,yin28_sig, 
output reg [N-1:0] yin13_sig,yin29_sig, 
output reg [N-1:0] yin14_sig,yin30_sig, 
output reg [N-1:0] yin15_sig,yin31_sig, 
output  reg [N-1:0] yin16_sig,yin32_sig, 

input [N-1:0] xin1_sig,xin17_sig, 
input [N-1:0] xin2_sig,xin18_sig, 
input [N-1:0] xin3_sig,xin19_sig, 
input [N-1:0] xin4_sig,xin20_sig, 
input [N-1:0] xin5_sig,xin21_sig, 
input [N-1:0] xin6_sig,xin22_sig, 
input [N-1:0] xin7_sig,xin23_sig, 
input [N-1:0] xin8_sig,xin24_sig, 
input [N-1:0] xin9_sig,xin25_sig, 
input [N-1:0] xin10_sig,xin26_sig, 
input [N-1:0] xin11_sig,xin27_sig, 
input [N-1:0] xin12_sig,xin28_sig, 
input [N-1:0] xin13_sig,xin29_sig, 
input [N-1:0] xin14_sig,xin30_sig, 
input [N-1:0] xin15_sig,xin31_sig, 
input [N-1:0] xin16_sig,xin32_sig, 

input [9:0] s_sig,

output reg done,

output [N-1:0] n_c

);

wire [N-1:0] yint[0:O-1];
reg [N-1:0] y_reg [0:O-1];


benes32 benes32_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	
	.yin1(yint[0]) ,	// output [N-1:0] yin1_sig
	.yin2(yint[1]) ,	// output [N-1:0] yin2_sig
	.yin3(yint[2]) ,	// output [N-1:0] yin3_sig
	.yin4(yint[3]) ,	// output [N-1:0] yin4_sig
	.yin5(yint[4]) ,	// output [N-1:0] yin5_sig
	.yin6(yint[5]) ,	// output [N-1:0] yin6_sig
	.yin7(yint[6]) ,	// output [N-1:0] yin7_sig
	.yin8(yint[7]) ,	// output [N-1:0] yin8_sig
	.yin9(yint[8]) ,	// output [N-1:0] yin9_sig
	.yin10(yint[9]) ,	// output [N-1:0] yin10_sig
	.yin11(yint[10]) ,	// output [N-1:0] yin11_sig
	.yin12(yint[11]) ,	// output [N-1:0] yin12_sig
	.yin13(yint[12]) ,	// output [N-1:0] yin13_sig
	.yin14(yint[13]) ,	// output [N-1:0] yin14_sig
	.yin15(yint[14]) ,	// output [N-1:0] yin15_sig
	.yin16(yint[15]) ,	// output [N-1:0] yin16_sig
	.yin17(yint[16]) ,	// output [N-1:0] yin17_sig
	.yin18(yint[17]) ,	// output [N-1:0] yin18_sig
	.yin19(yint[18]) ,	// output [N-1:0] yin19_sig
	.yin20(yint[19]) ,	// output [N-1:0] yin20_sig
	.yin21(yint[20]) ,	// output [N-1:0] yin21_sig
	.yin22(yint[21]) ,	// output [N-1:0] yin22_sig
	.yin23(yint[22]),		//output [N-1:0] yin23_sig
	.yin24(yint[23]),		//output [N-1:0] yin24_sig
	.yin25(yint[24]),		//output [N-1:0] yin25_sig
	.yin26(yint[25]),		//output [N-1:0] yin26_sig
	.yin27(yint[26]),		//output [N-1:0] yin27_sig
	.yin28(yint[27]),		//output [N-1:0] yin28_sig
	.yin29(yint[28]),		//output [N-1:0] yin29_sig
	.yin30(yint[29]),		//output [N-1:0] yin30_sig
	.yin31(yint[30]) ,	// output [N-1:0] yin31_sig
	.yin32(yint[31]) ,	// output [N-1:0] yin32_sig
	
	.xin1(xin1_sig) ,	// input [N-1:0] xin1_sig
	.xin2(xin2_sig) ,	// input [N-1:0] xin2_sig
	.xin3(xin3_sig) ,	// input [N-1:0] xin3_sig
	.xin4(xin4_sig) ,	// input [N-1:0] xin4_sig
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
	
	.s(s_sig) 	// input [b32-1:0] s_sig
);

integer i;
initial begin 
i=0;
assign done=0;
y_reg[0]=0;
y_reg[1]=0;
y_reg[2]=0;
y_reg[3]=0;
y_reg[4]=0;
y_reg[5]=0;
y_reg[6]=0;
y_reg[7]=0; 
y_reg[8]=0;
y_reg[9]=0; 
y_reg[10]=0;
y_reg[11]=0;
y_reg[12]=0;
y_reg[13]=0; 
y_reg[14]=0;
y_reg[15]=0; 
y_reg[16]=0; 
y_reg[17]=0;
y_reg[18]=0;
y_reg[19]=0;
y_reg[20]=0; 
y_reg[21]=0; 
y_reg[22]=0; 
y_reg[23]=0; 
y_reg[24]=0; 
y_reg[25]=0; 
y_reg[26]=0; 
y_reg[27]=0; 
y_reg[28]=0; 
y_reg[29]=0; 
y_reg[29]=0; 
y_reg[30]=0;
y_reg[31]=0;



//xin1_sig=0; xin17_sig=0;
//xin2_sig=0; xin18_sig=0; 
// xin3_sig=0; xin19_sig=0; 
// xin4_sig=0; xin20_sig=0; 
//xin5_sig=0; xin21_sig=0;
//xin6_sig=0; xin22_sig=0; 
//xin7_sig=0;xin23_sig=0; 
//xin8_sig=0;xin24_sig=0; 
//xin9_sig=0;xin25_sig=0; 
//xin10_sig=0;xin26_sig=0;
// xin11_sig=0;xin27_sig=0;
//xin12_sig=0;xin28_sig=0;
//xin13_sig=0;xin29_sig=0;
//xin14_sig=0;xin30_sig=0;
//xin15_sig=0;xin31_sig=0;
//xin16_sig=0;xin32_sig=0;

end 

always @(posedge clk_sig) begin

if (configure==1 & done==0) begin 

 
//for (i=0;i<32;i=i+1) begin

 #260;
  y_reg[i]<= yint[i];
// y_reg[1]= yint[1];
// y_reg[2]= yint[2];
// y_reg[3]= yint[3];
// y_reg[4]= yint[4];
// y_reg[5]= yint[5];
// y_reg[6]= yint[6];
// y_reg[7]= yint[7];
// y_reg[8]= yint[8];
// y_reg[9]= yint[9];
// y_reg[10]= yint[10];
// y_reg[11]= yint[11];
// y_reg[12]= yint[12];
// y_reg[13]= yint[13];
// y_reg[14]= yint[14];
// y_reg[15]= yint[15];	
// y_reg[16]= yint[16];
// y_reg[17]= yint[17];
// y_reg[18]= yint[18];
// y_reg[19]= yint[19];
// y_reg[20]= yint[20];
// y_reg[21]= yint[21];
// y_reg[22]= yint[22];
// y_reg[23]= yint[23];
// y_reg[24]= yint[24];
// y_reg[25]= yint[25];
// y_reg[26]= yint[26];
// y_reg[27]= yint[27];
// y_reg[28]= yint[28];
// y_reg[29]= yint[29];
// y_reg[30]= yint[30];
// y_reg[31]= yint[31];	
yin1_sig=y_reg[0];
yin2_sig=y_reg[1];
yin3_sig=y_reg[2];
yin4_sig=y_reg[3];
yin5_sig=y_reg[4];
yin6_sig=y_reg[5];
yin7_sig=y_reg[6];
yin8_sig=y_reg[7]; 
yin9_sig=y_reg[8];
yin10_sig=y_reg[9]; 
yin11_sig=y_reg[10];
yin12_sig=y_reg[11];
yin13_sig=y_reg[12];
yin14_sig=y_reg[13]; 
yin15_sig=y_reg[14];
yin16_sig=y_reg[15]; 
yin17_sig=y_reg[16]; 
yin18_sig=y_reg[17];
yin19_sig=y_reg[18];
yin20_sig=y_reg[19];
yin21_sig=y_reg[20]; 
yin22_sig=y_reg[21]; 
yin23_sig=y_reg[22]; 
yin24_sig=y_reg[23]; 
yin25_sig=y_reg[24]; 
yin26_sig=y_reg[25]; 
yin27_sig=y_reg[26]; 
yin28_sig=y_reg[27]; 
yin29_sig=y_reg[28]; 
yin30_sig=y_reg[29]; 
yin31_sig=y_reg[29]; 
yin32_sig=y_reg[30];
yin32_sig=y_reg[31];




i=i+1;

if(i>N) begin
//configure=0;
assign done=1;
end

end


//if (i==32) begin
//done=1;
//end

end


//

defparam benes32_inst.Q = 15;
defparam benes32_inst.N = 32;
defparam benes32_inst.b32 = 9;
defparam benes32_inst.b16 = 7;


endmodule

module Test_input_configure;

reg [31:0] RAMX [0:65025]; 
reg [31:0] RAMW [0:65025];
reg [31:0] S [0:31];
reg[31:0] in [0:31];
wire [31:0] o [0:31];


  
  
reg clk_tb;
reg conf;
wire d;
reg [9:0] s_tb;

reg stop_clk , reset ;
wire [31:0] n_clk_cycles;

reg [31:0] total_time;

always #10 clk_tb=~clk_tb;

integer i;

wire [31:0] n_c_tb;

time_counter t1 (
.clk(clk_tb),
.rst(reset),
.stop(stop_clk),
.ticks(n_clk_cycles)

);
input_configure input_configure_inst
(
	.clk_sig(clk_tb) ,	// input  clk_sig_sig
.xin1_sig(in[0]),.xin17_sig(in[16]), 
.xin2_sig(in[1]),.xin18_sig(in[17]), 
.xin3_sig(in[2]),.xin19_sig(in[18]), 
.xin4_sig(in[3]),.xin20_sig(in[19]), 
.xin5_sig(in[4]),.xin21_sig(in[20]), 
.xin6_sig(in[5]),.xin22_sig(in[21]), 
.xin7_sig(in[6]),.xin23_sig(in[22]), 
.xin8_sig(in[7]),.xin24_sig(in[23]), 
.xin9_sig(in[8]),.xin25_sig(in[24]), 
.xin10_sig(in[9]),.xin26_sig(in[25]), 
.xin11_sig(in[10]),.xin27_sig(in[26]), 
.xin12_sig(in[11]),.xin28_sig(in[27]), 
.xin13_sig(in[12]),.xin29_sig(in[28]), 
.xin14_sig(in[13]),.xin30_sig(in[29]), 
.xin15_sig(in[14]),.xin31_sig(in[30]), 
.xin16_sig(in[15]),.xin32_sig(in[31]), 

.yin1_sig(o[0]),.yin17_sig(o[16]), 
.yin2_sig(o[1]),.yin18_sig(o[17]), 
.yin3_sig(o[2]),.yin19_sig(o[18]), 
.yin4_sig(o[3]),.yin20_sig(o[19]), 
.yin5_sig(o[4]),.yin21_sig(o[20]), 
.yin6_sig(o[5]),.yin22_sig(o[21]), 
.yin7_sig(o[6]),.yin23_sig(o[22]), 
.yin8_sig(o[7]),.yin24_sig(o[23]), 
.yin9_sig(o[8]),.yin25_sig(o[24]), 
.yin10_sig(o[9]),.yin26_sig(o[25]), 
.yin11_sig(o[10]),.yin27_sig(o[26]), 
.yin12_sig(o[11]),.yin28_sig(o[27]), 
.yin13_sig(o[12]),.yin29_sig(o[28]), 
.yin14_sig(o[13]),.yin30_sig(o[29]), 
.yin15_sig(o[14]),.yin31_sig(o[30]), 
.yin16_sig(o[15]),.yin32_sig(o[31]), 

	
.s_sig(s_tb),// input [N-1:0] s_sig_sig
.configure(conf),
.done(d),
.n_c(n_c_tb)
);

defparam input_configure_inst.I = 32;
defparam input_configure_inst.O = 32;
defparam input_configure_inst.N = 32;
defparam input_configure_inst.Q = 15;
defparam input_configure_inst.L1 = 4;
defparam input_configure_inst.L2 = 24;
defparam input_configure_inst.L3 = 6;
defparam input_configure_inst.L4 = 6;
defparam input_configure_inst.L5 = 16;
integer j;
initial begin
	//f0= $fopen("out.dat","w");

clk_tb=0;
reset=1;
stop_clk=0;
conf=0;

#40 conf=1;
reset=0;

  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/data.dat", RAMX);
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/w.dat",RAMW);
  $readmemb("C:/Users/aaansari/Documents/Asilomar_2017/CNN/L1.dat",S);
in[0]=RAMX[0];
in[1]=RAMX[1];
in[2]=RAMX[2];
//in[3]=RAMX[3];
//in[4]=RAMX[4];
//in[5]=RAMX[5];
//in[6]=RAMX[6];
//in[7]=RAMX[7];
//in[8]=RAMX[8];
//in[9]=RAMX[9];
//in[10]=RAMX[10];
//in[11]=RAMX[11];
//in[12]=RAMX[12];
//in[13]=RAMX[13];
//in[14]=RAMX[14];
//in[15]=RAMX[15];
//in[16]=RAMX[16];
//in[17]=RAMX[17];
//in[18]=RAMX[18];
//in[19]=RAMX[19];
//in[20]=RAMX[20];
//in[21]=RAMX[21];
//in[22]=RAMX[22];
//in[23]=RAMX[23];
//in[24]=0;
//in[25]=0;
//in[26]=0;
//in[27]=0;
//in[28]=0;
//in[29]=0;
//in[30]=0;
//in[31]=0;

i=0;
j=0;
end 




always @ (posedge clk_tb) begin

if (conf==1 & d==0) begin 

//for(j=0;j<32;j=j+1) begin

s_tb=S[j];
//end 
#260;
if(j==32) begin
stop_clk=1;

end


j=j+1;

end


end 

assign n_c_tb= n_clk_cycles;

endmodule



