---
task: unsupported
engine: orca
error_class: none
outcome: success
wall_time_s: 374
n_atoms: 2
method: B3LYP
basis: 6-31G(d)
cores: 1
mode: slurm
---
Symptom: The user requested Gibbs free energies for H2 and D2 on a Slurm compute node; MAESTRO does not support isotope-aware thermochemistry.

Attempts: A raw ORCA 6.0.1 calculation was submitted after two earlier launch failures in a separate run. This fresh Slurm job used an absolute ORCA binary path and one CPU core to avoid the prior MPI slot-allocation error. Each molecule was optimized and followed by an analytic DFT frequency calculation.

Result: Both ORCA calculations terminated normally. At 298.15 K and 1 atm, ORCA reported G(H2) = -1.17076434 Eh and G(D2) = -1.17536474 Eh. D2 minus H2 = -0.00460040 Eh = -12.0783 kJ/mol.

Context: Gas-phase B3LYP/6-31G(d). The D2 geometry retained hydrogen nuclear charges but specified 2.01410178 u for each nucleus. The measured batch span was 374 seconds.
