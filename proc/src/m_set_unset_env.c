#define _GNU_SOURCE
#include <stdlib.h>
#include "tlpi_hdr.h"

/*
第六章课后
使用 getenv()函数、putenv()函数，必要时可直接修改 environ，来实现 setenv()函数和 unsetenv()函数。
此处的 unsetenv()函数应检查是否对环境变量进行了多次定义，
如果是多次定义则将移除对该变量的所有定义。
*/

int m_setenv(const char *name, const char *value, int overwrite) {
    if (overwrite == 0 && getenv(name) != NULL)
        return 0;
    char *name_value = malloc(strlen(name) + strlen(value) + 1);
    strcat(strcat(strcat(name_value, name), "="), value);
    return putenv(name_value);
}

int m_unsetenv(const char *name) {
    char *name_value = malloc(strlen(name) + 1);
    strcat(strcat(name_value, name), "=");
    while (*getenv(name) != '\0') 
        if (putenv(name_value) == -1)
            return -1;
    return 0;
}

int main(int argc, char *argv[]) {
    if (argc < 2 || strcmp(argv[1], "--help") == 0 || (strcmp(argv[1], "s") != 0 && strcmp(argv[1], "u") != 0)) 
        usageErr("%s u <name>\n" 
                "%s s <name> <value> <overwrite>\n", argv[0], argv[0]);
    if (strcmp(argv[1], "s") == 0) 
        m_setenv(argv[2], argv[3], getInt(argv[4], GN_ANY_BASE, argv[4]));
    if (strcmp(argv[1], "u") == 0) 
        m_unsetenv(argv[2]);
    printf("%s=%s\n", argv[2], getenv(argv[2]));
    exit(EXIT_SUCCESS);
}