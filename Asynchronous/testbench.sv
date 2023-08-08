module testbench;

    import counter_pkg::*;
    EightBitEvenUpCounter E;
    reg clk, reset;
    wire [7:0]q;//expected even counter value
    logic [7:0]temp=8'b0;

    evencount dut(.clk(clk),.reset(reset),.q(q));

    always #1 clk = ~clk;

    initial begin   
        $dumpfile("testbench.vcd");
        $dumpvars(0,testbench); 
        clk <= 1'b0;
        reset = 1'b1;
        #5 reset = ~reset;     
        repeat(128) begin            
            varify(clk, reset);                   
            #2 $display("expected = %d, got = %d", E.count, q);                
        end
        $finish;
    end

    task varify;
        input clk, reset;
        begin
            E = new(clk, reset);
            E.getvalue(temp);//value of temp goes to package
            temp = E.count;
        end
    endtask

endmodule
