#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>

static jmp_buf env;

static void doJump(int nvar, int rvar, int vvar) {
    printf("Inside doJump(): nvar=%d, rvar=%d, vvar=%d\n", nvar, rvar, vvar);
    longjmp(env, 1);
}

int main(int argc, char *argv[]) {
    int nvar;
    register int rvar;  // Allocated in register if possible
    volatile int vvar;  // See text

    nvar = 111;
    rvar = 222;
    vvar = 333;

    if (setjmp(env) == 0) {
        nvar = 777;
        rvar = 888;
        vvar = 999;
        doJump(nvar, rvar, vvar);
    } else {
        printf("After longjmp(): nvar=%d, rvar=%d, vvar=%d", nvar, rvar, vvar);
    }
    // exit(EXIT_SUCCESS);
}

/*
以常规方式编译：
$ gcc -o SETJMP_VARS setjmp_vars.c
$ ./SETJMP_VARS
Inside doJump(): nvar=777, rvar=888, vvar=999
After longjmp(): nvar=777, rvar=222, vvar=999 (这一点与书上的nvar=777, rvar=888, vvar=999不太一样)

以优化方式编译：
$ gcc -o SETJMP_VARS setjmp_vars.c -O
$ ./SETJMP_VARS                      
Inside doJump(): nvar=777, rvar=888, vvar=999
After longjmp(): nvar=111, rvar=222, vvar=999

*/