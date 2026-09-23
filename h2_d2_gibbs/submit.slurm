#!/usr/bin/env bash
#SBATCH --job-name=h2_d2_gibbs
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --time=02:00:00
#SBATCH --output=h2_d2_gibbs.%j.out
#SBATCH --error=h2_d2_gibbs.%j.err

set -euo pipefail
cd "$SLURM_SUBMIT_DIR"
module load orca/v6.0.1

"$ORCA/orca" h2.inp > h2.out
"$ORCA/orca" d2.inp > d2.out
