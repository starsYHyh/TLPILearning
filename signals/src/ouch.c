#include <signal.h>
#include "tlpi_hdr.h"

/*
为 SIGINT 信号安装一个处理器程序

*/

static void sigHandler(int sig) {
    printf("sigID:%d\t Ouch!\n", sig);
}

int main(int argc, char *argv[]) {
    int j;
    if (signal(SIGINT, sigHandler) == SIG_ERR)
        errExit("signal");
    for (j = 0; ; j++) {
        printf("%d\n", j);
        sleep(3);
    }
}