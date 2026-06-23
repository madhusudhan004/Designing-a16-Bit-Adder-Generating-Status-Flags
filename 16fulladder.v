module fulladder16(sum,cout,a,b,cin,sign,zero,parity,overflow);
input [15:0]a,b;
input cin;
output [15:0]sum;
output cout,sign,zero,parity,overflow;
wire [2:0]c;
fulladder4 f1(sum[3:0],c[0],a[3:0],b[3:0],cin);
fulladder4 f2(sum[7:4],c[1],a[7:4],b[7:4],c[0]);
fulladder4 f3(sum[11:8],c[2],a[11:8],b[11:8],c[1]);
fulladder4 f4(sum[15:12],cout,a[15:12],b[15:12],c[2]);
assign sign=sum[15];
assign zero=~|sum;
assign parity=~^sum;
assign overflow=(a[15]&b[15]&~sum[15])|(~a[15]&~b[15]&sum[15]);
endmodule
