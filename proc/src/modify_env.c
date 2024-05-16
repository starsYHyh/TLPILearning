#define _GNU_SOURCE
#include <stdlib.h>
#include "tlpi_hdr.h"

extern char **environ;

int main(int argc, char *argv[]) {
    int j;
    char **ep;
    if (argc < 2 || strcmp(argv[1], "--help") == 0) 
        usageErr("Arguments example:\n"
                "\"HELLO=I AM FINE\" SHELL=/bin/zsh BYE=GOOD\n"
                "If there are spaces, use quotes"
        );
    clearenv(); // Erase entire environment
    for (j = 1; j < argc; j++) 
        if (putenv(argv[j]) != 0)
            errExit("putenv: %s", argv[j]);
    
    if (setenv("HELLO", "Hello world", 0) == -1)    // do not overwrite
        errExit("setenv");
    
    unsetenv("BYE");

    for (ep = environ; *ep != NULL; ep++) 
        puts(*ep);
    
    exit(EXIT_SUCCESS);
}