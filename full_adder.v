//Full adder//

module full_addr
 (
  input a,
  input b,
  input cin,
 

  output sum,
  output cout
 );
assign{cout,sum} = cin + a + b;

endmodule