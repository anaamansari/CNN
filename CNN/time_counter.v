module time_counter(input clk, input rst,input stop, output [31:0] ticks) ;
		reg [31:0] t;
		assign ticks= t;
    always @(posedge clk & stop==0) begin
        if (rst==1) begin
            t = 32'h00000000;
        end 
        else begin
            t = t + 1;
        end
    end
endmodule


module time_counter_test;

reg clk_tb;
reg rst_tb;
reg stp_tb;
wire [31:0] n_cycles;


always #10 clk_tb=~clk_tb;


time_counter t1
(.clk(clk_tb),
 .rst(rst_tb),
 .stop(stp_tb),
 .ticks(n_cycles)
 );
 

initial begin

$monitor ("%b,%b,%b,%b",clk_tb,rst_tb,stp_tb,n_cycles);

clk_tb=0;
rst_tb=1;
stp_tb=0;

#60 rst_tb=0;

#200;
stp_tb=1;

end

endmodule
