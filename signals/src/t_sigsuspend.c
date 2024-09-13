#define _GNU_SOURCE
#include <string.h>
#include <signal.h>
#include <time.h>
#include "tlpi_hdr.h"
#include "signal_functions.h"

static volatile sig_atomic_t gotSigquit = 0;

static void handler(int sig) {
    printf("Caught signal %d (%s)\n", sig, strsignal(sig));

    // 如果接收到了SIGQUIT(ctrl+\)，则退出循环，确保不会死循环
    if (sig == SIGQUIT)
        gotSigquit = 1;
}

int main(int argc, char *argv[]) {
    int loopNum;
    time_t startTime;
    sigset_t origMask, blockMask;
    struct sigaction sa;

    // 显示掩码的初始值
    printSigMask(stdout, "Initial signal mask is:\n");

    sigemptyset(&blockMask);
    sigaddset(&blockMask, SIGINT);
    sigaddset(&blockMask, SIGQUIT);
    // 将SIGINT和SIGQUIT置入掩码
    if (sigprocmask(SIG_BLOCK, &blockMask, &origMask) == -1)
        errExit("sigprocMask - SIG_BLOCK");
    
    // 处理器信号函数不阻塞任何信号
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    sa.sa_handler = handler;
    if (sigaction(SIGINT, &sa, NULL) == -1)
        errExit("sigaction");
    if (sigaction(SIGQUIT, &sa, NULL) == -1)
        errExit("sigaction"); 

    // 一直循环，知道接收到SIGQUIT
    for (loopNum = 1; !gotSigquit; loopNum++) {
        printf("=== LOOP %d\n", loopNum);

        // 开始进入临界区，打印信号掩码
        printSigMask(stdout, "Starting critical section, signal mask is:\n");
        // 循环持续四秒
        for (startTime = time(NULL); time(NULL) < startTime + 4;)
            continue;
        // 打印等待的信号
        printPendingSigs(stdout, "Before sigsuspend() - pending signals:\n");
        if (sigsuspend(&origMask) == -1 && errno != EINTR)
            errExit("sigsuspend");
        
    }
    // 解除阻塞
    if (sigprocmask(SIG_SETMASK, &origMask, NULL) == -1)   
        errExit("sigprocmask - SIG_SETMASK");
    
    printSigMask(stdout, "=== Exited loop\nRestored signal mask to:\n");

    exit(EXIT_SUCCESS);
}