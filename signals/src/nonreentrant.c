#define _XOPEN_SOURCE 600
#include <unistd.h>
#include <signal.h>
#include <string.h>
#include <crypt.h>  // 如果不加上该头文件，会出现implicit declaration of function ‘crypt’的错误
#include "tlpi_hdr.h"

static char *str2;
static int handled = 0;

// 设置处理器函数，一旦遇上SIGINT，便对str2进行加密
static void handler(int sig) {
    /*
        针对于undefined reference to `crypt'的错误，stackoverflow有以下方案
        crypt.c:(.text+0xf1): undefined reference to 'crypt' is a linker error.
        Try linking with `-lcrypt` : gcc crypt.c -lcrypt.
        即，在CMakeLists.txt文件中加入link_libraries(crypt)
    */
    crypt(str2, "xx");
    handled++;
}

int main(int argc, char *argv[]) {
    char *cr1;
    int callNum, mismatch;
    struct sigaction sa;

    if (argc != 3) 
        usageErr("%s str1 str2\n", argv[0]);

    str2 = argv[2];

    // 对str1进行加密，并将结果保存到独立缓冲区中
    cr1 = strdup(crypt(argv[1], "xx"));

    if (cr1 == NULL)
        errExit("strdup");
    sigemptyset(&sa.sa_mask);   // 初始化在执行处理器函数时将阻塞的信号
    sa.sa_flags = 0;    // 即sa.sa_flags = SIG_BLOCK
    sa.sa_handler = handler;    // 设置信号处理器函数的地址

    if (sigaction(SIGINT, &sa, NULL) == -1)
        errExit("sigaction");

    for (callNum = 1, mismatch = 0; ; callNum++) {
        if (strcmp(crypt(argv[1], "xx"), cr1) != 0) {
            mismatch++;
            printf("Mismatch on call %d (mismatch=%d handled=%d)\n", callNum, mismatch, handled);
        }
    }
}