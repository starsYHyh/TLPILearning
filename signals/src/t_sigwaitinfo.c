#define _GNU_SOURCE
#include <string.h>
#include <signal.h>
#include <time.h>
#include "tlpi_hdr.h"

int main(int argc, char *argv[]) {
    int sig;
    siginfo_t si;
    sigset_t allSigs;

    if (argc > 1 && strcmp(argv[1], "--help") == 0) 
        usageErr("%s [delay-secs]\n", argv[0]);
    
    printf("%s: PID is %ld\n", argv[0], (long)getpid());

    // 先阻塞所有信号
    sigfillset(&allSigs);
    if (sigprocmask(SIG_SETMASK, &allSigs, NULL) == -1) 
        errExit("sigprocmask");
    printf("%s: signals blocked\n", argv[0]);
    if (argc > 1) {
        printf("%s: about to delay %s seconds\n", argv[0], argv[1]);
        // 睡眠以模拟阻塞
        sleep(getInt(argv[1], GN_GT_0, "delay-secs"));
        printf("%s: finished delay\n", argv[0]);
    }

    for (;;) {
        /*
            sigwaitinfo会根据信号掩码来返回所接收到的信号，以使得在主程序中就可以得知并处理信号，
            但是sigsuspend不行。
            如果程序设计不要求针对信号进行处理，那么就可以直接根据sigwaitinfo返回的信号进行判断。
            对于以等待信号的传递为唯一目的的程序而言，使用信号处理器纯属多此一举。
        */
        sig = sigwaitinfo(&allSigs, &si);
        if (sig == -1)
            errExit("sigwaitinfo");
        
        if (sig == SIGINT || sig == SIGTERM)
            exit(EXIT_SUCCESS);
        
        printf("got signal: %d (%s)\n", sig, strsignal(sig));
        printf("    si_signo = %d, si_code = %d (%s), si_value = %d\n",
            si.si_signo, si.si_code,
            (si.si_code == SI_USER) ? "SI_USER" :
            (si.si_code == SI_QUEUE) ? "SI_QUEUE" : "other",
            si.si_value.sival_int
        );
        printf("    si_pid = %ld, si_uid = %ld", (long)si.si_pid, (long)si.si_uid);
    }
}