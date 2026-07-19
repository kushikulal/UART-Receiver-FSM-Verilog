module uart_rx(
    input wire clk,
    input wire rst,
    input wire rx,

    output reg [7:0] data_out,
    output reg data_valid,
    output reg framing_error
);

    // FSM States
    parameter IDLE = 3'b000;
    parameter START = 3'b001;
    parameter DATA = 3'b010;
    parameter STOP = 3'b011;
    parameter DONE = 3'b100;

    reg [2:0] state;
    reg [2:0] bit_count;
    reg [7:0] shift_reg;

    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            state <= IDLE;
            bit_count <= 3'd0;
            shift_reg <= 8'd0;
            data_out <= 8'd0;
            data_valid <= 1'b0;
            framing_error <= 1'b0;
        end
        else
        begin
            case(state)

                IDLE:
                begin
                    data_valid <= 1'b0;
                    framing_error <= 1'b0;

                    if(rx == 1'b0)
                        state <= START;
                end

                START:
                begin
                    bit_count <= 3'd0;
                    state <= DATA;
                end

                DATA:
                begin
                    shift_reg[bit_count] <= rx;

                    if(bit_count == 3'd7)
                        state <= STOP;
                    else
                        bit_count <= bit_count + 1;
                end

                STOP:
                begin
                    if(rx == 1'b1)
                    begin
                        data_out <= shift_reg;
                        data_valid <= 1'b1;
                        framing_error <= 1'b0;
                    end
                    else
                    begin
                        framing_error <= 1'b1;
                    end

                    state <= DONE;
                end

                DONE:
                begin
                    state <= IDLE;
                end

                default:
                    state <= IDLE;

            endcase
        end
    end

endmodule
