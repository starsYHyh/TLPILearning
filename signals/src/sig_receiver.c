#define _GNU_SOURCE
#include <signal.h>
#include "tlpi_hdr.h"
#include "signal_functions.h"

/*
捕获信号并对其计数
*/

static int sigCnt[NSIG];    // Counts deliveries of each signal
static volatile sig_atomic_t gotSigint = 0; // Set nonzero if SIGINT is delivered

static void handler(int sig) {
    if (sig == SIGINT)
        gotSigint = 1;
    else 
        sigCnt[sig]++;
}

int main(int argc, char *argv[]) {
    int n, numSecs;
    sigset_t pendingMask, blockingMask, emptyMask;  // 分别存储等待的信号，信号掩码
    printf("%s: PID is %ld\n", argv[0], (long) getpid());

    // Step1
    // 为所有信号设置同一个处理器函数
    for (n = 1; n < NSIG; n++)  // Same handler for all signals
        (void)signal(n, handler);   // Ignore errors
    
    /* If a sleep time was specified, temporarily block all signalssleep (while another process sends us signals), 
        and then display the mask of pending signals and unblock all signals */
    if (argc > 1) {
        // Step2
        // 将所有的信号阻塞
        numSecs = getInt(argv[1], GN_GT_0, NULL);   // 睡眠的时间
        sigfillset(&blockingMask);  // 将所有信号放入集合中
        if (sigprocmask(SIG_SETMASK, &blockingMask, NULL) == -1)    // 初始化信号掩码，即阻塞所有信号
            errExit("sigprocmask");
        
        // Step3
        // 睡眠
        printf("%s: sleeping for %d seconds\n", argv[0], numSecs);
        sleep(numSecs);

        // Step4
        // 展示当前正在等待的信号
        if (sigpending(&pendingMask) == -1) // 睡醒之后获得正在等待的信号
            errExit("sigpending");
        
        printf("%s: pendging signals are: \n", argv[0]);    // 打印这些信号
        printSigset(stdout, "\t\t", &pendingMask);

        // Step5
        // 取消阻塞所有信号，并根据处理器函数自动处理这些信号
        sigemptyset(&emptyMask);
        if (sigprocmask(SIG_SETMASK, &emptyMask, NULL) == -1)   // 将所有信号取消阻塞
            errExit("sigprocmask");
    }    


    while (!gotSigint)  // 当检测到SIGINT信号（ctrl+c）时，将根据handler中的处理，将gotsigint设置为1，将会退出该循环
        continue;   // 当处于该循环中，本进程会一直占用CPU，此时可以由其他进程向本进程发送信号
    
    /*
    这里有两种情况，可以证明在分别进程运行时和进程睡眠时对接收到的多次同一信号的处理方式不同
    1. 若argc==1，则说明本进程不睡眠，则不会发生上述if内的操作，即不会把信号阻塞，
        信号将不会处于等待状态，当对方进程发送同一信号多次时，对于该信号，本进程会捕捉多次，这取决于进程调度算法
    2. 若argc!=1，则说明本进程睡眠，若对方进程在本进程睡眠时发送了同一信号多次，
        信号将会处于等待状态，但是当本进程醒来时并取消阻塞之后，对于同一信号，仅会传递一次
    */

    for (n = 1; n < NSIG; n++) // 打印捕捉到的信号次数
        // 这里只打印出非SIGINT的信号次数，因为根据处理器函数，对于SIGINT信号，不会记录在sigCnt数组中
        if (sigCnt[n] != 0)
            printf("%s: signal %d caught %d time%s\n", argv[0], n, sigCnt[n], \
            (sigCnt[n] == 1) ? "" : "s");
    
    exit(EXIT_SUCCESS);
}