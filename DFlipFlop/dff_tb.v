module dff_tb();
    reg d,clk,rst;
    wire q;
    dff m1(d,clk,rst,q);
    initial begin
        rst=0; #10 rst=!rst;
    end
    initial clk=0;
    always #15 clk=!clk;
    initial d=0;
    always #8 d=!d;
    initial begin
        #100 $finish();
    end
    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(1);
    end
endmodule