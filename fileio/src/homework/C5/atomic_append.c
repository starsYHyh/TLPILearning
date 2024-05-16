#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdbool.h>
#include "tlpi_hdr.h"
/*
第五章课后
展示为何以 O_APPEND 标志打开文件来保障操作的原子性是必要的。
使用：./ATOMIC_APPEND filename num-bytes content-to-write [x]
Answer:
1. 经过测试，如果带x参数，同时执行该命令，但是输入不同内容，结果在输出文件中发现内容错位
如aaabbaaaaaabbbbaa
2. 而如果不带x参数，则不会出现上面的情况
3. 且第一种情况生成的文件大小约17M，而第二种约19M

*/
int main(int argc, char *argv[])
{
    int fd, numBytes;
    if (argc < 4 || strcmp(argv[1], "--help") == 0)
        usageErr("%s filename num-bytes content-to-write [x] \n"
                  "'x' means use lseek() instead of O_APPEND\n", argv[0]);
    numBytes = getInt(argv[2], 0, "num-bytes");
    bool useLseek = (argc == 5 && strcmp(argv[4], "-x") == 0) ? true : false;
    int flags = useLseek ? 0 : O_APPEND;
    fd = open(argv[1], flags | O_RDWR | O_CREAT, S_IWUSR | S_IRUSR | S_IWGRP | S_IRGRP | S_IWOTH | S_IROTH);
    if (fd == -1)
        errExit("open");
    while (numBytes--) {
        if (useLseek)
            if (lseek(fd, 0, SEEK_END) == -1)
                errExit("lseek");
        if (write(fd, argv[3], 1) == -1)
            fatal("write() failed");
    }
    if (close(fd) == -1)
        errExit("close");
}