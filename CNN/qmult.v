`timescale 1ns / 1ps
module qmult #(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
	)
	(
	 input  				clk,
	 input			[N-1:0]	i_multiplicand,
	 input			[N-1:0]	i_multiplier,
	 output			[N-1:0]	o_result,
	 output	reg				ovr
	 );
	 
	 //	The underlying assumption, here, is that both fixed-point values are of the same length (N,Q)
	 //		Because of this, the results will be of length N+N = 2N bits....
	 //		This also simplifies the hand-back of results, as the binimal point 
	 //		will always be in the same location...
	
	reg [2*N-1:0]	r_result;		//	Multiplication by 2 values of N bits requires a 
											//		register that is N+N = 2N deep...
	reg [N-1:0]		r_RetVal;
	
//--------------------------------------------------------------------------------
	assign o_result = r_RetVal;	//	Only handing back the same number of bits as we received...
											//		with fixed point in same location...
	always @ ( posedge clk) begin
	
		r_result<=i_multiplicand[N-2:0]*i_multiplier[N-2:0];
		r_RetVal[N-1]<= i_multiplicand[N-1]^i_multiplier[N-1];
		r_RetVal[N-2:0] <= r_result[N-2+Q:Q];
	
	end
//

endmodule


/////////////////////////////////////////////////////////

module Test_mult;

	// Inputs
	reg  clk_tb;
	reg [31:0] i_multiplicand_tb;
	reg [31:0] i_multiplier_tb;

	// Outputs
	wire [31:0] o_result_tb;
	wire			ovr_tb;
	
	// Instantiate the Unit Under Test (UUT)
	qmult #(19,32) uut (
		.clk(clk_tb),
		.i_multiplicand(i_multiplicand_tb), 
		.i_multiplier(i_multiplier_tb), 
		.o_result(o_result_tb),
		.ovr(ovr_tb)
	);

	always #10 clk_tb=~clk_tb;
	
	initial begin
		$monitor ("%b,%b,%b,%b,%b", clk_tb, i_multiplicand_tb, i_multiplier_tb, o_result_tb, ovr_tb);		//	Monitor the stuff we care about
		
		// Initialize Inputs
		clk_tb=0;
		
 		i_multiplicand_tb[30:0] = 32'b00000000000110010010000111111011;//pi = 3.141592
		i_multiplicand_tb[31] = 0;//	i_multiplicand sign (5 Q(32,19)
		i_multiplier_tb[31] = 0;												//	i_multiplier sign
		i_multiplier_tb[30:0] = 32'b00000000001010000000000000000000;

		// Wait 100 ns for global reset to finish
		#100;
		#100 i_multiplier_tb[0] = 1;		//	1.91E-6
  	end

	// Add stimulus here
	always begin
		#20 i_multiplier_tb[30:0] = (i_multiplier_tb[30:0] << 1) + 1;		//	Why not??
	end
      
endmodule