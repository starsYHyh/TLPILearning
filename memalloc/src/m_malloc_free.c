#include "tlpi_hdr.h"

typedef struct Block {
    size_t size;
    struct Block *next;
    int free;
} Block;

#define BLOCK_SIZE sizeof(Block)

Block *freeList = NULL;

Block *findFreeBlock(Block **last, size_t size) {
    Block *cur = freeList;
    while (cur && !(cur->free && cur->size >= size)) {
        *last = cur;
    }
}