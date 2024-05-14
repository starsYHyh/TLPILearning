#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdlib.h>
#include "tlpi_hdr.h"

int main() {
    int fd;
    char template[] = "/home/firefly/Codes/C/TLPI/fileio/data/tempXXXXXX";
    fd = mkstemp(template);
    if (fd == -1)
        errExit("mkstemp");
    printf("Generated temp file is %s\n", template);
    unlink(template);

    if (close(fd) == -1)
        errExit("close");
}