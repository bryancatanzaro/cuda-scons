//Minimal CUDA program
__global__ void foo(int* r) {
    if(threadIdx.x == 0) {
        r[0] = blockIdx.x;
    }
}


int main() {
    int* r;
    cudaMalloc(&r, sizeof(int));
    foo<<<128, 128>>>(r);
}
