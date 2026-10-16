import hiker;

unittest
{
    assert(answer() == 42, "answer() == 42")
}

// The program needs a main to link, though druntime runs the unittests instead of it.
void main() {}
