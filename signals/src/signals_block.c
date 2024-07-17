#define _GNU_SOURCE
#include <signal.h>
#include "tlpi_hdr.h"
#include "signal_functions.h"

void printSigSet(const sigset_t *sigSet) {
    for (int sig = 1; sig < NSIG; sig++) 
        if (sigismember(sigSet, sig))
            printf("%s ", strsignal(sig));
    printf("\n");
}

int main(int argc, char *argv[]) {
    sigset_t blockSet, prevMask;

    /* Initialize a signal set to contain SIGINT*/
    sigemptyset(&blockSet);
    sigaddset(&blockSet, SIGINT);

    /* Block SIGINT, save previous signal mask*/
    if (sigprocmask(SIG_BLOCK, &blockSet, &prevMask) == -1)
        errExit("sigprocmask1");
    else 
        printf("SIGINT blocked\n");
    
    /* Code that should not be interrupted by SIGINT */
    /* 
        在前面的代码执行成功的前提下，在循环过程中键入`ctrl+c`，不会打断执行
        但是在循环结束之后，执行sigprocmask以解除锁定SIGINT，当前进程会被立刻中断
        由此可以印证结论：如果解除了对某个等待信号的锁定，那么会立刻将该信号传递给进程
     */
    sigset_t waitingSet;   // 处于等待状态的信号集合
    

    for (int j = 0; j < 5; j++) {
        sigpending(&waitingSet);   // 将处于等待状态的信号存储于该集合中
        printf("waitingSet: ");
        printSigSet(&waitingSet);
        printf("j = %d\n", j);
        sleep(3);
    }

    /* Restore previous signal mask unbocking SIGINT */
    if (sigprocmask(SIG_SETMASK, &prevMask, NULL) == -1)
        errExit("sigprocMask2");
    else
        printf("SIGINT unblocked\n");

    

}