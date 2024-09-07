#define _GNU_SOURCE     /* Get strsignal() declaration from <string.h> */
#include <string.h>
#include <signal.h>
#include <stdbool.h>
#include "tlpi_hdr.h"

/*
    SIGFPE信号处理器函数
*/
static void sigfpeCatcher(int sig)
{
    printf("Caught signal %d (%s)\n", sig, strsignal(sig));
    sleep(1);                   /* Slow down execution of handler */
}

int main(int argc, char *argv[])
{
    /*
        参数有三种选择，
        第一种，无参数，为捕获信号并进入处理器函数
        第二种，-i，为忽略信号
        第三种，-b，为阻塞信号
    */
    if (argc > 1 && strchr(argv[1], 'i') != NULL) { // strchr用于查找第一次出现'i'的位置，并返回以其为首的字符串
        printf("Ignoring SIGFPE\n");
        if (signal(SIGFPE, SIG_IGN) == SIG_ERR)    // i-忽略SIGFPE
             errExit("signal");
    } else {
        printf("Catching SIGFPE\n");

        struct sigaction sa;
        sigemptyset(&sa.sa_mask);   // 不阻塞任何信号
        sa.sa_flags = SA_RESTART;   // 自动重启
        sa.sa_handler = sigfpeCatcher;
        if (sigaction(SIGFPE, &sa, NULL) == -1)
            errExit("sigaction");
    } 
        
    bool blocking = argc > 1 && strchr(argv[1], 'b') != NULL;   // b-阻塞信号
    sigset_t prevMask;
    if (blocking) {
        printf("Blocking SIGFPE\n");

        sigset_t blockSet;
        sigemptyset(&blockSet);
        sigaddset(&blockSet, SIGFPE);
        if (sigprocmask(SIG_BLOCK, &blockSet, &prevMask) == -1)
            errExit("sigprocmask");
    }

    printf("About to generate SIGFPE\n");   // 准备生成SIGFPE
    int x, y;
    y = 0;
    x = 1 / y;  // 除零操作，生成SIGFPE
    y = x;      /* Avoid complaints from "gcc -Wunused-but-set-variable" */

    if (blocking) {
        printf("Sleeping before unblocking\n");
        sleep(2);
        printf("Unblocking SIGFPE\n");
        if (sigprocmask(SIG_SETMASK, &prevMask, NULL) == -1)
            errExit("sigprocmask");
    }

    printf("Shouldn't get here!\n");
    exit(EXIT_FAILURE);
}
