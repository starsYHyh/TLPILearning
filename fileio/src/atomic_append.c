#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
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
        usageErr("%s filename num-bytes content-to-write [x]", argv[0]);
    numBytes = atol(argv[2]);
    if (argc == 5 && strcmp(argv[4], "-x") == 0)
    {
        fd = open(argv[1], O_RDWR | O_CREAT, 
            S_IWUSR | S_IRUSR | S_IWGRP | S_IRGRP | S_IWOTH | S_IROTH);
        if (fd == -1)
            errExit("open");
        while (numBytes--)
        {
            lseek(fd, 0, SEEK_END);
            write(fd, argv[3], 1);
        }
    }
    else
    {
        fd = open(argv[1], O_RDWR | O_APPEND | O_CREAT, 
            S_IWUSR | S_IRUSR | S_IWGRP | S_IRGRP | S_IWOTH | S_IROTH);
        if (fd == -1)
            errExit("open");
        while (numBytes--)
        {
            write(fd, argv[3], 1);
        }
    }
    if (close(fd) == -1)
        errExit("close");
}