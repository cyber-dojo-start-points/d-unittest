import hiker;

unittest
{
    assert(the_answer() == 42, "the_answer() == 42");
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
