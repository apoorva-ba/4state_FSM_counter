# 4state_FSM_counter

## Overview

This project implements a 4-State Counter using a Finite State Machine (FSM) in Verilog HDL. The FSM cycles through four states (00 → 01 → 10 → 11 → 00) on every positive edge of the clock.

---

## Features

- Synthesizable Verilog code
- Moore FSM implementation
- Four unique states
- Synchronous state transitions
- Reset support
- Compatible with EDA Playground, Vivado, ModelSim, and Icarus Verilog

---

## State Encoding

| State | Binary |
|--------|--------|
| S0 | 00 |
| S1 | 01 |
| S2 | 10 |
| S3 | 11 |

---

## State Transition

S0 → S1 → S2 → S3 → S0

---

## Files

### counter_fsm.v

Contains the FSM implementation.

### counter_fsm_tb.v

Testbench for simulation.

---

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| clk | 1 | Clock |
| rst | 1 | Active-high Reset |

---

## Outputs

| Signal | Width | Description |
|--------|-------|-------------|
| state | 2 | Current FSM State |

---

## Simulation

1. Compile both files.
2. Run the simulation.
3. Observe the waveform.
4. Verify the state sequence:
   - 00
   - 01
   - 10
   - 11
   - Repeat

---

## Expected Sequence

00 → 01 → 10 → 11 → 00 → ...

---

## Applications

- Sequence Controllers
- Traffic Light Controllers
- Digital Counters
- Embedded Control Systems
- VLSI FSM Design

---

## Author

Apoorva B A
