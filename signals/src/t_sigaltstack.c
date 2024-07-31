#define _GNU_SOURCE
#include <string.h>
#include <signal.h>
#include "tlpi_hdr.h"

static void sigsegvHandler(int sig) {
    int x;
    // 捕捉信号，并通过局部变量的位置来大致判断为当前函数所分配的空间处于什么位置
    printf("Caught signal %d (%s)\n", sig, strsignal(sig));
    printf("Top of handler stack near %10p\n", (void *)&x);
    // fflush(NULL)的作用是在程序异常终止前确保所有标准输出缓冲区的数据都被写入到相应的输出设备。
    fflush(NULL);
    _exit(EXIT_FAILURE);
}

static void overflowStack(int callNum) {
    char a[100000]; // 此类分配数组方式为栈上分配
    printf("Call %4d - top of stack near %10p\n", callNum, &a[0]);
    overflowStack(callNum + 1); // 无限递归调用，不断在栈上分配空间，每次分配100000字节以上
}

int main(int argc, char *argv[]) {
    stack_t sigstack;
    struct sigaction sa;
    int j;

    printf("Top of standard stack is near %10p\n", (void *)&j);

    // 分配备用栈并通知内核
    // 在堆当中分配备用栈
    sigstack.ss_sp = malloc(SIGSTKSZ);
    if (sigstack.ss_sp == NULL)
        errExit("malloc");
    sigstack.ss_size = SIGSTKSZ;    // 默认栈大小
    sigstack.ss_flags = 0;
    // sig alt stack
    if (sigaltstack(&sigstack, NULL) == -1)
        errExit("sigaltstack");
    // sbrk(0)返回当前进程的堆顶地址
    printf("Alternate stack is at %10p-%p\n", sigstack.ss_sp, (char *)sbrk(0) - 1);

    // 设置信号处理器函数，并且不阻塞任何信号
    sa.sa_handler = sigsegvHandler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_ONSTACK;
    if (sigaction(SIGSEGV, &sa, NULL) == -1)
        errExit("sigaction");
    // 递归调用overflowStack()
    overflowStack(1);
}