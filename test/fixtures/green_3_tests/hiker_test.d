import hiker;

unittest
{
    assert(answer() == 42, "answer() == 42");
}

unittest
{
    assert(answer() % 2 == 0, "answer() is even");
}

unittest
{
    assert(answer() < 100, "answer() < 100");
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
