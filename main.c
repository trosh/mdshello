#include <mpi.h>
#include <omp.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
	int csize, crank;
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &csize);
	MPI_Comm_rank(MPI_COMM_WORLD, &crank);
#pragma omp parallel
	{
		printf("Hello World!\t%d:%d:%d\n",
			omp_get_thread_num(), crank, csize);
	}
	MPI_Finalize();
	return 0;
}
