import std.stdio;
import std.algorithm;
import std.array;

void main(string[] args)
{
    auto values = [
        [63, 72, 75, 51, 83],
        [44, 53, 57, 56, 48],
        [71, 77, 82, 91, 76],
        [67, 56, 82, 33, 74],
        [64, 76, 72, 63, 76],
        [47, 56, 49, 53, 42],
        [91, 93, 90, 88, 96],
        [61, 56, 77, 74, 74],
    ];

    auto maxElems = values.maxElement;
    assert(equal(maxElems, [83, 57, 91, 82, 76, 56, 96, 77]));
    int idx = 0;
    int[] _2ndMaxElems;
    foreach(maxElem; maxElems) {
        _2ndMaxElems ~= values[++idx].filter!(elem => elem = maxElem);
    }
    assert(equal(_2ndMaxElems, [75, 56, 82, 74, 72, 53, 93, 74]));
}
