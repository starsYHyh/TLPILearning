#define _FILE_OFFSET_BITS 64
#include <sys/stat.h>
#include <fcntl.h>
#include "tlpi_hdr.h"

/*
第五章课后
请使用标准文件 I/O 系统调用（open()和 lseek()）和 off_t 数据类型修改程序清单 5-3
中的程序。将宏_FILE_OFFSET_BITS 的值设置为 64 进行编译，并测试该程序是否
能够成功创建一个大文件
*/
int main(int argc, char *argv[]) {
    int fd;
    off_t off;
    if (argc != 3 || strcmp(argv[1], "--help") == 0)
        usageErr("%s pathname offset\n", argv[0]);
    fd = open(argv[1], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    if (fd == -1)
        errExit("open64");
    off = atoll(argv[2]);
    if (lseek(fd, off, SEEK_SET) == -1)
        errExit("lseek64");
    if (write(fd, "test", 4) == -1)
        errExit("write");
    exit(EXIT_SUCCESS);
}