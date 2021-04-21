module ttbitAdder(a,b,sum);
  input [31:0] a,b;
  output [31:0] sum;

  wire c1,c2,c3,c4,c5,c6,c7,cout;
  
  ripple_carry_4_bit rca1 (.a(a[3:0]), .b(b[3:0]), .cin(0), .sum(sum[3:0]), .cout(c1));
  ripple_carry_4_bit rca2 (.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(c2));
  ripple_carry_4_bit rca3 (.a(a[11:8]), .b(b[11:8]), .cin(c2), .sum(sum[11:8]), .cout(c3));
  ripple_carry_4_bit rca4 (.a(a[15:12]), .b(b[15:12]), .cin(c3), .sum(sum[15:12]), .cout(c4));
  ripple_carry_4_bit rca5 (.a(a[19:16]), .b(b[19:16]), .cin(c4), .sum(sum[19:16]), .cout(c5));
  ripple_carry_4_bit rca6 (.a(a[23:20]), .b(b[23:20]), .cin(c5), .sum(sum[23:20]), .cout(c6));
  ripple_carry_4_bit rca7 (.a(a[27:24]), .b(b[27:24]), .cin(c6), .sum(sum[27:24]), .cout(c7));
  ripple_carry_4_bit rca8 (.a(a[31:28]), .b(b[31:28]), .cin(c7), .sum(sum[31:28]), .cout(cout));
  
endmodule
  
module ripple_carry_4_bit(a, b, cin, sum, cout);
	input [3:0] a,b;
	input cin;
	wire c1,c2,c3;
	output [3:0] sum;
	output cout;

    full_adder fa0(.x(a[0]), .y(b[0]), .c_in(cin), .s(sum[0]),.c_out(c1));
  	full_adder fa1(.x(a[1]), .y(b[1]), .c_in(c1),  .s(sum[1]),.c_out(c2));
  	full_adder fa2(.x(a[2]), .y(b[2]), .c_in(c2),  .s(sum[2]),.c_out(c3));
  	full_adder fa3(.x(a[3]), .y(b[3]), .c_in(c3),  .s(sum[3]),.c_out(cout));
  
endmodule

module full_adder(x,y,c_in,s,c_out);
   input x,y,c_in;
   output s,c_out;

   assign s = (x^y) ^ c_in;
   assign c_out = (y&c_in)| (x&y) | (x&c_in);

endmodule 

module simple_combinational_mult(product,multiplier,multiplicand); //P
  input [31:0]  multiplier, multiplicand;
  output reg [63:0]       product;
  
  always @( multiplier or multiplicand )
    product = 0;            

    if( multiplier[0] == 1'b1 ) ttbitAdder uut0 (.a(product), .b(multiplicand << 0), .sum(product));
    if( multiplier[1] == 1'b1 ) ttbitAdder uut1 (.a(product), .b(multiplicand << 1), .sum(product));
    if( multiplier[2] == 1'b1 ) ttbitAdder uut2 (.a(product), .b(multiplicand << 2), .sum(product));
    if( multiplier[3] == 1'b1 ) ttbitAdder uut3 (.a(product), .b(multiplicand << 3), .sum(product));
    if( multiplier[4] == 1'b1 ) ttbitAdder uut4 (.a(product), .b(multiplicand << 4), .sum(product));
    if( multiplier[5] == 1'b1 ) ttbitAdder uut5 (.a(product), .b(multiplicand << 5), .sum(product));
    if( multiplier[6] == 1'b1 ) ttbitAdder uut6 (.a(product), .b(multiplicand << 6), .sum(product));
    if( multiplier[7] == 1'b1 ) ttbitAdder uut7 (.a(product), .b(multiplicand << 7), .sum(product));
    if( multiplier[8] == 1'b1 ) ttbitAdder uut8 (.a(product), .b(multiplicand << 8), .sum(product));
    if( multiplier[9] == 1'b1 ) ttbitAdder uut9 (.a(product), .b(multiplicand << 9), .sum(product));
    if( multiplier[10] == 1'b1 ) ttbitAdder uut10 (.a(product), .b(multiplicand << 10), .sum(product));
    if( multiplier[11] == 1'b1 ) ttbitAdder uut11 (.a(product), .b(multiplicand << 11), .sum(product));
    if( multiplier[12] == 1'b1 ) ttbitAdder uut12 (.a(product), .b(multiplicand << 12), .sum(product));
    if( multiplier[13] == 1'b1 ) ttbitAdder uut13 (.a(product), .b(multiplicand << 13), .sum(product));
    if( multiplier[14] == 1'b1 ) ttbitAdder uut14 (.a(product), .b(multiplicand << 14), .sum(product));
    if( multiplier[15] == 1'b1 ) ttbitAdder uut15 (.a(product), .b(multiplicand << 15), .sum(product));
    if( multiplier[16] == 1'b1 ) ttbitAdder uut16 (.a(product), .b(multiplicand << 16), .sum(product));
    if( multiplier[17] == 1'b1 ) ttbitAdder uut17 (.a(product), .b(multiplicand << 17), .sum(product));
    if( multiplier[18] == 1'b1 ) ttbitAdder uut18 (.a(product), .b(multiplicand << 18), .sum(product));
    if( multiplier[19] == 1'b1 ) ttbitAdder uut19 (.a(product), .b(multiplicand << 19), .sum(product));
    if( multiplier[20] == 1'b1 ) ttbitAdder uut20 (.a(product), .b(multiplicand << 20), .sum(product));
    if( multiplier[21] == 1'b1 ) ttbitAdder uut21 (.a(product), .b(multiplicand << 21), .sum(product));
    if( multiplier[22] == 1'b1 ) ttbitAdder uut22 (.a(product), .b(multiplicand << 22), .sum(product));
    if( multiplier[23] == 1'b1 ) ttbitAdder uut23 (.a(product), .b(multiplicand << 23), .sum(product));
    if( multiplier[24] == 1'b1 ) ttbitAdder uut24 (.a(product), .b(multiplicand << 24), .sum(product));
    if( multiplier[25] == 1'b1 ) ttbitAdder uut25 (.a(product), .b(multiplicand << 25), .sum(product));
    if( multiplier[26] == 1'b1 ) ttbitAdder uut26 (.a(product), .b(multiplicand << 26), .sum(product));
    if( multiplier[27] == 1'b1 ) ttbitAdder uut27 (.a(product), .b(multiplicand << 27), .sum(product));
    if( multiplier[28] == 1'b1 ) ttbitAdder uut28 (.a(product), .b(multiplicand << 28), .sum(product));
    if( multiplier[29] == 1'b1 ) ttbitAdder uut29 (.a(product), .b(multiplicand << 29), .sum(product));
    if( multiplier[30] == 1'b1 ) ttbitAdder uut30 (.a(product), .b(multiplicand << 30), .sum(product));
    if( multiplier[31] == 1'b1 ) ttbitAdder uut31 (.a(product), .b(multiplicand << 31), .sum(product));
  end 
    
endmodule

module simple_combinational_mult(product,multiplier,multiplicand); //P
  input [31:0]  multiplier, multiplicand;
  output reg [63:0]       product;
  genvar i;
  
  always @( multiplier or multiplicand )
  begin 
    product = 0;            
    if( multiplier[0] == 1'b1 ) product = product + ( multiplicand << 0 );
    if( multiplier[1] == 1'b1 ) product = product + ( multiplicand << 1 );
    if( multiplier[2] == 1'b1 ) product = product + ( multiplicand << 2 );
    if( multiplier[3] == 1'b1 ) product = product + ( multiplicand << 3 );
    if( multiplier[4] == 1'b1 ) product = product + ( multiplicand << 4 );
    if( multiplier[5] == 1'b1 ) product = product + ( multiplicand << 5 );
    if( multiplier[6] == 1'b1 ) product = product + ( multiplicand << 6 );
    if( multiplier[7] == 1'b1 ) product = product + ( multiplicand << 7 );
    if( multiplier[8] == 1'b1 ) product = product + ( multiplicand << 8 );
    if( multiplier[9] == 1'b1 ) product = product + ( multiplicand << 9 );
    if( multiplier[10] == 1'b1 ) product = product + ( multiplicand << 10 );
    if( multiplier[11] == 1'b1 ) product = product + ( multiplicand << 11 );
    if( multiplier[12] == 1'b1 ) product = product + ( multiplicand << 12 );
    if( multiplier[13] == 1'b1 ) product = product + ( multiplicand << 13 );
    if( multiplier[14] == 1'b1 ) product = product + ( multiplicand << 14 );
    if( multiplier[15] == 1'b1 ) product = product + ( multiplicand << 15 );
    if( multiplier[16] == 1'b1 ) product = product + ( multiplicand << 16 );
    if( multiplier[17] == 1'b1 ) product = product + ( multiplicand << 17 );
    if( multiplier[18] == 1'b1 ) product = product + ( multiplicand << 18 );
    if( multiplier[19] == 1'b1 ) product = product + ( multiplicand << 19 );
    if( multiplier[20] == 1'b1 ) product = product + ( multiplicand << 20 );
    if( multiplier[21] == 1'b1 ) product = product + ( multiplicand << 21 );
    if( multiplier[22] == 1'b1 ) product = product + ( multiplicand << 22 );
    if( multiplier[23] == 1'b1 ) product = product + ( multiplicand << 23 );
    if( multiplier[24] == 1'b1 ) product = product + ( multiplicand << 24 );
    if( multiplier[25] == 1'b1 ) product = product + ( multiplicand << 25 );
    if( multiplier[26] == 1'b1 ) product = product + ( multiplicand << 26 );
    if( multiplier[27] == 1'b1 ) product = product + ( multiplicand << 27 );
    if( multiplier[28] == 1'b1 ) product = product + ( multiplicand << 28 );
    if( multiplier[29] == 1'b1 ) product = product + ( multiplicand << 29 );
    if( multiplier[30] == 1'b1 ) product = product + ( multiplicand << 30 );
    if( multiplier[31] == 1'b1 ) product = product + ( multiplicand << 31 );
  end 
    
endmodule


module simple_combinational_mult(product,multiplier,multiplicand); //P
  input [31:0]  multiplier, multiplicand;
  output reg [63:0]       product;
  integer i;

  always @ (multiplier or multiplicand)
  begin
    product = 0;
    for (i = 0; i < 32; i++) begin
      if (multiplier[i] == 1'b1) begin
        product = product + (multiplicand<<i)
      end
    end
  end
  
endmodule