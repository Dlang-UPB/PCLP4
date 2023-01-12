void eliminateElem(T)(ref T[] arr, int pos)
{
    if (pos < 0 || pos >= arr.length)
        return;

    arr = arr[0 .. pos] ~ arr[pos + 1 .. $];
}

unittest
{
    int[] arr1 = [1, 2, 3, 4, 5];
    eliminateElem(arr1, 2);
    assert(arr1 == [1, 2, 4, 5]);

    char[] arr2 = ['a', 'b', 'c', 'd', 'e'];
    eliminateElem(arr2, -1);
    assert(arr2 == ['a', 'b', 'c', 'd', 'e']);

    string[] arr3 = ["ab", "cd", "ef", "xy"];
    eliminateElem(arr3, 10);
    assert(arr3 == ["ab", "cd", "ef", "xy"]);
}