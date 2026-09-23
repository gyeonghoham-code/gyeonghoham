---
task: unsupported
engine: orca
error_class: environment_error
failure_class: infra_transient
outcome: failed
n_atoms: 2
method: B3LYP
basis: 6-31G(d)
cores: 4
mode: slurm
---
Symptom: The user requested H2 and D2 Gibbs free energies on a Slurm compute node. MAESTRO lacks isotope-aware thermochemistry, so the calculation used raw ORCA 6.0.1 input.

Attempts: The first Slurm job failed because ORCA was invoked by a non-absolute path in a parallel run. After user approval, the launcher was changed to the absolute path supplied by the ORCA module and resubmitted once. The retry reached ORCA startup but Open MPI reported that it could not find four allocation slots, despite the Slurm request for four CPUs.

Result: No Gibbs free energies were produced. The single allowed retry was consumed; no further submission was made.

Context: Both inputs used gas-phase B3LYP/6-31G(d), optimization plus frequency calculation, 298.15 K and 1 atm. D2 used a 2.01410178 u mass assignment for each hydrogen nucleus.
