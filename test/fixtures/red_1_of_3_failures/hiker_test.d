import hiker;

// The failing test comes last, so the two before it have already run.
// A failing assert aborts the rest of its module's unittests.

unittest
{
    assert(answer() % 2 == 0, "answer() is even");
}

unittest
{
    assert(answer() > 0, "answer() is positive");
}

unittest
{
    assert(answer() == 42, "answer() == 42");
}

// The program needs a main to link, though druntime runs the unittests instead of it.
void main() {}
