#include <sys/stat.h>
#include <fcntl.h>
#include <sys/types.h>
#include "tlpi_hdr.h"
/*
第五章课后
使用 read()、write()以及 malloc 函数包（见 7.1.2 节）中的必要函数以实现 readv()和 writev()功能。
*/

struct mIov {
    void *buf;
    ssize_t len;
};

ssize_t mReadv(int fd, const struct mIov *iov, int count) {
    ssize_t numRead = -1;
    for (int i = 0; i < count; i++) 
        numRead += read(fd, iov[i].buf, iov[i].len);
    return numRead == -1 ? -1 : numRead + 1;
}

ssize_t mWritev(int fd, const struct mIov *iov, int count) {
    ssize_t numWrite = -1;
    // 如果要求写入的size比实际上能提供的size要小，则不足的将会以空字节填充
    for (int i = 0; i < count; i++) 
        numWrite += write(fd, iov[i].buf, iov[i].len);
    return numWrite == -1 ? -1 : numWrite + 1;
}

int main(int argc, char *argv[]) {
    if (argc < 3 || strcmp(argv[1], "--help") == 0)
        usageErr("%s srcfile dstfile", argv[0]);
    int srcFd = open(argv[1], O_RDONLY);
    if (srcFd == -1)
        errExit("open src");
    // total size of buffers that are need to be filled and size of that are actually read from file
    ssize_t totRequired = 0, numRead = 0;
    // total size of buffers that can be written into dstfile and size of that are actually written into file
    ssize_t totSupplied = 0, numWrite = 0;

    char *buf1, *buf2, *buf3;
    int bsize1 = 10, bsize2 = 20, bsize3 = 40;
    buf1 = malloc(sizeof(char) * bsize1);
    buf2 = malloc(sizeof(char) * bsize2);
    buf3 = malloc(sizeof(char) * bsize3);

    struct mIov iov[3];
    iov[0].buf = buf1;
    iov[0].len = bsize1;
    totRequired += iov[0].len;

    iov[1].buf = buf2;
    iov[1].len = bsize2;
    totRequired += iov[1].len;

    iov[2].buf = buf3;
    iov[2].len = bsize3;
    totRequired += iov[2].len;

    numRead = mReadv(srcFd, iov, 3);
    if (numRead == -1)
        errExit("mReadv");
    if (numRead < totRequired)
        printf("Read fewer bytes than requested\n");
    printf("total bytes requested: %ld; bytes read: %ld\n", (long)totRequired, (long)numRead);

    int dstFd = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 
        S_IWUSR | S_IRUSR | S_IWGRP | S_IRGRP | S_IWOTH | S_IROTH);
    totSupplied = numRead;  
    numWrite = mWritev(dstFd, iov, 3);
    if (numWrite == -1)
        errExit("writev");

    if (numWrite > totSupplied)
        printf("Write more bytes than supplied\n");
    printf("total bytes supplied: %ld; bytes write: %ld\n", (long)totSupplied, (long)numWrite);
    exit(EXIT_SUCCESS);

}