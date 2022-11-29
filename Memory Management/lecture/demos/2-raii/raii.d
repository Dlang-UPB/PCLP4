import std.stdio;
import core.stdc.stdlib;

struct PtrWrapper
{
    int* p;
    size_t rc;

    this(int val)
    {
        p = cast(int*) malloc(int.sizeof);
        rc = 1;
    }

    this(this)
    {
        printf("Creating a copy\n");
        rc++;
    }

    ~this()
    {
        rc--;
        if (rc == 0)
        {
            printf("Deleting ptr\n");
            free(p);
        }
    }
}

int is_ok(PtrWrapper p)
{
    /* do stuff with p */
    /* smth went bad; ret False */
    return 0;
}

int main(string[] args)
{
    auto p = PtrWrapper(42);

    if (!is_ok(p)) {
        printf("Aborting..\n");
        return -1;
    }

    printf("End of main\n");

    return 0;
}

