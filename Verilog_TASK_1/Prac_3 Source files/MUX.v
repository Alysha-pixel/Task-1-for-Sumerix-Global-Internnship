// 2X1 MUX
// module MUX_2X1(y,i0,i1,s0);
// input i0,i1,s0;
// output y;
// assign y=s0? i1:i0;
    
// endmodule

module MUX_4X1(y,i0,i1,i2,i3,s0,s1);
input i0,i1,i2,i3,s1,s0;
output y;
assign y= s1?(s0?i3:i2): (s0?i1:i0);
    
endmodule