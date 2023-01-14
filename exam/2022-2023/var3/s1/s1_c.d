class TreeNode(T)
{
    T value;
    TreeNode!T left, right;

    this(T value)
    {
        this.value = value;
    }
}

import std.traits : isIntegral, isFloatingPoint;

// TODO: Change the function's signature
void modifyValue()
{
    // TODO
}

// TODO: Change the function's signature
void modifyTree()
{
    // TODO
}

unittest
{
    int x = 1;
    modifyValue(x);
    assert(x == -1);

    import std.math.operations : isClose;  // for floating point comparison

    double y = 1.0;
    modifyValue(y);
    assert(y.isClose(0.5));

    string z = "PCLP4";
    assert(!__traits(compiles, modifyValue(z)));

    auto t2 = new TreeNode!int(1);
    t2.left = new TreeNode!int(2);
    t2.right = new TreeNode!int(3);
    t2.left.right = new TreeNode!int(4);
    t2.right.right = new TreeNode!int(5);
    t2.modifyTree();
    assert(t2.value == -1);
    assert(t2.left.value == -2);
    assert(t2.right.value == -3);
    assert(t2.left.right.value == -4);
    assert(t2.right.right.value == -5);

    auto t3 = new TreeNode!double(1.0);
    t3.left = new TreeNode!double(2.0);
    t3.right = new TreeNode!double(3.0);
    t3.left.left = new TreeNode!double(4.0);
    t3.left.right = new TreeNode!double(5.0);
    t3.modifyTree();
    assert(t3.value.isClose(0.5));
    assert(t3.left.value.isClose(1.0));
    assert(t3.right.value.isClose(1.5));
    assert(t3.left.left.value.isClose(2.0));
    assert(t3.left.right.value.isClose(2.5));
}
