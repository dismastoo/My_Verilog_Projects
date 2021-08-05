//fulladder_Test_bench//
`timescale 1ns/100ps

module fulladder;

reg input1;
reg input2;
reg carryin;

wire out;
wire carryout;

full_addr uut(
.a(input1),
.b(input2),
.cin(carryin),
.sum(out),
.cout(carryout)

);

initial
begin
input1 =0;
input2 = 0;
carryin =0;
#20; input1 =1;
#20; input2 =1;
#20; input1 =0;
#20; carryin =1;
#20; input2 =0;
#20; input1 =1;
#20; input2 =1;
#40;
end


initial
begin
$monitor("time = %2d, CIN =%1b, IN1=%1b, IN2=%1b, COUT=%1b, OUT=%1b", $time,carryin,input2, input1,carryout,out);
end
 
endmodule