int count;

struct Trackee
{
    int a;
    this(const ref Trackee src)
    {
        this.a = src.a;
    }
}

// tracks the number of instances created of T
struct Tracked(T)
{
    T value;

    // cannot implcitly construct Tracked
    @disable this();

    // constructor
    this(T val)
    {
        ++count;
        this.value = val;
    }

    // copy constructor
    this(const ref Tracked!T src)
    {
        ++count;
        this.value = src.value;
    }
}

void check(Tracked!int a, int expected)
{
    assert(count == expected);
}

void main()
{
    Tracked!int inst = Tracked!int(2);

    check(inst, 2);
}
