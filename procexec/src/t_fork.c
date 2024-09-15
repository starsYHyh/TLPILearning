#include "tlpi_hdr.h"

static int idata = 111; // 分配在数据段的数据

/*
    调用fork()
*/
int main(int argc, char *argv[]) {
    int istack = 222;   // 分配在栈段的数据
    int *iheap = malloc(sizeof(int));   // 分配在堆段的数据
    *iheap = 1;
    pid_t childPid;

    switch (childPid = fork())
    {
    case -1:
        errExit("fork");
        break;
    case 0:
        idata *= 3;
        istack *= 3;
        *iheap = 0;
        break;

    default:
        sleep(3);   // 睡眠，以使得子进程可以先运行，确保可以子进程先结束
        break;
    }
    printf("PID=%ld %s idata=%d istack=%d *iheap=%d\n", (long)getpid(), 
        (childPid == 0) ? "child" : "(parent)", idata, istack, *iheap
    );
    exit(EXIT_SUCCESS);
}

/*
    PID=32663 child idata=333 istack=666 *iheap=0
    PID=32662 (parent) idata=111 istack=222 *iheap=1
    证明了：
    这两个进程将执行相同的程序文本段，但却各自拥有不同的栈段、数据段以及堆段拷贝。

*/