//-----------------------------------------------------
// Design Name : mux_using_if
// File Name   : mux_using_if.v
// Function    : 2:1 Mux using If
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module  mux(
din_0      , // Mux first input
din_1      , // Mux Second input
sel        , // Select input
mux_out      // Mux output
);
//-----------Input Ports---------------
input [31:0] din_0, din_1; 
input sel ;
//-----------Output Ports---------------
output [31:0] mux_out;
//------------Internal Variables--------
reg [31:0] mux_out;
//-------------Code Starts Here---------
always @ (sel or din_0 or din_1)
begin : MUX
  if (sel == 1'b0) begin
      mux_out = din_0;
  end else begin
      mux_out = din_1 ;
  end
end

endmodule //End Of Module mux