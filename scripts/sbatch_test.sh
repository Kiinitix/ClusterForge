#!/bin/bash

docker exec -it slurm-head bash -c "
cd /etc/slurm &&
cp /workloads/mpi_pi_estimation.c . &&
cp /workloads/mpi_pi.slurm . &&
sbatch mpi_pi.slurm
"
