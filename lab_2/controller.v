`timescale 1ns/1ps

module controller(
    input  wire clk,
    input  wire rst,
    input  wire go,
    input  wire count_ge_n,
    output reg  load,
    output reg  step,
    output reg  done
);

    localparam IDLE = 2'b00,
               INIT = 2'b01,
               CALC = 2'b10,
               DONE = 2'b11;

    reg [1:0] state, next;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= next;
    end

    always @(*) begin
        load = 0;
        step = 0;
        done = 0;
        next = state;

        case (state)
            IDLE: if (go) next = INIT;

            INIT: begin
                load = 1;
                next = CALC;
            end

            CALC: begin
                if (count_ge_n)
                    next = DONE;
                else
                    step = 1;
            end

            DONE: begin
                done = 1;
                if (!go) next = IDLE;
            end
        endcase
    end

endmodule
