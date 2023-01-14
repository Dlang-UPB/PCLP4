import std.stdio;
import std.range;
import std.traits;
import std.typecons;

struct MyStruct {
    int[] elems;

    ptrdiff_t find(int needle)
    {
        // return pos if elem is found
        // otherwise return -1
        for (size_t i = 0; i < elems.length; ++i)
        {
            if (elems[i] == needle)
            {
                return i;
            }
        }
        return -1;
    }

    bool empty()
    {
        return elems.length == 0;
    }

    int front()
    {
        return elems[0];
    }

    void popFront()
    {
        elems = elems[1 .. $];
    }
}

ptrdiff_t myFind(Range)(Range haystack, ElementType!Range needle)
{
    if (haystack.find(needle))
    {
        // If the user supplied type already defins `find`, we should use it
        return haystack.find(needle);
    }
    else
    {
        // Search the needle in the haystack using the range interface
        // For this exercise, you are **NOT** allowed to use library implementation of `find`
        ptrdiff_t pos = 0;
        while (!haystack.empty)
        {
            if (haystack.front == needle)
                return pos;
        }
        return -1;
    }
}

struct MyPair {
    int[2] pair;
}

void main(string[] args)
{
    int[] intHaystack = [1, 2, 3, 4, 5, 6, 7, 8];

    assert(intHaystack.myFind!(int[])(5) == 4);
    assert(intHaystack.myFind!(int[])(42) == -1);

    MyStruct structHaystack = MyStruct([1, 2, 3, 4, 5, 6, 7, 8]);
    assert(structHaystack.myFind!(MyStruct)(5) == 4);
    assert(structHaystack.myFind!(MyStruct)(42) == -1);

    // Those are not input ranges, so the compiler should error here, rather than in the template
    //MyPair pair = MyPair([10, 20]);
    //auto r = pair.myFind!int(20);

    //auto tpl = tuple(1, 2, 3, 4);
    //tpl.myFind!int(10);

}
