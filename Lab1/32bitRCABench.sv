module 32bitAdder;
 
 // Inputs
  reg [31:0] input1;
  reg [31:0] input2;

 // Outputs
  wire [31:0] answer;
  
 // Instantiate the Unit Under Test (UUT)
 rca32 uut (
  .a(input1), 
  .b(input2),
  .sum(answer)
 );

 initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
  $display("Reset flop.");
  // Initialize Inputs
  cin = 0;
  input1 = 35000;
  input2 = 35000;
  #100;
  // Add stimulus here
 end
      
endmodule