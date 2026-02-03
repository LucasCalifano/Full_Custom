`timescale 1ns / 1ps

// Fibonacci Top Module
module fib #(parameter WIDTH = 8) (
    input  wire             go,
    input  wire             clk,
    input  wire             rst,
    input  wire [WIDTH-1:0] n,
    output reg              done,
    output reg  [WIDTH-1:0] result
);

    // Internal registers
    reg [WIDTH-1:0] a, b, count;

    // State encoding
    localparam S_IDLE = 2'b00;
    localparam S_INIT = 2'b01;
    localparam S_CALC = 2'b10;
    localparam S_DONE = 2'b11;

    reg [1:0] state, next_state;

    // State transition
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S_IDLE;
        else
            state <= next_state;
    end

    // Next state and output logic
    always @(*) begin
        next_state = state;
        done = 0;

        case (state)
            S_IDLE: if (go) next_state = S_INIT;
            S_INIT: next_state = S_CALC;
            S_CALC: if (count >= n) next_state = S_DONE;
            S_DONE: begin
                done = 1;
                if (!go) next_state = S_IDLE;
            end
        endcase
    end

    // Fibonacci calculation
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0;
            b <= 1;
            count <= 0;
            result <= 0;
        end else begin
            case (state)
                S_INIT: begin
                    a <= 0;
                    b <= 1;
                    count <= 0;
                    result <= 0;
                end
                S_CALC: begin
                    result <= a;      // Capture current Fibonacci number
                    a <= b;
                    b <= a + b;
                    count <= count + 1;
                end
                S_DONE: begin
                    // Keep result stable
                end
            endcase
        end
    end

endmodule
