`timescale 1ns / 1ps

module qadd #(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
	)
	(
		input clk,
    input [N-1:0] a,
    input [N-1:0] b,
    output [N-1:0] c,
	 output ovr
    );

reg [N:0] res; // size 33 to get overflow 

assign c = res;

always @(posedge clk) begin

	
	if (a[N-1]==b[N-1]) begin 				 	// if both are negative or positive 			
	
	 res[N-1:0]<= a[N-2:0]+ b[N-2:0];	
	 
	 res[N-1]<=a[N-1];				  	 	//  or b[N-1:0] it doesnt matter


	end else if (a[N-2:0]> b[N-2:0] ) begin		 // check if |a| > |b|
	 
			res[N-2:0]<= a[N-2:0]- b[N-2:0];   // res= a-b
			res[N-1]<=a[N-1];

	
	end else if (a[N-2:0] < b[N-2:0]) begin	// check if |a| < |b|
			
			res[N-2:0]<= b[N-2:0]-a[N-2:0];
			res[N-1]<=b[N -1];

			
	end else if (a[N-2:0] == b[N-2:0]) begin
		
			res[N-1:0]=0;
	
	
	end
	

end 	
endmodule


////////////////////////////////////////////////////////////////////////////////

module Test_add;

	// Inputs
	reg clk_tb;
	reg [31:0] a_tb;
	reg [31:0] b_tb;
	// Outputs
	wire [31:0] c_tb;
	
	reg [31:0] RAMX [0:65025]; 
	reg [31:0] RAMW [0:65025];
	reg [31:0] OUT [0:47];
	
	
	reg  reset;
	reg  stp;
	wire [31:0] n_cycles;
	wire t_t;
	
	// Instantiate the Unit Under Test (UUT)
	qadd #(19,32) uut (
		.clk(clk_tb),
		.a(a_tb), 
		.b(b_tb), 
		.c(c_tb)
	);

    time_counter t (
	 .clk(clk_tb),
	 .rst(reset),
	 .stop(stp),
	 .ticks(n_cycles)
	 );
	
	always #10 clk_tb=~clk_tb;
	
	assign t_t=n_cycles;
	
	initial begin
		$monitor ("%b,%b,%b,%b,%b",clk_tb,a_tb,b_tb,c_tb,t_t);
		
		// Initialize Inputs
		clk_tb=0;
		stp=0;
		a_tb[30:0] = 0;
		a_tb[31] = 0;
		b_tb[31] = 0;
		b_tb[30:0] = 0;
		
		
		reset=1;
		#30 reset=0;
		
		
		$readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/data.dat", RAMX);
		$readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/w.dat",RAMW);
		
		#20
		a_tb[30:0]= 5;
		a_tb[31]=0;
		b_tb [30:0]= 35;
		b_tb[31]=1;
		stp=1;
		
		

//		// Wait 10 ns for global reset to finish
//		#10;
//        
//		// Add stimulus here
//		forever begin
//			#10 a_tb = a_tb+5;			//	why not?
//			a_tb[31] = 0;					//	a is negative...
//			b_tb[31] = 1;
//			
//			
//			if (a_tb[30:0] > 20)			//	input will always be "positive"
//				begin
//					a_tb = 0;
//					b_tb[31] = 1;				//	b is negative...
//					b_tb[30:0] = b_tb[30:0] + 5;
//				end
//		end

end 


		
      
endmodule
