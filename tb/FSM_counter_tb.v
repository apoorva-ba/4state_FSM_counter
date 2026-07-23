`timescale 1ns/1ps

module counter_fsm_tb;

reg clk;
reg rst;
wire [1:0] state;

counter_fsm uut(
    .clk(clk),
    .rst(rst),
    .state(state)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    $dumpfile("counter_fsm.vcd");
    $dumpvars(0, counter_fsm_tb);

    clk = 0;
    rst = 1;

    #10 rst = 0;

    #80;

    $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b State=%b", $time, rst, state);
end

endmodule