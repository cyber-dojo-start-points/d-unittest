import hiker;

// All three of these fail, but only the first one is ever reported. A failing
// assert throws an AssertError, and that abandons the rest of the module.

unittest
{
    assert(answer() == 42, "answer() == 42");
}

unittest
{
    assert(answer() > 99, "answer() is three digits long");
}

unittest
{
    assert(answer() % 2 == 1, "answer() is odd");
}

// The program needs a main to link, though druntime runs the unittests instead of it.
void main() {}
