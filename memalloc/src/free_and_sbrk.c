#include "tlpi_hdr.h"

#define MAX_ALLOCS 1000000  // 最大分配个数

/*
前两个命令行参数指定了分配内存块的数量和大小。
第三个命令行参数指定了释放内存块的循环步长。
    如果是 1（这也是省略此参数时的默认值），那么程序将释放每块已分配的内存，
    如果为 2，那么每隔一块释放一块已分配内存，以此类推。
第四个和第五个命令行参数指定需要释放的内存块范围。
    如果省略这两个参数，那么将（以第三个命令行参数所指定的步长）释放全部范围内的已分配内存。
*/

int main(int argc, char *argv[]) {
    char *ptr[MAX_ALLOCS];  // ptr是一个二维数组, ptr[0]是一个char*, 值为一个地址
    // 释放步长，最小释放下标，最大释放下标，每个分配块的大小，分配的块的个数，
    int freeStep, freeMin, freeMax, blockSize, numAllocs, j;
    if (argc < 3 || strcmp(argv[1], "--help") == 0) 
        usageErr("%s num-allocs block-size [step [min [max]]]\n", argv[0]);
    numAllocs = getInt(argv[1], GN_GT_0, "num-allocs");

    if (numAllocs > MAX_ALLOCS) // 如果要分配的块数大于规定的最大分配个数
        cmdLineErr("num-allocs > %d\n", MAX_ALLOCS);
    blockSize = getInt(argv[2], GN_GT_0 | GN_ANY_BASE, "block-size");

    freeStep = (argc > 3) ? getInt(argv[3], GN_GT_0, "step") : 1;
    freeMin = (argc > 4) ? getInt(argv[4], GN_GT_0, "min") : 1;
    freeMax = (argc > 5) ? getInt(argv[5], GN_GT_0, "max") : numAllocs;

    if (freeMax > numAllocs)
        cmdLineErr("free-max > num-allocs\n");
    printf("Initial program break:      %10p\n", sbrk(0));  // 初始堆顶地址

    printf("Allocating %d * %d bytes\n", numAllocs, blockSize);
    for (j = 0; j < numAllocs; j++) {
        ptr[j] = malloc(blockSize); // 没有一次性分配完，而是一个一个分，防止空间不够
        if (ptr[j] == NULL)
            errExit("malloc");
    }

    printf("Program break is now:       %10p\n", sbrk(0));  // 分配完全之后的堆顶地址，应当比初始地址小（由于堆的生长方向）
    printf("Free blocks from %d to %d in steps of %d\n", freeMin, freeMax, freeStep);
    for (j = freeMin - 1; j < freeMax; j += freeStep)
        free(ptr[j]);
    
    printf("After free(), program break is: %10p\n", sbrk(0));

    exit(EXIT_SUCCESS);
}