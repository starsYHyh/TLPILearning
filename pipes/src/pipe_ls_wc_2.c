#include <sys/wait.h>
#include "tlpi_hdr.h"

void runls() {
    execlp("ls", "ls", (char *)NULL);
}

void runwc() {
    execlp("wc", "wc", "-l", (char *)NULL); 
}

int main(int argc, char *argv[]) {
    int pfd[2];

    if (pipe(pfd) == -1)
        errExit("pipe");
    
    switch (fork()) {
    case -1:
        errExit("fork");
    case 0:
        if (close(pfd[0]) == -1)    // 子进程关闭写
            errExit("close 1");
        
        if (pfd[1] != STDOUT_FILENO) {
            if (dup2(pfd[1], STDOUT_FILENO) == -1) 
                errExit("dup2 1");
            if (close(pfd[1]) == -1)
                errExit("close 2");
        }
        /*
        在第一个 switch 内创建的子进程执行 execlp("ls", "ls", (char *)NULL); 后，
        将替换其当前进程映像，执行 ls 命令。
        这意味着该子进程不再执行原程序中的后续代码，包括第二个 switch 语句。
        因此，这个子进程不会创建一个子进程的子进程。
        */
        runls();
        errExit("execlp ls");
    default:
        break;
    }

    switch (fork())
    {
    case -1:
        errExit("fork");
    case 0:
        if (close(pfd[1]) == -1)
            errExit("close 3");
        
        if (pfd[0] != STDIN_FILENO) {
            if (dup2(pfd[0], STDIN_FILENO) == -1)
                errExit("dup2 2");
            if (close(pfd[0]) == -1)
                errExit("close 4");
        }
       
        runwc();
        errExit("execlp wc");
    default:
        break;
    }

    if (close(pfd[0]) == -1)
        errExit("close 5");
    if (close(pfd[1]) == -1)
        errExit("close 6");
    if (wait(NULL) == -1)
        errExit("wait 1");
    if (wait(NULL) == -1)
        errExit("wait 2");
    exit(EXIT_SUCCESS);
}