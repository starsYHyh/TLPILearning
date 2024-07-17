#include "tlpi_hdr.h"
#include <signal.h>

#define _GNU_SOURCE
#include <string.h>

/*
使用 kill()系统调用
1. 调用`./OUCH &`，以获得进程id，例如13946
2. 调用`./T_KILL 13946 15`，表示发送终止信号给13946进程
*/

int main(int argc, char *argv[])
{
    int s, sig;
    if (argc != 3 || strcmp(argv[1], "--help") == 0)
        usageErr("%s sig-num pid\n", argv[0]);

    sig = getInt(argv[2], 0, "sig-num");
    printf("Tring to send signal %s to process %s\n", strsignal(sig), argv[1]);
    s = kill(getLong(argv[1], 0, "pid"), sig); // kill()函数虽然未被定义，但是可以编译通过，且可以运行
    if (sig != 0)
    {
        if (s == -1)
            errExit("kill");
    }
    else
    {
        if (s == 0)
        {
            printf("Process exists and we can send it a signal\n");
        }
        else
        {
            if (errno == EPERM)
                printf("Process exists, but we don't have permission to send it a signal\n");
            else if (errno == ESRCH)
                printf("Process doesn't exist\n");
            else
                errExit("kill");
        }
    }
    printf("Done!\n");
    exit(EXIT_SUCCESS);
}