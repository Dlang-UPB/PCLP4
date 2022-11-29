import std.stdio;

@safe:

int* gp;

void thorin(scope int* p)
{
    *p = 10;
}

void gloin(int* p) { gp = p; }

int* balin(scope int* q, int* r)
{
    gp = q; // error, q escapes to global gp
    gp = r; // ok

    thorin(q); // ok, q does not escape thorin()
    thorin(r); // ok

    gloin(q); // error, gloin() escapes q
    gloin(r); // ok that gloin() escapes r

    return q; // error, cannot return 'scope' q
    return r; // ok
}

void gun()
{
    int x = 42;
    int y = 10;

    balin(&x, &y);
}

int main()
{
    gun();
    writeln(*gp);

    return 0;
}

