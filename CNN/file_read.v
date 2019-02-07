module file_read;
 
  reg [31:0] RAMX [0:65025]; 
	reg [31:0] RAMW [0:65025];

  integer i;            
  initial begin
$readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/data.txt", RAMX);
  $readmemh("C:/Users/aaansari/Documents/Asilomar_2017/CNN/w.txt",RAMW);
    $display("data:");           
    for (i=0; i < 7; i=i+1)         
      $display("%d:%h",i,RAMX[i]);           
  end                
endmodule