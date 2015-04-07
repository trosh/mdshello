#!/bin/bash
#@ class            = clallmds
#@ job_name         = trosh_hello
#@ total_tasks      = 8
#@ node             = 4
#@ wall_clock_limit = 00:01:00
#@ output           = $(job_name).log
#@ error            = $(job_name).err
#@ job_type         = mpich
#@ environment      = COPY_ALL
#@ queue
module load intel openmpi
export OMP_NUM_THREADS=8
mpirun -x OMP_NUM_THREADS ./hello
