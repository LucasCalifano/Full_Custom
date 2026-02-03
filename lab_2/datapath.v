`timescale 1ns/1ps

module datapath #(parameter WIDTH=8)(
    input  wire             clk,
    input  wire             rst,
    input  wire             load,
    input  wire             step,
    input  wire [WIDTH-1:0] n,
    output wire             count_ge_n,
    output reg  [WIDTH-1:0] result
);

    reg [WIDTH-1:0] a, b, count;

    assign count_ge_n = (count >= n);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a      <= 0;
            b      <= 1;
            count  <= 0;
            result <= 0;
        end else if (load) begin
            a      <= 0;
            b      <= 1;
            count  <= 0;
            result <= 0;
        end else if (step) begin
            result <= a;   // capture current Fibonacci number
            a      <= b;
            b      <= a + b;
            count  <= count + 1;
        end
    end

endmodule
