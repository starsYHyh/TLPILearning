#include <sys/stat.h>
#include <fcntl.h>
#include <ctype.h>
#include "tlpi_hdr.h"

#ifndef BUF_SIZE
#define BUF_SIZE 1024
#endif

// 第四章课后
// 将一个文件复制到一个或多个文件中
// 当使用该程序复制一个包含空洞（连续的空字节）的普通文件时，目标文件的空洞与源文件保持一致。
int main(int argc, char *argv[]) {
    int inputFd, outputFd, openFlags, ap;
    mode_t filePerms;
    ssize_t numRead, numWritten;
    char buf[BUF_SIZE];

    if (argc < 3 || strcmp(argv[1], "--help") == 0)
        usageErr("%s srcfile dstfile\n", argv[0]);
    inputFd = open(argv[1], O_RDONLY);
    if (inputFd == -1) 
        errExit("opening file %s", argv[1]);
    
    openFlags = O_CREAT | O_WRONLY | O_TRUNC;
    filePerms = S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;

    for (ap = 2; ap < argc; ap++) {
        lseek(inputFd, 0, SEEK_SET);    // 重置读文件的读取位置
        outputFd = open(argv[ap], openFlags, filePerms);

        if (outputFd == -1)
            errExit("error in opening file %s", argv[ap]);
        while ((numRead = read(inputFd, buf, BUF_SIZE)) != 0) 
            if (write(outputFd, buf, numRead) != numRead)
                fatal("couldn't write whole buffer");
        
        if (numRead == -1)
            errExit("error in reading file %s", argv[ap]);
        
        if (close(outputFd) == -1)
            errExit("cloes output %s", argv[ap]);

    }
    if (close(inputFd) == -1)
        errExit("close input");
    exit(EXIT_SUCCESS);
}