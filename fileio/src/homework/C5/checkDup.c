#include <sys/stat.h>
#include <fcntl.h>
#include "tlpi_hdr.h"

/*
第五章课后
编写一程序，验证文件描述符及其副本是否共享了文件偏移量和打开文件的状态标志。
Answer：一直共享，改变一个，另一个也改变
*/

int main() {
    int flag1, flag2, fd1, fd2;
    off_t off1, off2;
    fd1 = open("../data/src01.txt", O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    lseek(fd1, 10, SEEK_SET);   // 手动更改偏移量

    off1 = lseek(fd1, 0, SEEK_CUR);
    flag1 = fcntl(fd1, F_GETFL);

    fd2 = dup(fd1); // 复制文件描述符
    off2 = lseek(fd2, 0, SEEK_CUR);
    flag2 = fcntl(fd2, F_GETFL);

    printf("off1 = %ld, flag1 = %d\noff2 = %ld, flag2 = %d\n", off1, flag1, off2, flag2);
    write(fd1, "TEST", 4);  // 通过fd1写入数据
    fcntl(fd2, F_SETFL, O_APPEND);  // 通过fd2更改打开方式

    off1 = lseek(fd1, 0, SEEK_CUR);
    flag1 = fcntl(fd1, F_GETFL);

    off2 = lseek(fd2, 0, SEEK_CUR);
    flag2 = fcntl(fd2, F_GETFL);
    printf("off1 = %ld, flag1 = %d\noff2 = %ld, flag2 = %d\n", off1, flag1, off2, flag2);
}