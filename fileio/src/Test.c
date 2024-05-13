#include <unistd.h>
#include <fcntl.h>
#include "tlpi_hdr.h"

int main() {
    int fd1, fd2;
    fd1 = open("../data/tfile02", O_RDWR | O_APPEND);
    dup2(fd1, fd2);
    write(fd1, "abc", 3);
    write(fd2, "def", 3);
    printf("%d\n", close(fd1));
    printf("%d\n", close(fd2));
}