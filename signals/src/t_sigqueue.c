#define _POSIX_C_SOURCE 199309  // 使用1993年发布的POSIX.1b标准（也称为POSIX.4标准）
#include <signal.h>
#include "tlpi_hdr.h"

/*
    发送实时信号
*/

int main(int argc, char *argv[]) {
    int sig, numSigs, j, sigData;
    union sigval sv;

    if (argc < 4 || strcmp(argv[1], "--help") == 0)
        usageErr("%s pid sig-num data [num-sigs]\n", argv[0]);
    
    // 打印进程ID和用户ID
    printf("%s: PID is %ld, UID is %ld\n", argv[0], (long)getpid(), (long)getuid());

    // 信号及其附带整数
    sig = getInt(argv[2], 0, "sig-num");
    sigData = getInt(argv[3], GN_ANY_BASE, "data");

    // 发送信号的个数
    numSigs = (argc > 4) ? getInt(argv[4], GN_GT_0, "num-sigs") : 1;

    for (j = 0; j < numSigs; j++) {
        sv.sival_int = sigData + j;
        if (sigqueue(getLong(argv[1], 0, "pid"), sig, sv) == -1) 
            errExit("sigqueue %d", j);
    }
    exit(EXIT_SUCCESS);
}