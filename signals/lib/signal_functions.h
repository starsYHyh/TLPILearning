#define _GNU_SOURCE
#include <signal.h>
#include "tlpi_hdr.h"
#include <string.h>

void printSigset(FILE *of, const char *prefix, const sigset_t *sigset);

int printSigMask(FILE *of, const char *msg);

int printPendingSigs(FILE *of, const char *msg);