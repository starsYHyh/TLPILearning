#include "tlpi_hdr.h"
#include <sys/stat.h>
#include <fcntl.h>

#ifndef BUF_SIZE
#define BUF_SIZE 1024
#endif

/*
第四章课后
从标准输入中读取数据，直至文件结尾，随后将数据写入标准输出和命令行参数所指定的文件。
*/
int main(int argc, char *argv[]) {
    Boolean isAppend = FALSE;
    if (argc < 2 || strcmp(argv[1], "--help") == 0 || 
            (strcmp(argv[1], "-a") == 0 && argc < 3))
        usageErr("%s outputfile ...\n", argv[0]);
    if (strcmp(argv[1], "-a") == 0) 
        isAppend = TRUE;


    int intputFd, outputFd, openFlags, ap;
    mode_t filePerms;
    ssize_t numRead, numWritten;
    char buffer[BUF_SIZE];
    memset(buffer, 0, BUF_SIZE);
    if (isAppend) {
        openFlags = O_CREAT | O_WRONLY | O_APPEND;
        ap = 2;
    } else {
        openFlags = O_CREAT | O_WRONLY | O_TRUNC;
        ap = 1;
    }
    filePerms = S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;

    numRead = read(STDIN_FILENO, buffer, BUF_SIZE); // 从标准输入中读取数据
    if (numRead == -1)
        errExit("wrong input");
    
    for (; ap < argc; ap++) {
        outputFd = open(argv[ap], openFlags, filePerms);
        if (outputFd == -1)
            errExit("error in opening file %s", argv[ap]);
        numWritten = write(outputFd, buffer, numRead);
        if (numWritten == -1)
            errExit("error in opening file %s", argv[ap]);
        else if (numWritten != numRead)
            fatal("couldn't write whole buffer into %s", argv[ap]);
        if (close(outputFd) == -1)
            errExit("error in closing file %s", argv[ap]);
    }
    exit(EXIT_SUCCESS);
}