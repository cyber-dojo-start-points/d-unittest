import deep_thought;

unittest
{
    assert(answer() == 42, "answer() == 42");
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
