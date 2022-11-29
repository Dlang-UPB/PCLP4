#include <stdio.h>

int* gp;

void thorin(int* p)
{
    // gp = p; // error, q escapes to global gp
    *p = 10;
}

void gloin(int* p) { gp = p; }

int* balin(int* q, int* r)
{
    gp = q; // no error, but q escapes to global gp
    gp = r; // ok

    thorin(q); // ok, q does not escape thorin()
    thorin(r); // ok

    gloin(q); // no error, but gloin() escapes q
    gloin(r); // ok that gloin() escapes r

    return q; // no error, but should not return 'scope' q
    //return r; // ok
}

void gun()
{
    int x = 42;
    int y = 70;

    balin(&x, &y);
}

int main()
{
    gun();
    printf("Print some rand values %d %d %d %d %d %d %d %d %d\n", 11, 12, 13, 14, 15, 16, 17, 18, 19);
    printf("Val is %d\n", *gp);

    return 0;
}

