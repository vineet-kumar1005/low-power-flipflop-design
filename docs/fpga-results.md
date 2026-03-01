# FPGA Implementation and Power Analysis

## 1. Implementation Overview

The flip-flop architectures were functionally modeled in Verilog HDL and synthesized using Intel Quartus Prime.

### Target FPGA Devices

- Cyclone IV (60 nm)
- Cyclone V (28 nm)

### Tools Used

- ModelSim (RTL Simulation)
- Quartus Prime (Synthesis & Fitting)
- Quartus Power Analyzer (Thermal Power Estimation)

### Operating Conditions

- Clock Frequency: 100 MHz
- Switching Activity: Derived from .vcd simulation files
- Metric Evaluated: Total Thermal Power (mW)

---

## 2. RTL Architectures Implemented

The following variants were modeled:

- Conventional D Flip-Flop
- OR-Gated Clock D Flip-Flop
- TG-Based Behavioral D Flip-Flop
- 4-bit Serial-In Parallel-Out (SIPO) Shift Register

> Note: Transmission-gate advantages are physically validated at transistor level in Cadence. FPGA implementation represents behavioral switching characteristics only.

---

## 3. Functional Verification

RTL simulation confirmed:

- Correct edge-triggered sampling
- Proper enable-based clock suppression
- Correct bit shifting in SIPO register

Representative waveform images are available in: images/fpga


---

## 4. Power Estimation Results

### Cyclone IV (60 nm)

| Design | Total Thermal Power (mW) |
|--------|--------------------------|
| Conventional DFF | 59.25 |
| Clock-Gated DFF | 59.01 |
| TG-Based DFF | 58.76 |
| 4-bit SIPO | 60.15 |

### Observations

- TG-based behavioral model shows lowest estimated power.
- Clock gating provides measurable reduction compared to baseline.
- Shift register consumes higher power due to multi-stage switching.

---

### Cyclone V (28 nm)

| Design | Total Thermal Power (mW) |
|--------|--------------------------|
| Conventional DFF | 419.56 |
| Clock-Gated DFF | 419.51 |
| TG-Based DFF | 419.44 |
| 4-bit SIPO | 419.80 |

### Observations

- Relative power trend matches Cyclone IV results.
- Absolute power values differ due to FPGA fabric architecture and routing complexity.
- Power-saving trend remains consistent across FPGA families.

---

## 5. Comparative Analysis with Cadence

| Aspect | Cadence (CMOS) | FPGA |
|--------|----------------|------|
| Implementation Level | Transistor-level | RTL behavioral |
| Power Reduction | Significant (TG-based ~40%) | Marginal but consistent |
| Scaling Study | 90 nm → 45 nm | Cyclone IV → Cyclone V |
| Validation Focus | Device-level optimization | Functional & architectural validation |

---

## 6. Key Takeaways

- FPGA validation confirms architectural switching reduction trends.
- TG-based design consistently achieves lowest estimated power.
- Behavioral modeling in FPGA aligns with transistor-level Cadence results.
- Power-saving consistency across platforms strengthens design credibility.

---

## Conclusion

The FPGA implementation validates the functional correctness and switching behavior trends observed in Cadence simulations.

While FPGA fabric does not replicate transistor-level transmission-gate physics, the architectural power-reduction trend remains consistent, reinforcing the effectiveness of the proposed low-power design.
