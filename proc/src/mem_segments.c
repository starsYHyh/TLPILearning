#include <stdio.h>
#include <stdlib.h>

char globBuff[65536];   // Uninitialized data segment
int primes[] = {2, 3, 5, 7};    // Initialized data segment

static int square(int x) {
    int result; // Allocated in frame for square()

    result = x * x; 
    return result;  // Return value passed via register
}

static void doCalc(int val) {   // Allocated in frame for doCalc()
    printf("The square of %d is %d\n", val, square(val));

    if (val < 1000) {
        int t;  // Allocated in frame for doCalc()
         
        t = val * val * val;
        printf("The cube of %d is %d\n", val, t);
    }
}

int main(int argc, char *argv[]) {  // Allocated in frame for main()
    static int key = 9937;  // Initialized data segment
    static int mbuf[10240000]; // Uninitialized data segment
    char *p;    // Allocated in frame for main()

    p = malloc(1024);   // Points to memory in heap segment
    doCalc(key);
    exit(EXIT_SUCCESS);
}

/* 解答第六章课后

因为没有给该数组进行初始化，没有分配实际空间。
而且注意到即使分配了空间，但是static char mbuf[10240000] = {0};也是没有分配空间的。需要将初始值设定为非零。
即使显式地将静态数组 mbuf[10240000] 初始化为0，编译器会将它放入 .bss 段，优化可执行文件的大小。
*/