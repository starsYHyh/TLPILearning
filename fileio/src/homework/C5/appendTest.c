#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include "tlpi_hdr.h"
/*
第五章课后
编写一个程序，使用 O_APPEND 标志并以写方式打开一个已存在的文件，且将
文件偏移量置于文件起始处，再写入数据。数据会显示在文件中的哪个位置？为什么？
Answer:虽然文件偏移量置于文件起始处，但是最终依然在文件结尾处添加字符
*/
int main(int argc, char *argv[]) {
    int fd;
    if (argc < 2 || strcmp(argv[1], "--help") == 0) 
        usageErr("%s pathname", argv[0]);
    fd = open(argv[1], O_RDWR | O_APPEND);
    if (fd == -1)
        errExit("open");
    lseek(fd, 0, SEEK_SET);
    if (write(fd, "test append", 11) == -1)
        errExit("write");
    if (close(fd) == -1)
        errExit("close");
}