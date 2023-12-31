module evencounter (input wire clk, reset, output [7:0]q);
    wire d2, d3, d4, d5, d6, d7, y3, y4, y5, y6, y7;
    dff D0 (q[0], clk, reset, q[0]);
    dff D1 (q[1], clk, reset, ~q[1]);
    xorgate x2 (q[1], q[2], d2);       //you can aslo use the pre defined keywords instead
    dff D2 (q[2], clk, reset, d2);
    andgate a3 (q[1], q[2], y3);
    xorgate x3 (y3, q[3], d3);
    dff D3 (q[3], clk, reset, d3);
    andgate a4 (y3, q[3], y4);
    xorgate x4 (y4, q[4], d4);
    dff D4 (q[4], clk, reset, d4);
    andgate a5 (y4, q[4], y5);
    xorgate x5 (y5, q[5], d5);
    dff D5 (q[5], clk, reset, d5);
    andgate a6 (y5, q[5], y6);
    xorgate x6 (y6, q[6], d6);
    dff D6 (q[6], clk, reset, d6);
    andgate a7 (y6, q[6], y7);
    xorgate x7 (y7, q[7], d7);
    dff D7 (q[7], clk, reset, d7);
endmodule
