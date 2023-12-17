module ha_tb();
    reg a,b,cin;
    wire sum,cout;
    fa m1(a,b,cin,cout,sum);
    initial cin=0;
    always #20 cin=!cin;
    initial a=0;
    always #10 a=!a;
    initial b=0;
    always #5 b=!b;
    initial begin
        #50 $finish();
    end
    initial begin
        $dumpfile("ha.vcd");
        $dumpvars(1);
    end
endmodule