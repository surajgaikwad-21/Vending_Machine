Vending Machine System
This repository contains a Verilog-based simulation of a vending machine system with four selectable items (A, B, C, D), each priced differently. The system allows insertion of coins (5 or 10 units) and dispenses items when the inserted amount reaches or exceeds the item's price.

Module Overview
item_A: Handles item priced at 20 units.
item_B: Handles item priced at 25 units.
item_C: Handles item priced at 30 units.
item_D: Handles item priced at 35 units.
top: Manages item selection and routes control signals to the appropriate item module.
Key Features
State Machines: Each item module uses a state machine to manage coin inputs and item dispensing.
Coin Management: Dispenses items and returns excess coins when overpaid.
Modular Design: Easy to extend for additional items or different prices.
Inputs
clock: Clock signal.
reset: Reset signal.
coin5: Signal for 5-unit coin insertion.
coin10: Signal for 10-unit coin insertion.
sel: 2-bit signal for selecting the item (00: A, 01: B, 10: C, 11: D).
Outputs
coin_out: Indicates return of excess coin.
dispense: Indicates item dispensed.
