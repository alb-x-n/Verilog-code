module tff_tb();
    reg t,clk,rst;
    wire q;
    tff m1(t,clk,rst,q);

    initial begin
        rst=0; #10 rst=!rst;
    end
    initial clk=0;
    always #15 clk=!clk;
    initial t=0;
    always #8 t=!t;
    initial begin
        #300 $finish();
    end
    initial begin
        $dumpfile("dff.vcd")
        $dumpvars(1);
    end
endmodule