#!/bin/bash
#@ class            = clallmds
#@ job_name         = trosh_hello
#@ total_tasks      = 16
#@ node             = 2
#@ wall_clock_limit = 00:00:05
#@ job_type         = mpich
#@ queue
module load intel intelmpi
mpirun ./hello
