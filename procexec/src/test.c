#define _GNU_SOURCE
#include "tlpi_hdr.h"
#include <signal.h>
#include <sys/wait.h>

static void sigchldHandler(int sig) {
    int childPid, status;
    while ((childPid = waitpid(-1, &status, WNOHANG)) > 0) {
        printf("child %d stopped!\n", childPid);
    }
}

int main(int argc, char *argv[]) {
    struct sigaction sa;

    setbuf(stdout, NULL);
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    sa.sa_handler = sigchldHandler;

    if (sigaction(SIGCHLD, &sa, NULL) == -1)
        errExit("sigaction");
    
    if (fork() == 0) {
        if (fork() == 0) {
            sleep(4);
            exit(EXIT_SUCCESS);
        }
        sleep(2);
        exit(EXIT_SUCCESS);
    }
    for (;;)
        pause();
}
