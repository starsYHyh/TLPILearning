#include "curr_time.h"

char *currTime(const char *format) {
    static char buf[BUF_SIZE];  // 不可重入
    time_t t;
    size_t s;
    struct tm *tm;

    t = time(NULL);
    tm = localtime(&t);

    if (tm == NULL)
        return NULL;
    s = strftime(buf, BUF_SIZE, (format != NULL) ? format : "%c", tm);
    return (s == 0) ? NULL : buf;
}

int main(int argc, char *argv[]) {
    const char *format = "%Y-%m-%d-%H-%M-%S";
    printf("current time: %s\n", currTime(format));
    return 0;
}