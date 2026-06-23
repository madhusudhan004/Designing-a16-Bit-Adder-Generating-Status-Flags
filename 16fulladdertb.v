module fulladder_16_tb;
reg[15:0]a,b;
reg cin;
wire[15:0]sum;
wire cout,sign,zero,parity,overflow;
fulladder16 DUT(sum,cout,a,b,cin,sign,zero,parity,overflow);
initial
begin
$dumpfile("16fulladder.vcd");
$dumpvars(0,fulladder_16_tb);
$monitor("Time=%0t,A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b,Sign=%b,Zero=%b,Parity=%b,Overflow=%b",$time,a,b,cin,sum,cout,sign,zero,parity,overflow);
a=16'h8fff;b=16'h8000;cin=1'b0;
#5 a=16'h5501;b=16'h6701;cin=1'b0;
#5 a=16'hffff;b=16'h5555;cin=1'b0;
#20 $finish;
end
endmodule


