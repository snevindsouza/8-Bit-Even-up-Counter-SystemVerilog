module dff(output reg q, input wire clk, reset, d);

    always @(posedge clk) 
    begin
        if (reset)
            q <= 1'b0;   
        else
            q <= d;  
    end

endmodule
