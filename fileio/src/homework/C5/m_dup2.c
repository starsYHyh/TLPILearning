#include <sys/stat.h>
#include <fcntl.h>
#include "tlpi_hdr.h"
/*
第五章课后
使用 fcntl()和 close()（若有必要）来实现dup2()。
*/
int main(int argc, char *argv[]) {
    if (argc < 3 || strcmp(argv[1], "--help") == 0)
        usageErr("%s srcfile new-file-discriber", argv[0]);
    int oldFd = open(argv[1], O_RDONLY), newFd = atoi(argv[2]);
    if (oldFd == -1)
        errExit("open srcfile");
    if (fcntl(oldFd, F_GETFL) == -1)
        errExit("EBADF");        
    if (newFd == oldFd)
        exit(EXIT_SUCCESS);
    close(newFd);
    newFd = fcntl(oldFd, F_DUPFD, newFd);
    printf("oldFd = %d, newFd = %d\n", oldFd, newFd);
}