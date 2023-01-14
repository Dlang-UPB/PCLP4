string foo(int[] a)
{
    if (a.length == 1)
    {
        if (a[0] % 15 == 0)
        {
            return "<3";
        }
        else if (a[0] % 3 == 0)
        {
            return "x";
        }
        else if (a[0] % 5 == 0)
        {
            return "0";
        }

        return "-";
    }

    size_t d = a.length / 2;
    return foo(a[0 .. d]) ~ foo(a[d .. $]);
}

unittest
{
    int[] a = [1, 3, 1, 1, 3, 3, 5, 1, 15, 1, 1, 5, 5, 1, 15, 1];
    assert(foo(a) == "-x--xx0-<3--00-<3-");
}
