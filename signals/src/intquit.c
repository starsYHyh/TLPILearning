#include <signal.h>
#include "tlpi_hdr.h"

/*
为两个不同信号设置同一个处理器函数
*/

static void sigHandler(int sig) {
    static int count = 0;
    if (sig == SIGINT) {    // 若是捕捉到SIGINT，则打印信息并返回
        count++;
        printf("Caught SIGINT (%d)\n", count);
        return;
    }

    printf("Caught SIGQUIT - that's all folks!\n"); // 若是捕捉到SIGQUIT，则直推退出执行
    exit(EXIT_SUCCESS);
}

int main(int argc, char *argv) {
    // 为两个信号设置处理器函数
    if (signal(SIGINT, sigHandler) == SIG_ERR)  // `ctrl+c`
        errExit("signal");
    if (signal(SIGQUIT, sigHandler) == SIG_ERR) // `ctrl+\`
        errExit("signal");

    for (;;)
        pause();    // 在信号到来之前挂起
}