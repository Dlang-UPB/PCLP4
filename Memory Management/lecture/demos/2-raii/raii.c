#include <stdio.h>
#include <stdlib.h>


int is_ok(int* p)
{
    /* do stuff with p */
    /* smth went bad; ret False */
    return 0;
}

int main(int argc, char *argv[])
{
    int *p = malloc(sizeof(int));

    if (!is_ok(p)) {
        printf("Aborting..\n");
        return -1;
    }

    free(p);

    return 0;
}

