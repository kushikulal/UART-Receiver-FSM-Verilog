# UART Receiver using Finite State Machine (FSM) in Verilog HDL

## Project Overview
This project implements a UART (Universal Asynchronous Receiver Transmitter) Receiver using a Finite State Machine (FSM) in Verilog HDL. The design receives serial data, converts it into parallel data, validates the received frame, and indicates successful data reception through a data_valid signal.

## Features
- Verilog HDL implementation
- FSM-based UART Receiver
- Simulation using Icarus Verilog and GTKWave
- RTL synthesis using Yosys
- FPGA resource utilization (LUT Statistics)

## Project Files
- uart_rx.v – UART Receiver source code
- tb_uart_rx.v – Testbench
- uart.vcd – Simulation waveform
- waveform_output.png – Output waveform
- RTL Diagram.png – RTL diagram
- FPGA Resource Utilization.png – LUT statistics from Yosys
- Yosys statistics.png – Synthesis statistics

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

## Results
The UART Receiver correctly receives serial data using an FSM. Simulation waveforms verify correct operation, while Yosys synthesis confirms successful hardware implementation and FPGA resource utilization.
