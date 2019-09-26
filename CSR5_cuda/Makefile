#compilers
# -I/apps/pkg/openmpi/2.1.5/rhel7_u5/pbs/gnu/include/openmpi
# OPENMPI FLAGS
#MPIFLAGS = -I/apps/pkg/openmpi/2.1.5/rhel7_u5/pbs/gnu/include/ -L/apps/pkg/openmpi/2.1.5/rhel7_u5/pbs/gnu/lib/
# MPICH FLAGS
MPIFLAGS = -I/apps/pkg/mpich-3.2.1/rhel7_u2-x86_64-ib/gnu/include/ -L/apps/pkg/mpich-3.2.1/rhel7_u2-x86_64-ib/gnu/lib/
CFLAGS = -lmpi

#GLOBAL_PARAMETERS
VALUE_TYPE = double
NUM_RUN = 1000
_SIGMA = -1
#ENVIRONMENT_PARAMETERS

#CUDA_PARAMETERS
#NVCC_FLAGS = -O3  -w -m64 -arch=sm_30
NVCC_FLAGS = -O3  -w -m64 -gencode=arch=compute_37,code=sm_37 -gencode=arch=compute_37,code=compute_37
CUDA_INSTALL_PATH = /apps/pkg/cuda-8.0/rhel7_u2-x86_64/gnu
CUDA_INCLUDES = -I$(CUDA_INSTALL_PATH)/include -I$(CUDA_INSTALL_PATH)/samples/common/inc
CUDA_LIBS = -L$(CUDA_INSTALL_PATH)/lib64 -lcudart

cuda:
	nvcc $(NVCC_FLAGS) main.cu -o spmv $(CUDA_INCLUDES) $(CUDA_LIBS) $(MPIFLAGS) $(CFLAGS) -D VALUE_TYPE=$(VALUE_TYPE) -D NUM_RUN=$(NUM_RUN) -D _SIGMA=$(_SIGMA)
