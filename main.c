#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    int *mem = malloc(sizeof(int));

    *mem = 5;

    printf("hello %d\n", *mem);

    free(mem);

    return 0;
}
