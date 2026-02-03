`timescale 1ns/1ps

module fib_tb;

    parameter WIDTH = 8;

    // Testbench signals
    reg clk;
    reg rst;
    reg go;
    reg [WIDTH-1:0] n;

    wire load;
    wire step;
    wire done;
    wire count_ge_n;
    wire [WIDTH-1:0] result;

    // Instantiate datapath
    datapath #(WIDTH) dp (
        .clk(clk),
        .rst(rst),
        .load(load),
        .step(step),
        .n(n),
        .count_ge_n(count_ge_n),
        .result(result)
    );

    // Instantiate controller
    controller ctrl (
        .clk(clk),
        .rst(rst),
        .go(go),
        .count_ge_n(count_ge_n),
        .load(load),
        .step(step),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;

    // VCD dump
    initial begin
        $dumpfile("fib_tb.vcd");
        $dumpvars(0, fib_tb);
    end

    // Test procedure
    initial begin
        clk = 0;
        rst = 1;
        go = 0;
        n = 0;

        #10 rst = 0;

        // Fibonacci(5)
        n = 5; go = 1; #10 go = 0;
        wait(done);
        $display("Fibonacci(5) = %0d", result);

        #20;
        n = 7; go = 1; #10 go = 0;
        wait(done);
        $display("Fibonacci(7) = %0d", result);

        #20;
        n = 10; go = 1; #10 go = 0;
        wait(done);
        $display("Fibonacci(10) = %0d", result);

        $finish;
    end

endmodule
