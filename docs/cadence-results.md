# Cadence CMOS Implementation & Analysis

## Technology & Simulation Setup

Tool: Cadence Virtuoso (ADE)  
Supply Voltage: 1 V  
Clock Frequency: 100 MHz  
Technology Nodes Evaluated:
- 90 nm CMOS
- 45 nm CMOS

All flip-flop variants were implemented at transistor level using explicit PMOS and NMOS devices.

---

## 90 nm Technology Results

| Design | Power (nW) | Delay (ns) |
|--------|------------|------------|
| Conventional DFF | 250.6 | 40.04 |
| Clock-Gated DFF | 278.7 | 52.41 |
| TG-Clock-Gated DFF | 145.8 | 60.04 |
| 4-bit SIPO | 493.7 | 66.42 |

### Observations

- Clock gating alone introduces additional delay due to OR-gate logic.
- TG-based clock-gated DFF reduces dynamic power by ~41% compared to conventional design.
- Power savings achieved with minimal delay overhead.
- SIPO consumes higher power due to simultaneous multi-stage switching.

---

## 45 nm Technology Results

| Design | Power (nW) | Delay (ps) |
|--------|------------|------------|
| Conventional DFF | 61.92 | 58.83 |
| Clock-Gated DFF | 79.29 | 66.27 |
| TG-Clock-Gated DFF | 39.03 | 65.82 |
| 4-bit SIPO | 418.0 | 60.06 |

### Observations

- Technology scaling significantly reduces dynamic power.
- TG-based design remains lowest power architecture across nodes.
- Delay improvement observed due to reduced device dimensions.
- Scaling confirms power-delay optimization trend.

---

## Power-Delay Trade-Off Analysis

Power-Delay Product (PDP) analysis confirms:

- TG-Clock-Gated DFF achieves best energy efficiency.
- Conventional DFF offers lower delay but higher switching activity.
- Clock gating is most effective when combined with transmission-gate logic.

---

## Key Insight

The integration of transmission-gate latch design with clock gating:

- Minimizes unnecessary internal switching
- Reduces short-circuit current
- Maintains full-swing signal levels

---

## Power-Delay Product (PDP) Comparison

### 90 nm Technology

| Design | PDP (fJ) |
|--------|----------|
| Conventional DFF | ~10040 |
| Clock-Gated DFF | ~14600 |
| TG-Clock-Gated DFF | ~8750 |

Observation:
TG-Clock-Gated DFF achieves the lowest energy per switching event.

---

### 45 nm Technology

| Design | PDP (fJ) |
|--------|----------|
| Conventional DFF | ~3.64 |
| Clock-Gated DFF | ~5.25 |
| TG-Clock-Gated DFF | ~2.57 |

Observation:
Technology scaling significantly reduces energy consumption.
TG-based design consistently provides best energy efficiency.
- Achieves consistent power savings across technology nodes
