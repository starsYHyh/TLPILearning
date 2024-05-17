#include <setjmp.h>
#include "tlpi_hdr.h"

/*
第六章课后
编写一个程序，观察当使用 longjmp()函数跳转到一个已经返回的函数时会发生什么？
Answer：会死
*/

static jmp_buf env;

void f1() {
    longjmp(env, 1);
}

void f2() {
    setjmp(env);
    f1();
}

int main() {
    f2();
}