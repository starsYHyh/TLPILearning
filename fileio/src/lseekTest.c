#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include "tlpi_hdr.h"
#include "error_functions.h"

int main() {
    int fd = open("../src01.txt", O_RDWR, S_IRUSR | S_IWUSR);   // 打开文件
    if (fd == -1)
        errExit("open");
    char buffer[20];
    memset(buffer, 0, sizeof(buffer));

    int pos1 = lseek(fd, 3, SEEK_SET);  // 从开头偏移3个字节往后读出4个字符的内容
    printf("pos1 = %d\n", pos1); 
    if (read(fd, buffer, 4) == -1)  
        errExit("read");

    int pos2 = lseek(fd, 2, SEEK_CUR);  // 从当前位置往后的2个字节后写入读出的4个字符内容
    printf("pos2 = %d\n", pos2);
    if (write(fd, buffer, strlen(buffer)) == -1)
        errExit("write");
    
    char *app = "NEWSTRING";
    int pos3 = lseek(fd, 3, SEEK_END);  // 在结尾往后偏移3个字节处写入新的字符串
    printf("pos3 = %d\n", pos3);
    if (write(fd, app, strlen(app)) == -1)
        errExit("close");

    if (close(fd) == -1)    // 关闭文件
        errExit("close");
}