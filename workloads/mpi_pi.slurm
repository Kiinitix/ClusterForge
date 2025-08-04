#!/bin/bash
#SBATCH --job-name=pi-mpi
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --partition=debug

mpicc mpi_pi_estimation.c -o mpi_pi_estimation
mpirun -np 4 ./mpi_pi_estimation
