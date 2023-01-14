bool subsetAA(int[string] a, int[string] b)
{
    // TODO
}

unittest
{
    int[string] a = ["a": 1, "b": 2];
    int[string] b = ["c": 3, "d": 4];
    assert(!subsetAA(a, b));

    int[string] c = ["ab": 10, "cd": 20];
    int[string] d = ["cd": 30, "ab": 8];
    assert(!subsetAA(c, d));

    int[string] x = ["ab": 10, "cd": 20];
    int[string] y = ["ab": 1, "cd": 20];
    assert(subsetAA(x, y));
}
