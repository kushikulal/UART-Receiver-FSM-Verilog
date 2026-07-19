`timescale 1ns/1ps

module tb_uart_rx;

    reg clk;
    reg rst;
    reg rx;

    wire [7:0] data_out;
    wire data_valid;
    wire framing_error;

    uart_rx uut (
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .data_out(data_out),
        .data_valid(data_valid),
        .framing_error(framing_error)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    // Task to send one UART byte
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            // Start bit
            rx = 0;
            #10;

            // Data bits (LSB first)
            for(i = 0; i < 8; i = i + 1)
            begin
                rx = data[i];
                #10;
            end

            // Stop bit
            rx = 1;
            #10;
        end
    endtask

    initial begin

        $dumpfile("uart.vcd");
        $dumpvars(0, tb_uart_rx);

        clk = 0;
        rst = 1;
        rx = 1;

        #20;
        rst = 0;

        // Send 0xA5 (10100101)
        send_byte(8'hA5);

        #100;

        $finish;

    end

endmodule
