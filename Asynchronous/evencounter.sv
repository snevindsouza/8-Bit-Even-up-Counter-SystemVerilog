module evencount( input wire clk, reset, output [7:0]q);

    dff D0 (q[0], clk, reset, q[0]);
    dff D1 (q[1], clk, reset, ~q[1]);
    dff D2 (q[2], ~q[1], reset, ~q[2]);
    dff D3 (q[3], ~q[2], reset, ~q[3]);
    dff D4 (q[4], ~q[3], reset, ~q[4]);
    dff D5 (q[5], ~q[4], reset, ~q[5]);
    dff D6 (q[6], ~q[5], reset, ~q[6]);
    dff D7 (q[7], ~q[6], reset, ~q[7]);

endmodule