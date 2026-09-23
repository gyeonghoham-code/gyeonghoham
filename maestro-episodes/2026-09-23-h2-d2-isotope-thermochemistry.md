---
task: unsupported
engine: none
error_class: support_gap
outcome: support_gap
---
Symptom: The user requested Gibbs free energies for H2 and D2, calculated on a Slurm compute node.

Attempts: Queried the live MAESTRO capability catalog. ThermoTask produces gibbs_free_energy but has no isotope-mass or isotope-substitution input. IsotopeShiftTask accepts isotope substitutions but produces only isotope_frequencies, not thermochemistry or gibbs_free_energy.

Result: MAESTRO cannot currently compute Gibbs free energy with isotope substitution, so a raw-engine workaround is required for D2.

Context: Requested electronic structure settings were ORCA, DFT/B3LYP, and 6-31G(d). The user requested that the login node not be used for calculation.
