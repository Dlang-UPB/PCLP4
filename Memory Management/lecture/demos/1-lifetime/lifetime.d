import std.stdio;

@safe
int* gun()
{
    int x = 42;
    int* p = &x;
    return p;
}

int main(string[] args)
{
    int* p_i = gun();

    printf("Val is %d\n", *p_i);

    return 0;
}
