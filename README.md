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
<img width="1286" height="863" alt="RTL Diagram png" src="https://github.com/user-attachments/assets/1238a7a0-1191-44e3-ba81-323129d0c19a" />
<img width="579" height="450" alt="FPGA Resource Utilization png" src="https://github.com/user-attachments/assets/01ee1a34-d2e2-4d96-bebb-c7f88881737d" />

<img width="769" height="799" alt="Yosys statistics png" src="https://github.com/user-attachments/assets/0eedeb5c-6718-4321-9d50-125da61cc7bb" />
<img width="1575" height="525" alt="waveform_output png (2)" src="https://github.com/user-attachments/assets/b533419c-87c5-4019-8a13-c21b5010cc8f" />



