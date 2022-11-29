#include <stdio.h>

int* foo(int* a) {return a; }

int* gun()
{
    int x = 42;

    return foo(&x);
}

int main(int argc, char *argv[])
{
    int* p_i = gun();

    printf("Val is %d\n", *p_i);

    return 0;
}
