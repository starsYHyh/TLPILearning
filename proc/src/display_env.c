#include "tlpi_hdr.h"

extern char **environ;

int main(int argc, char *argv[]) {
    char **ep;
    for (ep = environ; *ep != NULL; ep++) 
        puts(*ep);
    char *shpos = getenv("SHELL");
    
    puts(shpos);
    exit(EXIT_SUCCESS);
}