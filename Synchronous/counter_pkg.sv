package counter_pkg;

class EightBitEvenUpCounter;
    // Member variables
    bit [7:0] count;
    bit clk;
    bit reset;

    // Constructor
    function new(bit clk1, bit reset1);
        clk = clk1;
        reset = reset1;
    endfunction

    function void getvalue(bit [7:0] value);
        count = value;
        count = count + 2;
    endfunction 
endclass

endpackage