module ha(a,b,s,c);
    input a,b;
    output s,c;
    xor g1(s,a,b);
    and g2(c,a,b);
endmodule

module fa(a,b,cin,cout,sum);
    input a,b,cin;
    output cout,sum;
    wire wa1,wa2,wa3;
    ha m1(a,b,wa1,wa2);
    ha m2(wa1,cin,sum,wa3);
    or(cout,wa2,wa3);
endmodule