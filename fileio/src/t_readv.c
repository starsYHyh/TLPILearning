#include <sys/stat.h>
#include <sys/uio.h>
#include <fcntl.h>
#include "tlpi_hdr.h"

/* 测试分散输入 */
int main(int argc, char *argv[]) {
    int fd; 
    struct iovec iov[3];    // Structure for scatter/gather I/O.
    int x;                  // First buffer
#define STR_SIZE 20
    char str[STR_SIZE];     // Second buffer
    struct stat myStruct;   // Third buffer
    ssize_t numRead, totRequired;

    if (argc != 2 || strcmp(argv[1], "--help") == 0)
        usageErr("%s file\n", argv[0]);
    fd = open(argv[1], O_RDONLY);
    if (fd == -1)
        errExit("open");
    totRequired = 0;

    // 将文件中的内容分散输入到三个缓冲区中
    iov[0].iov_base = str;
    iov[0].iov_len = STR_SIZE;
    totRequired += iov[0].iov_len;

    iov[1].iov_base = &x;
    iov[1].iov_len = sizeof(x);
    totRequired += iov[1].iov_len;

    iov[2].iov_base = &myStruct;
    iov[2].iov_len = sizeof(myStruct);
    totRequired += iov[2].iov_len;

    numRead = readv(fd, iov, 3);
    if (numRead == -1)
        errExit("readv");
    
    if (numRead < totRequired)
        printf("Read fewer bytes than requested\n");
    printf("total bytes requested: %ld; bytes read: %ld\n", (long)totRequired, (long)numRead);
    exit(EXIT_SUCCESS);    
} 