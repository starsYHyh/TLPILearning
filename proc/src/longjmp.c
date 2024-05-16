#include <setjmp.h>
#include "tlpi_hdr.h"

static jmp_buf env;

static void f1(int argc) {
    if (argc == 1)
        longjmp(env, 1);    // set val to 1 and jump to line 17
    f2();
}

static void f2(void) {
    longjmp(env, 2);    // set val to 2 and jump to line 17
}

int main(int argc, char *argv[]) {
    switch(setjmp(env)) {
    case 0: // Initialize setjmp()
        printf("Calling f1() after the initial setjmp()\n");
        f1(argc);
        break;
    case 1: // means val == 1
        printf("We jumped back from f1()\n");
        break;
    case 2: // means val == 2
        printf("We jumped back from f2()\n");
        break;
    }
    exit(EXIT_SUCCESS);
}

/*
if argc == 1:
17->18->19->20->10->11->12->17->22->23->24->29

if argc != 1:
17->18->19->20->10->13->6->7->25->26->27->29

*/