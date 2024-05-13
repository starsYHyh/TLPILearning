#include <sys/stat.h>
#include <fcntl.h>
#include "tlpi_hdr.h"

int main() {
    int flags, accessMode, fd;
    // GETFL
    fd = open("../src/cp.c", O_RDWR | O_SYNC, S_IRUSR | S_IWUSR);
    flags = fcntl(fd, F_GETFL);
    if (flags == -1)
        errExit("fcntl");
    if (flags & O_SYNC) 
        printf("writes are synchronized\n");
    accessMode = flags & O_ACCMODE;
    if (accessMode == O_WRONLY || accessMode == O_RDWR)
        printf("file is writable!\n");
    if (accessMode == O_RDONLY || accessMode == O_RDWR)
        printf("file is readable!\n");

    // SETFL
    flags = fcntl(STDIN_FILENO, F_GETFL);
    if (flags == -1)
        errExit("fcntl");
    flags |= O_APPEND;
    if (fcntl(fd, F_SETFL, flags) == -1)
        errExit("fcntl");
}