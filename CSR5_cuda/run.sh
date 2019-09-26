#!/bin/bash

#./spmv $in

module load openmpi

mpirun -np $r ./spmv $in
