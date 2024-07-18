#include <signal.h>
#include "tlpi_hdr.h"

/*
发送多个信号
*/

int main(int argc, char *argv[])
{
    int numSigs, sig, j;
    pid_t pid;

    // pid为要发送到的进程PID，num-sigs为要发送的次数，sig-num为要发送的信号值
    if (argc < 4 || strcmp(argv[1], "--help") == 0)
        usageErr("%s pid num-sigs sig-num [sig-num-2]\n", argv[0]);
    pid = getLong(argv[1], 0, "PID");
    numSigs = getInt(argv[2], GN_GT_0, "num-sigs");
    sig = getInt(argv[3], 0, "sig-num");

    /* Send signals to receiver */
    printf("%s: sending signal %d to process %ld %d times\n", argv[0], sig, (long)pid, numSigs);

    for (int j = 0; j < numSigs; j++)
        if (kill(pid, sig) == -1)
            errExit("kill");

    /* If a fourth command-line argument was specified, send that signal */
    // 如果第四个参数存在的话，则表达的含义为本进程发送完sig-num一共num-sigs次数之后，再发送一次sig-num-2
    if (argc > 4)
        if (kill(pid, getInt(argv[4], 0, "sig-num-2")) == -1)
            errExit("kill");

    printf("%s: exiting\n", argv[0]);
    exit(EXIT_SUCCESS);
}