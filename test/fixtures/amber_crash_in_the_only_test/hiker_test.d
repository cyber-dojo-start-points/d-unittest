import hiker;

unittest
{
    int* p = null;
    *p = answer();
    assert(*p == 42, "answer() == 42");
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
