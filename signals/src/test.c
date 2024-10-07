#include "tlpi_hdr.h"
#include <signal.h>
#include <sys/wait.h>
#define _GNU_SOURCE

static void sigchldHandler(int sig) {
    int childPid, status;
    while ((childPid = waitpid(-1, &status, WNOHANG)) > 0) {
        printf("child %d stopped!\n");
    }
}

int main(int argc, char *argv[]) {
    int j, sigCnt;
    sigset_t blockMask, emptyMask;
    struct sigaction sa;
}
